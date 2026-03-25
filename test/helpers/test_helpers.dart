import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/core/domain/entities/book.dart';
import 'package:smartbook_en_ru/core/domain/entities/dictionary_entry.dart';
import 'package:smartbook_en_ru/core/domain/repositories/dictionary_repository.dart';
import 'package:smartbook_en_ru/core/domain/repositories/books_repository.dart';
import 'package:smartbook_en_ru/core/domain/repositories/settings_repository.dart';
import 'package:smartbook_en_ru/core/l10n/app_localizations.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/get_dictionary_entries_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/add_dictionary_entry_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/update_dictionary_entry_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/delete_dictionary_entry_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/search_dictionary_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/domain/usecases/clear_dictionary_usecase.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:smartbook_en_ru/features/settings/presentation/bloc/settings_bloc.dart';

class MockDictionaryRepository extends Mock implements DictionaryRepository {}

class MockBooksRepository extends Mock implements BooksRepository {}

class MockSettingsRepository extends Mock implements SettingsRepository {}

class MockGetDictionaryEntriesUseCase extends Mock
    implements GetDictionaryEntriesUseCase {}

class MockAddDictionaryEntryUseCase extends Mock
    implements AddDictionaryEntryUseCase {}

class MockUpdateDictionaryEntryUseCase extends Mock
    implements UpdateDictionaryEntryUseCase {}

class MockDeleteDictionaryEntryUseCase extends Mock
    implements DeleteDictionaryEntryUseCase {}

class MockSearchDictionaryUseCase extends Mock
    implements SearchDictionaryUseCase {}

class MockClearDictionaryUseCase extends Mock implements ClearDictionaryUseCase {}

class MockDictionaryBloc extends Mock implements DictionaryBloc {}

class MockSettingsBloc extends Mock implements SettingsBloc {}

class FakeDictionaryEntry extends Fake implements DictionaryEntry {}

class FakeBook extends Fake implements Book {}

DictionaryEntry createTestDictionaryEntry({
  String id = '1',
  String word = 'test',
  String translation = 'тест',
  String? transcription = '[test]',
  String sourceLanguage = 'en',
  String targetLanguage = 'ru',
  int rememberCount = 0,
  bool isLearned = false,
}) {
  return DictionaryEntry(
    id: id,
    word: word,
    translation: translation,
    transcription: transcription,
    sourceLanguage: sourceLanguage,
    targetLanguage: targetLanguage,
    addedAt: DateTime(2024, 1, 1),
    rememberCount: rememberCount,
    isLearned: isLearned,
  );
}

Book createTestBook({
  String id = '1',
  String title = 'Test Book',
  String? author = 'Test Author',
  String filePath = '/path/to/book.epub',
  int totalPages = 100,
  int currentPage = 0,
  double progress = 0.0,
}) {
  return Book(
    id: id,
    title: title,
    author: author,
    filePath: filePath,
    totalPages: totalPages,
    currentPage: currentPage,
    progress: progress,
    addedAt: DateTime(2024, 1, 1),
  );
}

Widget createTestableWidget({
  required Widget child,
  List<BlocProvider>? providers,
  ThemeData? theme,
}) {
  final widget = MaterialApp(
    theme: theme ?? ThemeData.light(),
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en'),
      Locale('ru'),
    ],
    home: Scaffold(body: child),
  );

  if (providers != null && providers.isNotEmpty) {
    return MultiBlocProvider(
      providers: providers,
      child: widget,
    );
  }

  return widget;
}

void registerFallbackValues() {
  registerFallbackValue(FakeDictionaryEntry());
  registerFallbackValue(FakeBook());
}
