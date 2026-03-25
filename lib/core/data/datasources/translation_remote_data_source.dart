import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../error/exceptions.dart';
import '../../network/dio_client.dart';
import 'package:dio/dio.dart';

/// Result of translating a single paragraph
class ParagraphTranslationResult {
  final int index;
  final String? translation;
  final bool failed;
  
  const ParagraphTranslationResult({
    required this.index,
    this.translation,
    this.failed = false,
  });
}

/// Progress update for chapter translation
class ChapterTranslationProgress {
  final int totalParagraphs;
  final int completedParagraphs;
  final Map<int, String> translations;
  final Set<int> failedIndices;
  final bool isComplete;
  
  const ChapterTranslationProgress({
    required this.totalParagraphs,
    required this.completedParagraphs,
    required this.translations,
    required this.failedIndices,
    required this.isComplete,
  });
  
  double get progress => totalParagraphs > 0 
      ? completedParagraphs / totalParagraphs 
      : 0.0;
}

@lazySingleton
class TranslationRemoteDataSource {
  final DioClient _dioClient;
  
  // Batch size for parallel requests
  static const int _batchSize = 5;
  // Paragraphs to translate before allowing reading
  static const int _initialBatchCount = 3;

  TranslationRemoteDataSource(this._dioClient);

  /// Translate chapter with streaming progress updates
  Stream<ChapterTranslationProgress> translateChapterStream({
    required List<String> paragraphs,
    required String sourceLanguage,
    required String targetLanguage,
  }) async* {
    final sourceLang = sourceLanguage == 'en' ? 'English' : 'Russian';
    final targetLang = targetLanguage == 'en' ? 'English' : 'Russian';
    
    final translations = <int, String>{};
    final failedIndices = <int>{};
    final total = paragraphs.length;
    
    developer.log('Starting translation of $total paragraphs');
    
    // Process in batches
    for (int batchStart = 0; batchStart < total; batchStart += _batchSize) {
      final batchEnd = (batchStart + _batchSize).clamp(0, total);
      final batchIndices = List.generate(batchEnd - batchStart, (i) => batchStart + i);
      
      developer.log('Translating batch ${batchStart ~/ _batchSize + 1}: paragraphs $batchStart-${batchEnd - 1}');
      
      // Translate batch in parallel
      final futures = batchIndices.map((index) async {
        final result = await _translateParagraph(
          paragraphs[index].trim(),
          sourceLang,
          targetLang,
        );
        return ParagraphTranslationResult(
          index: index,
          translation: result.fold((l) => l, (r) => null),
          failed: result.isRight(),
        );
      }).toList();
      
      final results = await Future.wait(futures);
      
      // Process results
      for (final result in results) {
        if (result.translation != null) {
          translations[result.index] = result.translation!;
        } else {
          failedIndices.add(result.index);
        }
      }
      
      // Emit progress
      yield ChapterTranslationProgress(
        totalParagraphs: total,
        completedParagraphs: translations.length + failedIndices.length,
        translations: Map.from(translations),
        failedIndices: Set.from(failedIndices),
        isComplete: batchEnd >= total,
      );
    }
    
    developer.log('Translation complete: ${translations.length} success, ${failedIndices.length} failed');
  }

  /// Retry translation for specific paragraph indices
  Stream<ChapterTranslationProgress> retryFailedParagraphs({
    required List<String> paragraphs,
    required Set<int> failedIndices,
    required Map<int, String> existingTranslations,
    required String sourceLanguage,
    required String targetLanguage,
  }) async* {
    final sourceLang = sourceLanguage == 'en' ? 'English' : 'Russian';
    final targetLang = targetLanguage == 'en' ? 'English' : 'Russian';
    
    final translations = Map<int, String>.from(existingTranslations);
    final stillFailed = <int>{};
    final indicesToRetry = failedIndices.toList()..sort();
    final total = paragraphs.length;
    
    developer.log('Retrying ${indicesToRetry.length} failed paragraphs');
    
    // Process retries in batches
    for (int i = 0; i < indicesToRetry.length; i += _batchSize) {
      final batchEnd = (i + _batchSize).clamp(0, indicesToRetry.length);
      final batchIndices = indicesToRetry.sublist(i, batchEnd);
      
      final futures = batchIndices.map((index) async {
        final result = await _translateParagraph(
          paragraphs[index].trim(),
          sourceLang,
          targetLang,
        );
        return ParagraphTranslationResult(
          index: index,
          translation: result.fold((l) => l, (r) => null),
          failed: result.isRight(),
        );
      }).toList();
      
      final results = await Future.wait(futures);
      
      for (final result in results) {
        if (result.translation != null) {
          translations[result.index] = result.translation!;
        } else {
          stillFailed.add(result.index);
        }
      }
      
      yield ChapterTranslationProgress(
        totalParagraphs: total,
        completedParagraphs: translations.length + stillFailed.length,
        translations: Map.from(translations),
        failedIndices: Set.from(stillFailed),
        isComplete: batchEnd >= indicesToRetry.length,
      );
    }
  }

  /// Translate a single paragraph
  Future<Either<String, AppException>> _translateParagraph(
    String text,
    String sourceLang,
    String targetLang,
  ) async {
    try {
      final response = await _dioClient.post<dynamic>(
        '/v1/chat/completions',
        data: {
          'model': 'deepseek-chat',
          'messages': [
            {
              'role': 'system',
              'content': '''You are a professional translator. Translate the following text from $sourceLang to $targetLang.
Rules:
1. Translate naturally, not word-by-word
2. Do not add any explanations or comments
3. Return ONLY the translated text'''
            },
            {
              'role': 'user',
              'content': text,
            }
          ],
          'temperature': 0.3,
          'max_tokens': 4096,
        },
      );

      dynamic data = response.data;
      if (data is String) {
        data = jsonDecode(data);
      }
      
      if (data != null && data['choices'] != null && (data['choices'] as List).isNotEmpty) {
        final content = data['choices'][0]['message']['content'] as String;
        return Left(content.trim());
      }

      return const Right(TranslationException('Invalid response format'));
    } on DioException catch (e) {
      if (e.error is NoInternetException) {
        return const Right(NoInternetException());
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return const Right(TimeoutException());
      }
      return Right(ServerException(e.message ?? 'Server error'));
    } catch (e) {
      return Right(TranslationException(e.toString()));
    }
  }

  Future<Either<List<String>, AppException>> getWordTranslations({
    required String word,
    required String sourceLanguage,
    required String targetLanguage,
  }) async {
    try {
      final sourceLang = sourceLanguage == 'en' ? 'English' : 'Russian';
      final targetLang = targetLanguage == 'en' ? 'English' : 'Russian';

      final response = await _dioClient.post<dynamic>(
        '/v1/chat/completions',
        data: {
          'model': 'deepseek-chat',
          'messages': [
            {
              'role': 'system',
              'content': '''You are a dictionary. For the given $sourceLang word, provide multiple $targetLang translations with different meanings.
Format your response as a numbered list like this:
1. translation1 (part of speech) - brief context/usage
2. translation2 (part of speech) - brief context/usage
3. translation3 (part of speech) - brief context/usage

Provide 3-5 most common translations. If the word has fewer meanings, provide what's available.
Do not add any other text or explanations.'''
            },
            {
              'role': 'user',
              'content': word,
            }
          ],
          'temperature': 0.3,
          'max_tokens': 500,
        },
      );

      // Handle both String and Map responses
      dynamic data = response.data;
      if (data is String) {
        data = jsonDecode(data);
      }
      
      if (data != null && data['choices'] != null && (data['choices'] as List).isNotEmpty) {
        final content = data['choices'][0]['message']['content'] as String;
        final lines = content.trim().split('\n')
            .where((line) => line.trim().isNotEmpty)
            .map((line) => line.replaceFirst(RegExp(r'^\d+\.\s*'), '').trim())
            .toList();
        return Left(lines);
      }

      return const Right(TranslationException('Invalid response format'));
    } on DioException catch (e) {
      if (e.error is NoInternetException) {
        return const Right(NoInternetException());
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return const Right(TimeoutException());
      }
      return Right(ServerException(e.message ?? 'Server error'));
    } catch (e) {
      return Right(TranslationException(e.toString()));
    }
  }
}
