import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smartbook_en_ru/core/constants/app_constants.dart';
import 'package:smartbook_en_ru/core/domain/entities/translation_result.dart';
import 'package:smartbook_en_ru/features/books/presentation/widgets/translation_card.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('TranslationCard', () {
    final testResult = TranslationResult(
      originalText: 'hello',
      translatedText: 'привет',
      transcription: '[həˈləʊ]',
      direction: TranslationDirection.enToRu,
      wordPairs: const [],
      timestamp: DateTime.now(),
      variants: ['привет', 'здравствуй', 'алло'],
    );

    testWidgets('shows loading indicator when isLoading is true', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: const TranslationCard(isLoading: true, isWord: true),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows original text', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('shows transcription', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('[həˈləʊ]'), findsOneWidget);
    });

    testWidgets('shows translation variants as chips', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('привет'), findsOneWidget);
      expect(find.text('здравствуй'), findsOneWidget);
      expect(find.text('алло'), findsOneWidget);
    });

    testWidgets('shows save button when onSaveToVocabulary provided', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
            onSaveToVocabulary: () {},
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('shows remove button when isInDictionary is true', (tester) async {
      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
            isInDictionary: true,
            onRemoveFromVocabulary: () {},
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.remove), findsOneWidget);
    });

    testWidgets('calls onDismiss when close button tapped', (tester) async {
      var dismissed = false;

      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
            onDismiss: () => dismissed = true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      expect(dismissed, true);
    });

    testWidgets('calls onSaveToVocabulary when save button tapped', (tester) async {
      var saved = false;

      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: testResult,
            isWord: true,
            onSaveToVocabulary: () => saved = true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      expect(saved, true);
    });

    testWidgets('does not show save button for non-word translations', (tester) async {
      final phraseResult = TranslationResult(
        originalText: 'how are you',
        translatedText: 'как дела',
        transcription: '',
        direction: TranslationDirection.enToRu,
        wordPairs: const [],
        timestamp: DateTime.now(),
      );

      await tester.pumpWidget(
        createTestableWidget(
          child: TranslationCard(
            result: phraseResult,
            isWord: false,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.add), findsNothing);
    });
  });
}
