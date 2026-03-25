import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:smartbook_en_ru/core/constants/app_constants.dart';
import 'package:smartbook_en_ru/core/domain/entities/translation_result.dart';
import 'package:smartbook_en_ru/features/books/presentation/widgets/translation_card.dart';

void main() {
  setUpAll(() async {
    await loadAppFonts();
  });

  group('TranslationCard Golden Tests', () {
    testGoldens('translation card with variants', (tester) async {
      final result = TranslationResult(
        originalText: 'hello',
        translatedText: 'привет',
        transcription: '[həˈləʊ]',
        direction: TranslationDirection.enToRu,
        wordPairs: const [],
        timestamp: DateTime.now(),
        variants: ['привет', 'здравствуй', 'алло'],
      );

      await tester.pumpWidgetBuilder(
        TranslationCard(
          result: result,
          isWord: true,
          onSaveToVocabulary: () {},
          onDismiss: () {},
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(350, 250),
      );

      await screenMatchesGolden(tester, 'translation_card_with_variants');
    });

    testGoldens('translation card loading state', (tester) async {
      await tester.pumpWidgetBuilder(
        const TranslationCard(
          isLoading: true,
          isWord: true,
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(350, 150),
      );

      await screenMatchesGolden(tester, 'translation_card_loading');
    });

    testGoldens('translation card in dictionary', (tester) async {
      final result = TranslationResult(
        originalText: 'world',
        translatedText: 'мир',
        transcription: '[wɜːld]',
        direction: TranslationDirection.enToRu,
        wordPairs: const [],
        timestamp: DateTime.now(),
        variants: ['мир', 'свет', 'вселенная'],
      );

      await tester.pumpWidgetBuilder(
        TranslationCard(
          result: result,
          isWord: true,
          isInDictionary: true,
          onRemoveFromVocabulary: () {},
          onDismiss: () {},
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(350, 250),
      );

      await screenMatchesGolden(tester, 'translation_card_in_dictionary');
    });

    testGoldens('translation card dark theme', (tester) async {
      final result = TranslationResult(
        originalText: 'test',
        translatedText: 'тест',
        transcription: '[test]',
        direction: TranslationDirection.enToRu,
        wordPairs: const [],
        timestamp: DateTime.now(),
        variants: ['тест', 'испытание', 'проверка'],
      );

      await tester.pumpWidgetBuilder(
        TranslationCard(
          result: result,
          isWord: true,
          onSaveToVocabulary: () {},
          onDismiss: () {},
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.dark(),
        ),
        surfaceSize: const Size(350, 250),
      );

      await screenMatchesGolden(tester, 'translation_card_dark');
    });

    testGoldens('translation card phrase (non-word)', (tester) async {
      final result = TranslationResult(
        originalText: 'How are you?',
        translatedText: 'Как дела?',
        transcription: '',
        direction: TranslationDirection.enToRu,
        wordPairs: const [],
        timestamp: DateTime.now(),
      );

      await tester.pumpWidgetBuilder(
        TranslationCard(
          result: result,
          isWord: false,
          onDismiss: () {},
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(350, 200),
      );

      await screenMatchesGolden(tester, 'translation_card_phrase');
    });
  });
}
