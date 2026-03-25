import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/widgets/dictionary_flashcards.dart';
import '../helpers/test_helpers.dart';

void main() {
  late MockDictionaryBloc mockDictionaryBloc;

  setUp(() {
    mockDictionaryBloc = MockDictionaryBloc();
    registerFallbackValues();
  });

  Widget createWidget(List<dynamic> entries) {
    return createTestableWidget(
      providers: [
        BlocProvider<DictionaryBloc>.value(value: mockDictionaryBloc),
      ],
      child: DictionaryFlashcards(
        entries: entries.cast(),
      ),
    );
  }

  group('DictionaryFlashcards', () {
    testWidgets('shows celebration when all words learned', (tester) async {
      await tester.pumpWidget(createWidget([]));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.celebration_outlined), findsOneWidget);
    });

    testWidgets('shows flashcard when entries exist', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'hello', translation: 'привет'),
        createTestDictionaryEntry(id: '2', word: 'world', translation: 'мир'),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('shows remember and dont remember buttons', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'test'),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.check), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
    });

    testWidgets('flips card on tap', (tester) async {
      final entries = [
        createTestDictionaryEntry(
          id: '1',
          word: 'hello',
          translation: 'привет',
        ),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);

      await tester.tap(find.text('hello'));
      await tester.pumpAndSettle();

      expect(find.text('привет'), findsOneWidget);
    });

    testWidgets('shows star progress indicators', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', rememberCount: 2),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.star), findsNWidgets(2));
      expect(find.byIcon(Icons.star_border), findsOneWidget);
    });

    testWidgets('shows words left count', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1'),
        createTestDictionaryEntry(id: '2'),
        createTestDictionaryEntry(id: '3'),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.textContaining('3'), findsWidgets);
    });

    testWidgets('filters out learned entries', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', isLearned: true),
        createTestDictionaryEntry(id: '2', word: 'unlearned'),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      expect(find.text('unlearned'), findsOneWidget);
    });

    testWidgets('updates bloc on remember tap', (tester) async {
      when(() => mockDictionaryBloc.add(any())).thenReturn(null);
      when(() => mockDictionaryBloc.state).thenReturn(
        DictionaryState.loaded(entries: []),
      );
      when(() => mockDictionaryBloc.stream).thenAnswer(
        (_) => Stream.value(const DictionaryState.loaded(entries: [])),
      );

      final entries = [
        createTestDictionaryEntry(id: '1', word: 'test'),
        createTestDictionaryEntry(id: '2', word: 'test2'),
      ];

      await tester.pumpWidget(createWidget(entries));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.check));
      await tester.pumpAndSettle();

      verify(() => mockDictionaryBloc.add(any())).called(greaterThan(0));
    });
  });
}
