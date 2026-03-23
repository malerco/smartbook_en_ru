import 'package:equatable/equatable.dart';
import '../../../../core/constants/app_constants.dart';

class TranslationResult extends Equatable {
  final String originalText;
  final String translatedText;
  final String transcription;
  final TranslationDirection direction;
  final List<WordPair> wordPairs;
  final DateTime timestamp;
  final List<String> variants;

  const TranslationResult({
    required this.originalText,
    required this.translatedText,
    required this.transcription,
    required this.direction,
    required this.wordPairs,
    required this.timestamp,
    this.variants = const [],
  });

  @override
  List<Object?> get props => [
        originalText,
        translatedText,
        transcription,
        direction,
        wordPairs,
        timestamp,
        variants,
      ];
}

class WordPair extends Equatable {
  final String sourceWord;
  final String translatedWord;
  final String? transcription;

  const WordPair({
    required this.sourceWord,
    required this.translatedWord,
    this.transcription,
  });

  @override
  List<Object?> get props => [sourceWord, translatedWord, transcription];
}
