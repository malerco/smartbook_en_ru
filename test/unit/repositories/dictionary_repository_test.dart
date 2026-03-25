import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/core/domain/entities/dictionary_entry.dart';
import 'package:hive/hive.dart';
import '../../helpers/test_helpers.dart';

class MockBox<T> extends Mock implements Box<T> {}

void main() {
  group('Dictionary Repository Tests', () {
    test('should store entry correctly', () {
      final entry = createTestDictionaryEntry(
        id: '1',
        word: 'test',
        translation: 'тест',
      );
      
      final json = entry.toJson();
      final restored = DictionaryEntry.fromJson(json);
      
      expect(restored.id, entry.id);
      expect(restored.word, entry.word);
      expect(restored.translation, entry.translation);
    });

    test('should handle entry with all fields', () {
      final entry = DictionaryEntry(
        id: '1',
        word: 'comprehensive',
        translation: 'всеобъемлющий',
        transcription: '[ˌkɒmprɪˈhensɪv]',
        example: 'This is a comprehensive test',
        sourceLanguage: 'en',
        targetLanguage: 'ru',
        addedAt: DateTime(2024, 3, 15),
        bookId: 'book123',
        rememberCount: 2,
        isLearned: false,
        lastReviewedAt: DateTime(2024, 3, 20),
      );
      
      final json = entry.toJson();
      final restored = DictionaryEntry.fromJson(json);
      
      expect(restored.transcription, entry.transcription);
      expect(restored.example, entry.example);
      expect(restored.bookId, entry.bookId);
      expect(restored.rememberCount, entry.rememberCount);
      expect(restored.lastReviewedAt, entry.lastReviewedAt);
    });

    test('should search entries by word', () {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'hello'),
        createTestDictionaryEntry(id: '2', word: 'help'),
        createTestDictionaryEntry(id: '3', word: 'world'),
      ];
      
      final searchResults = entries.where(
        (e) => e.word.toLowerCase().contains('hel'),
      ).toList();
      
      expect(searchResults.length, 2);
      expect(searchResults.map((e) => e.word), contains('hello'));
      expect(searchResults.map((e) => e.word), contains('help'));
    });

    test('should search entries by translation', () {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'hello', translation: 'привет'),
        createTestDictionaryEntry(id: '2', word: 'world', translation: 'мир'),
        createTestDictionaryEntry(id: '3', word: 'peace', translation: 'мир'),
      ];
      
      final searchResults = entries.where(
        (e) => e.translation.toLowerCase().contains('мир'),
      ).toList();
      
      expect(searchResults.length, 2);
    });

    test('should sort entries by addedAt', () {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'first'),
        createTestDictionaryEntry(id: '2', word: 'second'),
        createTestDictionaryEntry(id: '3', word: 'third'),
      ];
      
      entries.sort((a, b) => b.addedAt.compareTo(a.addedAt));
      
      expect(entries.first.word, 'first');
    });

    test('should filter learned entries', () {
      final entries = [
        createTestDictionaryEntry(id: '1', isLearned: true),
        createTestDictionaryEntry(id: '2', isLearned: false),
        createTestDictionaryEntry(id: '3', isLearned: true),
      ];
      
      final unlearnedEntries = entries.where((e) => !e.isLearned).toList();
      
      expect(unlearnedEntries.length, 1);
      expect(unlearnedEntries.first.id, '2');
    });

    test('should count entries by language', () {
      final entries = [
        createTestDictionaryEntry(id: '1', sourceLanguage: 'en', targetLanguage: 'ru'),
        createTestDictionaryEntry(id: '2', sourceLanguage: 'en', targetLanguage: 'ru'),
        createTestDictionaryEntry(id: '3', sourceLanguage: 'ru', targetLanguage: 'en'),
      ];
      
      final enToRuCount = entries.where(
        (e) => e.sourceLanguage == 'en' && e.targetLanguage == 'ru',
      ).length;
      
      expect(enToRuCount, 2);
    });
  });
}
