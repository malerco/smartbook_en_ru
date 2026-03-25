import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/constants/app_constants.dart';

part 'translation_result.freezed.dart';

@freezed
class TranslationResult with _$TranslationResult {
  const factory TranslationResult({
    required String originalText,
    required String translatedText,
    required String transcription,
    required TranslationDirection direction,
    required List<WordPair> wordPairs,
    required DateTime timestamp,
    @Default([]) List<String> variants,
  }) = _TranslationResult;
}

@freezed
class WordPair with _$WordPair {
  const factory WordPair({
    required String sourceWord,
    required String translatedWord,
    String? transcription,
  }) = _WordPair;
}
