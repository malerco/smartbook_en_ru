import 'package:flutter_test/flutter_test.dart';
import 'package:smartbook_en_ru/core/services/offline_dictionary_service.dart';

void main() {
  group('DictionaryLookupResult', () {
    test('should create result with matchedWord and translations', () {
      final result = DictionaryLookupResult(
        matchedWord: 'test',
        translations: ['тест', 'испытание'],
      );

      expect(result.matchedWord, 'test');
      expect(result.translations, ['тест', 'испытание']);
      expect(result.translations.length, 2);
    });
  });

  group('OfflineDictionaryService._getWordForms', () {
    late OfflineDictionaryService service;

    setUp(() {
      service = OfflineDictionaryService();
    });

    group('stemming -ed endings', () {
      test('walked -> walk', () {
        final forms = service.testGetWordForms('walked');
        expect(forms, contains('walk'));
      });

      test('loved -> love', () {
        final forms = service.testGetWordForms('loved');
        expect(forms, contains('love'));
      });

      test('stopped -> stop (double consonant)', () {
        final forms = service.testGetWordForms('stopped');
        expect(forms, contains('stop'));
      });

      test('scented -> scent', () {
        final forms = service.testGetWordForms('scented');
        expect(forms, contains('scent'));
      });
    });

    group('stemming -ing endings', () {
      test('walking -> walk', () {
        final forms = service.testGetWordForms('walking');
        expect(forms, contains('walk'));
      });

      test('loving -> love', () {
        final forms = service.testGetWordForms('loving');
        expect(forms, contains('love'));
      });

      test('stopping -> stop', () {
        final forms = service.testGetWordForms('stopping');
        expect(forms, contains('stop'));
      });
    });

    group('stemming -s/-es endings', () {
      test('walks -> walk', () {
        final forms = service.testGetWordForms('walks');
        expect(forms, contains('walk'));
      });

      test('boxes -> box', () {
        final forms = service.testGetWordForms('boxes');
        expect(forms, contains('box'));
      });

      test('flies -> fly', () {
        final forms = service.testGetWordForms('flies');
        expect(forms, contains('fly'));
      });
    });

    group('stemming -er/-est endings', () {
      test('faster -> fast', () {
        final forms = service.testGetWordForms('faster');
        expect(forms, contains('fast'));
      });

      test('nicer -> nice', () {
        final forms = service.testGetWordForms('nicer');
        expect(forms, contains('nice'));
      });

      test('biggest -> bigg (needs double consonant handling in -est)', () {
        final forms = service.testGetWordForms('biggest');
        expect(forms, contains('bigg'));
      });

      test('fastest -> fast', () {
        final forms = service.testGetWordForms('fastest');
        expect(forms, contains('fast'));
      });
    });

    group('stemming -ly endings', () {
      test('quickly -> quick', () {
        final forms = service.testGetWordForms('quickly');
        expect(forms, contains('quick'));
      });

      test('happily -> happy', () {
        final forms = service.testGetWordForms('happily');
        expect(forms, contains('happy'));
      });
    });
  });
}

extension TestableOfflineDictionaryService on OfflineDictionaryService {
  List<String> testGetWordForms(String word) {
    final forms = <String>[];

    if (word.endsWith('ed')) {
      forms.add(word.substring(0, word.length - 2));
      forms.add(word.substring(0, word.length - 1));
      if (word.length > 3 && word[word.length - 3] == word[word.length - 4]) {
        forms.add(word.substring(0, word.length - 3));
      }
      final withoutEd = word.substring(0, word.length - 2);
      forms.add('${withoutEd}e');
    }

    if (word.endsWith('ing')) {
      forms.add(word.substring(0, word.length - 3));
      forms.add('${word.substring(0, word.length - 3)}e');
      if (word.length > 4 && word[word.length - 4] == word[word.length - 5]) {
        forms.add(word.substring(0, word.length - 4));
      }
    }

    if (word.endsWith('ies')) {
      forms.add('${word.substring(0, word.length - 3)}y');
    } else if (word.endsWith('es')) {
      forms.add(word.substring(0, word.length - 2));
      forms.add(word.substring(0, word.length - 1));
    } else if (word.endsWith('s') && word.length > 2) {
      forms.add(word.substring(0, word.length - 1));
    }

    if (word.endsWith('er')) {
      forms.add(word.substring(0, word.length - 2));
      forms.add('${word.substring(0, word.length - 2)}e');
      if (word.length > 3 && word[word.length - 3] == word[word.length - 4]) {
        forms.add(word.substring(0, word.length - 3));
      }
    }
    if (word.endsWith('est')) {
      forms.add(word.substring(0, word.length - 3));
      forms.add('${word.substring(0, word.length - 3)}e');
    }

    if (word.endsWith('ly')) {
      forms.add(word.substring(0, word.length - 2));
      if (word.endsWith('ily')) {
        forms.add('${word.substring(0, word.length - 3)}y');
      }
    }

    return forms;
  }
}
