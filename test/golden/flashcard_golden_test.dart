import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/widgets/dictionary_flashcards.dart';
import '../helpers/test_helpers.dart';

void main() {
  setUpAll(() async {
    await loadAppFonts();
  });

  group('Flashcard Golden Tests', () {
    late MockDictionaryBloc mockBloc;

    setUp(() {
      mockBloc = MockDictionaryBloc();
      when(() => mockBloc.state).thenReturn(const DictionaryState.initial());
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());
      registerFallbackValues();
    });

    testGoldens('flashcard front side', (tester) async {
      final entries = [
        createTestDictionaryEntry(
          id: '1',
          word: 'hello',
          translation: 'привет',
          transcription: '[həˈləʊ]',
          rememberCount: 1,
        ),
      ];

      await tester.pumpWidgetBuilder(
        BlocProvider<DictionaryBloc>.value(
          value: mockBloc,
          child: DictionaryFlashcards(entries: entries),
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(400, 700),
      );

      await screenMatchesGolden(tester, 'flashcard_front');
    });

    testGoldens('flashcard empty state', (tester) async {
      await tester.pumpWidgetBuilder(
        BlocProvider<DictionaryBloc>.value(
          value: mockBloc,
          child: const DictionaryFlashcards(entries: []),
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(400, 700),
      );

      await screenMatchesGolden(tester, 'flashcard_empty');
    });

    testGoldens('flashcard with multiple stars', (tester) async {
      final entries = [
        createTestDictionaryEntry(
          id: '1',
          word: 'test',
          translation: 'тест',
          rememberCount: 2,
        ),
      ];

      await tester.pumpWidgetBuilder(
        BlocProvider<DictionaryBloc>.value(
          value: mockBloc,
          child: DictionaryFlashcards(entries: entries),
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
        ),
        surfaceSize: const Size(400, 700),
      );

      await screenMatchesGolden(tester, 'flashcard_two_stars');
    });

    testGoldens('flashcard dark theme', (tester) async {
      final entries = [
        createTestDictionaryEntry(
          id: '1',
          word: 'dark',
          translation: 'тёмный',
        ),
      ];

      await tester.pumpWidgetBuilder(
        BlocProvider<DictionaryBloc>.value(
          value: mockBloc,
          child: DictionaryFlashcards(entries: entries),
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData.dark(),
        ),
        surfaceSize: const Size(400, 700),
      );

      await screenMatchesGolden(tester, 'flashcard_dark_theme');
    });
  });
}
