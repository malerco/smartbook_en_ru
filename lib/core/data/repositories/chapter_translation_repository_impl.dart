import 'dart:async';
import 'dart:developer' as developer;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/chapter_translation_repository.dart';
import '../../error/exceptions.dart';
import '../datasources/translation_hive_cache.dart';
import '../datasources/translation_remote_data_source.dart';

@LazySingleton(as: ChapterTranslationRepository)
class ChapterTranslationRepositoryImpl implements ChapterTranslationRepository {
  final TranslationRemoteDataSource _remoteDataSource;
  final TranslationHiveCache _cacheDataSource;

  ChapterTranslationRepositoryImpl(
    this._remoteDataSource,
    this._cacheDataSource,
  );

  @override
  Stream<ChapterTranslationProgress> translateChapterStream({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required String sourceLanguage,
    required String targetLanguage,
  }) async* {
    final direction = '${sourceLanguage}_$targetLanguage';

    // Parse paragraphs
    final paragraphs = chapterContent
        .split(RegExp(r'\n\s*\n'))
        .where((p) => p.trim().isNotEmpty)
        .toList();

    developer.log('Repository: Starting stream translation of ${paragraphs.length} paragraphs');

    // Check cache first
    final cached = await _cacheDataSource.getChapterTranslations(
      bookId: bookId,
      chapterIndex: chapterIndex,
      direction: direction,
    );

    if (cached != null && cached.length == paragraphs.length) {
      developer.log('Repository: Found complete cache');
      yield ChapterTranslationProgress(
        totalParagraphs: paragraphs.length,
        completedParagraphs: cached.length,
        translations: cached,
        failedIndices: {},
        isComplete: true,
      );
      return;
    }

    // Partial cache - find missing indices
    final existingTranslations = cached ?? <int, String>{};
    final missingIndices = <int>{};
    for (int i = 0; i < paragraphs.length; i++) {
      if (!existingTranslations.containsKey(i)) {
        missingIndices.add(i);
      }
    }

    if (missingIndices.isEmpty) {
      yield ChapterTranslationProgress(
        totalParagraphs: paragraphs.length,
        completedParagraphs: existingTranslations.length,
        translations: existingTranslations,
        failedIndices: {},
        isComplete: true,
      );
      return;
    }

    developer.log('Repository: Need to translate ${missingIndices.length} paragraphs');

    await for (final progress in _remoteDataSource.translateChapterStream(
      paragraphs: paragraphs,
      sourceLanguage: sourceLanguage,
      targetLanguage: targetLanguage,
    )) {
      final merged = Map<int, String>.from(existingTranslations)
        ..addAll(progress.translations);
      
      if (progress.translations.isNotEmpty) {
        await _cacheDataSource.cacheChapterTranslations(
          bookId: bookId,
          chapterIndex: chapterIndex,
          direction: direction,
          translations: merged,
        );
      }
      
      yield ChapterTranslationProgress(
        totalParagraphs: paragraphs.length,
        completedParagraphs: merged.length + progress.failedIndices.length,
        translations: merged,
        failedIndices: progress.failedIndices,
        isComplete: progress.isComplete,
      );
    }
  }

  @override
  Stream<ChapterTranslationProgress> retryFailedParagraphs({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required Set<int> failedIndices,
    required String sourceLanguage,
    required String targetLanguage,
  }) async* {
    final direction = '${sourceLanguage}_$targetLanguage';
    
    final paragraphs = chapterContent
        .split(RegExp(r'\n\s*\n'))
        .where((p) => p.trim().isNotEmpty)
        .toList();
    
    final existingTranslations = await _cacheDataSource.getChapterTranslations(
      bookId: bookId,
      chapterIndex: chapterIndex,
      direction: direction,
    ) ?? {};

    await for (final progress in _remoteDataSource.retryFailedParagraphs(
      paragraphs: paragraphs,
      failedIndices: failedIndices,
      existingTranslations: existingTranslations,
      sourceLanguage: sourceLanguage,
      targetLanguage: targetLanguage,
    )) {
      await _cacheDataSource.cacheChapterTranslations(
        bookId: bookId,
        chapterIndex: chapterIndex,
        direction: direction,
        translations: progress.translations,
      );
      
      yield progress;
    }
  }

  @override
  Future<Either<List<String>, AppException>> getWordTranslations({
    required String word,
    required String sourceLanguage,
    required String targetLanguage,
  }) async {
    return _remoteDataSource.getWordTranslations(
      word: word,
      sourceLanguage: sourceLanguage,
      targetLanguage: targetLanguage,
    );
  }

  @override
  Future<Map<int, String>?> getCachedTranslations({
    required String bookId,
    required int chapterIndex,
    required String direction,
  }) async {
    return _cacheDataSource.getChapterTranslations(
      bookId: bookId,
      chapterIndex: chapterIndex,
      direction: direction,
    );
  }

  @override
  Future<bool> hasCache({
    required String bookId,
    required int chapterIndex,
    required String direction,
  }) async {
    return _cacheDataSource.hasChapterCache(
      bookId: bookId,
      chapterIndex: chapterIndex,
      direction: direction,
    );
  }

  @override
  Future<void> clearCache({
    required String bookId,
    required int chapterIndex,
    required String direction,
  }) async {
    await _cacheDataSource.clearBookCache(bookId);
  }
}
