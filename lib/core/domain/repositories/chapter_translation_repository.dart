import 'package:dartz/dartz.dart';
import '../../error/exceptions.dart';
import '../../data/datasources/translation_remote_data_source.dart';

abstract class ChapterTranslationRepository {
  /// Stream translation progress with incremental updates
  Stream<ChapterTranslationProgress> translateChapterStream({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required String sourceLanguage,
    required String targetLanguage,
  });

  /// Retry failed paragraphs
  Stream<ChapterTranslationProgress> retryFailedParagraphs({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required Set<int> failedIndices,
    required String sourceLanguage,
    required String targetLanguage,
  });

  Future<Either<List<String>, AppException>> getWordTranslations({
    required String word,
    required String sourceLanguage,
    required String targetLanguage,
  });

  Future<Map<int, String>?> getCachedTranslations({
    required String bookId,
    required int chapterIndex,
    required String direction,
  });

  Future<bool> hasCache({
    required String bookId,
    required int chapterIndex,
    required String direction,
  });

  Future<void> clearCache({
    required String bookId,
    required int chapterIndex,
    required String direction,
  });
}
