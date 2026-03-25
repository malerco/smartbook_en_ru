import '../constants/app_constants.dart';

class LanguageDetector {
  static final _cyrillicPattern = RegExp(r'[а-яёА-ЯЁ]');
  static final _latinPattern = RegExp(r'[a-zA-Z]');

  static TranslationDirection detectDirection(String text) {
    final sample = text.length > 500 ? text.substring(0, 500) : text;
    
    int cyrillicCount = 0;
    int latinCount = 0;
    
    for (final char in sample.split('')) {
      if (_cyrillicPattern.hasMatch(char)) {
        cyrillicCount++;
      } else if (_latinPattern.hasMatch(char)) {
        latinCount++;
      }
    }
    
    if (cyrillicCount > latinCount) {
      return TranslationDirection.ruToEn;
    } else {
      return TranslationDirection.enToRu;
    }
  }

  static bool isRussianText(String text) {
    return detectDirection(text) == TranslationDirection.ruToEn;
  }

  static bool isEnglishText(String text) {
    return detectDirection(text) == TranslationDirection.enToRu;
  }
}
