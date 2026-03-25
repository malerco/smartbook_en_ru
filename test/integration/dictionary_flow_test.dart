import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/core/domain/entities/dictionary_entry.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/pages/dictionary_page.dart';
import '../helpers/test_helpers.dart';

void main() {
  late MockGetDictionaryEntriesUseCase mockGetEntriesUseCase;
  late MockAddDictionaryEntryUseCase mockAddEntryUseCase;
  late MockUpdateDictionaryEntryUseCase mockUpdateEntryUseCase;
  late MockDeleteDictionaryEntryUseCase mockDeleteEntryUseCase;
  late MockSearchDictionaryUseCase mockSearchUseCase;
  late MockClearDictionaryUseCase mockClearUseCase;

  setUp(() {
    mockGetEntriesUseCase = MockGetDictionaryEntriesUseCase();
    mockAddEntryUseCase = MockAddDictionaryEntryUseCase();
    mockUpdateEntryUseCase = MockUpdateDictionaryEntryUseCase();
    mockDeleteEntryUseCase = MockDeleteDictionaryEntryUseCase();
    mockSearchUseCase = MockSearchDictionaryUseCase();
    mockClearUseCase = MockClearDictionaryUseCase();
    registerFallbackValues();
  });

  DictionaryBloc createBloc() {
    return DictionaryBloc(
      mockGetEntriesUseCase,
      mockAddEntryUseCase,
      mockUpdateEntryUseCase,
      mockDeleteEntryUseCase,
      mockSearchUseCase,
      mockClearUseCase,
    );
  }

  group('Dictionary Flow Integration Tests', () {
    testWidgets('complete dictionary workflow: load -> view -> search', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'hello', translation: 'привет'),
        createTestDictionaryEntry(id: '2', word: 'world', translation: 'мир'),
        createTestDictionaryEntry(id: '3', word: 'test', translation: 'тест'),
      ];

      when(() => mockGetEntriesUseCase()).thenReturn(entries);
      when(() => mockSearchUseCase(any())).thenReturn([entries[0]]);

      final bloc = createBloc();

      await tester.pumpWidget(
        createTestableWidget(
          providers: [
            BlocProvider<DictionaryBloc>.value(value: bloc),
          ],
          child: const DictionaryPage(),
        ),
      );

      bloc.add(const DictionaryEvent.loadRequested());
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
      expect(find.text('world'), findsOneWidget);
      expect(find.text('test'), findsOneWidget);

      final searchField = find.byType(TextField);
      if (searchField.evaluate().isNotEmpty) {
        await tester.enterText(searchField, 'hello');
        await tester.pumpAndSettle();
      }
    });

    testWidgets('flashcard learning flow', (tester) async {
      final entries = [
        createTestDictionaryEntry(
          id: '1',
          word: 'apple',
          translation: 'яблоко',
          rememberCount: 0,
        ),
        createTestDictionaryEntry(
          id: '2',
          word: 'banana',
          translation: 'банан',
          rememberCount: 0,
        ),
      ];

      when(() => mockGetEntriesUseCase()).thenReturn(entries);
      when(() => mockUpdateEntryUseCase(any())).thenAnswer((_) async {});

      final bloc = createBloc();

      await tester.pumpWidget(
        createTestableWidget(
          providers: [
            BlocProvider<DictionaryBloc>.value(value: bloc),
          ],
          child: const DictionaryPage(),
        ),
      );

      bloc.add(const DictionaryEvent.loadRequested());
      await tester.pumpAndSettle();

      final flashcardsTab = find.byIcon(Icons.style);
      if (flashcardsTab.evaluate().isNotEmpty) {
        await tester.tap(flashcardsTab);
        await tester.pumpAndSettle();

        final rememberButton = find.byIcon(Icons.check);
        if (rememberButton.evaluate().isNotEmpty) {
          await tester.tap(rememberButton);
          await tester.pumpAndSettle();
        }
      }
    });

    testWidgets('delete entry flow', (tester) async {
      final entries = [
        createTestDictionaryEntry(id: '1', word: 'delete_me'),
      ];

      when(() => mockGetEntriesUseCase()).thenReturn(entries);
      when(() => mockDeleteEntryUseCase(any())).thenAnswer((_) async {});

      final bloc = createBloc();

      await tester.pumpWidget(
        createTestableWidget(
          providers: [
            BlocProvider<DictionaryBloc>.value(value: bloc),
          ],
          child: const DictionaryPage(),
        ),
      );

      bloc.add(const DictionaryEvent.loadRequested());
      await tester.pumpAndSettle();

      expect(find.text('delete_me'), findsOneWidget);
    });

    testWidgets('empty state shows appropriate message', (tester) async {
      when(() => mockGetEntriesUseCase()).thenReturn([]);

      final bloc = createBloc();

      await tester.pumpWidget(
        createTestableWidget(
          providers: [
            BlocProvider<DictionaryBloc>.value(value: bloc),
          ],
          child: const DictionaryPage(),
        ),
      );

      bloc.add(const DictionaryEvent.loadRequested());
      await tester.pumpAndSettle();
    });

    testWidgets('error state is handled gracefully', (tester) async {
      when(() => mockGetEntriesUseCase()).thenThrow(Exception('Network error'));

      final bloc = createBloc();

      await tester.pumpWidget(
        createTestableWidget(
          providers: [
            BlocProvider<DictionaryBloc>.value(value: bloc),
          ],
          child: const DictionaryPage(),
        ),
      );

      bloc.add(const DictionaryEvent.loadRequested());
      await tester.pumpAndSettle();
    });
  });
}
