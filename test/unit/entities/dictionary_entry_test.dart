import 'package:flutter_test/flutter_test.dart';
import 'package:smartbook_en_ru/core/domain/entities/dictionary_entry.dart';

void main() {
  group('DictionaryEntry', () {
    final testEntry = DictionaryEntry(
      id: '1',
      word: 'hello',
      translation: 'привет',
      transcription: '[həˈləʊ]',
      sourceLanguage: 'en',
      targetLanguage: 'ru',
      addedAt: DateTime(2024, 1, 1),
      rememberCount: 0,
      isLearned: false,
    );

    test('should create entry with required fields', () {
      expect(testEntry.id, '1');
      expect(testEntry.word, 'hello');
      expect(testEntry.translation, 'привет');
      expect(testEntry.sourceLanguage, 'en');
      expect(testEntry.targetLanguage, 'ru');
    });

    test('should have default values for optional fields', () {
      final entry = DictionaryEntry(
        id: '2',
        word: 'test',
        translation: 'тест',
        sourceLanguage: 'en',
        targetLanguage: 'ru',
        addedAt: DateTime.now(),
      );

      expect(entry.rememberCount, 0);
      expect(entry.isLearned, false);
      expect(entry.example, null);
      expect(entry.bookId, null);
    });

    group('copyWith', () {
      test('should copy with new word', () {
        final copied = testEntry.copyWith(word: 'goodbye');
        
        expect(copied.word, 'goodbye');
        expect(copied.id, testEntry.id);
        expect(copied.translation, testEntry.translation);
      });

      test('should copy with new rememberCount', () {
        final copied = testEntry.copyWith(rememberCount: 2);
        
        expect(copied.rememberCount, 2);
        expect(copied.word, testEntry.word);
      });

      test('should copy with isLearned true', () {
        final copied = testEntry.copyWith(isLearned: true);
        
        expect(copied.isLearned, true);
      });
    });

    group('toJson', () {
      test('should convert to json correctly', () {
        final json = testEntry.toJson();

        expect(json['id'], '1');
        expect(json['word'], 'hello');
        expect(json['translation'], 'привет');
        expect(json['transcription'], '[həˈləʊ]');
        expect(json['sourceLanguage'], 'en');
        expect(json['targetLanguage'], 'ru');
        expect(json['rememberCount'], 0);
        expect(json['isLearned'], false);
      });

      test('should include addedAt as ISO8601 string', () {
        final json = testEntry.toJson();
        
        expect(json['addedAt'], '2024-01-01T00:00:00.000');
      });
    });

    group('fromJson', () {
      test('should create entry from json', () {
        final json = {
          'id': '3',
          'word': 'world',
          'translation': 'мир',
          'transcription': '[wɜːld]',
          'sourceLanguage': 'en',
          'targetLanguage': 'ru',
          'addedAt': '2024-01-15T10:30:00.000',
          'rememberCount': 1,
          'isLearned': false,
        };

        final entry = DictionaryEntry.fromJson(json);

        expect(entry.id, '3');
        expect(entry.word, 'world');
        expect(entry.translation, 'мир');
        expect(entry.rememberCount, 1);
      });

      test('should handle null optional fields', () {
        final json = {
          'id': '4',
          'word': 'test',
          'translation': 'тест',
          'sourceLanguage': 'en',
          'targetLanguage': 'ru',
          'addedAt': '2024-01-01T00:00:00.000',
        };

        final entry = DictionaryEntry.fromJson(json);

        expect(entry.transcription, null);
        expect(entry.example, null);
        expect(entry.rememberCount, 0);
        expect(entry.isLearned, false);
      });
    });

    group('equality', () {
      test('should be equal for same properties', () {
        final entry1 = DictionaryEntry(
          id: '1',
          word: 'test',
          translation: 'тест',
          sourceLanguage: 'en',
          targetLanguage: 'ru',
          addedAt: DateTime(2024, 1, 1),
        );

        final entry2 = DictionaryEntry(
          id: '1',
          word: 'test',
          translation: 'тест',
          sourceLanguage: 'en',
          targetLanguage: 'ru',
          addedAt: DateTime(2024, 1, 1),
        );

        expect(entry1, equals(entry2));
      });

      test('should not be equal for different ids', () {
        final entry1 = DictionaryEntry(
          id: '1',
          word: 'test',
          translation: 'тест',
          sourceLanguage: 'en',
          targetLanguage: 'ru',
          addedAt: DateTime(2024, 1, 1),
        );

        final entry2 = DictionaryEntry(
          id: '2',
          word: 'test',
          translation: 'тест',
          sourceLanguage: 'en',
          targetLanguage: 'ru',
          addedAt: DateTime(2024, 1, 1),
        );

        expect(entry1, isNot(equals(entry2)));
      });
    });
  });
}
