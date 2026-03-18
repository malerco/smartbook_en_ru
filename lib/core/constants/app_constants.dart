class AppConstants {
  static const String appName = 'AI Translator';
  static const String modelFileName = 'translator_model.tflite';
  static const String vocabFileName = 'vocab.json';
  
  static const int maxInputLength = 512;
  static const int maxOutputLength = 512;
  
  static const Duration splashMinDuration = Duration(seconds: 2);
  static const Duration animationDuration = Duration(milliseconds: 300);
}

enum TranslationDirection {
  enToRu,
  ruToEn,
}

extension TranslationDirectionX on TranslationDirection {
  String get sourceLanguage => this == TranslationDirection.enToRu ? 'en' : 'ru';
  String get targetLanguage => this == TranslationDirection.enToRu ? 'ru' : 'en';
  String get sourceLabel => this == TranslationDirection.enToRu ? 'English' : 'Русский';
  String get targetLabel => this == TranslationDirection.enToRu ? 'Русский' : 'English';
}
