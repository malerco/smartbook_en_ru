import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smartbook_en_ru/core/domain/entities/dictionary_entry.dart';
import 'package:smartbook_en_ru/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import '../../helpers/test_helpers.dart';

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

  group('DictionaryBloc', () {
    final testEntries = [
      createTestDictionaryEntry(id: '1', word: 'hello'),
      createTestDictionaryEntry(id: '2', word: 'world'),
    ];

    test('initial state is DictionaryState.initial', () {
      final bloc = createBloc();
      expect(bloc.state, const DictionaryState.initial());
    });

    group('loadRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'emits [loading, loaded] when load is successful',
        build: () {
          when(() => mockGetEntriesUseCase()).thenReturn(testEntries);
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.loadRequested()),
        expect: () => [
          const DictionaryState.loading(),
          DictionaryState.loaded(entries: testEntries),
        ],
      );

      blocTest<DictionaryBloc, DictionaryState>(
        'emits [loading, error] when load fails',
        build: () {
          when(() => mockGetEntriesUseCase()).thenThrow(Exception('Load failed'));
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.loadRequested()),
        expect: () => [
          const DictionaryState.loading(),
          isA<DictionaryState>(),
        ],
      );

      blocTest<DictionaryBloc, DictionaryState>(
        'emits loaded with empty list when no entries',
        build: () {
          when(() => mockGetEntriesUseCase()).thenReturn([]);
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.loadRequested()),
        expect: () => [
          const DictionaryState.loading(),
          const DictionaryState.loaded(entries: []),
        ],
      );
    });

    group('addRequested', () {
      final newEntry = createTestDictionaryEntry(id: '3', word: 'new');

      blocTest<DictionaryBloc, DictionaryState>(
        'calls addEntryUseCase and reloads entries',
        build: () {
          when(() => mockAddEntryUseCase(any())).thenAnswer((_) async {});
          when(() => mockGetEntriesUseCase()).thenReturn([...testEntries, newEntry]);
          return createBloc();
        },
        act: (bloc) => bloc.add(DictionaryEvent.addRequested(newEntry)),
        verify: (_) {
          verify(() => mockAddEntryUseCase(newEntry)).called(1);
        },
      );
    });

    group('deleteRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'calls deleteEntryUseCase and reloads entries',
        build: () {
          when(() => mockDeleteEntryUseCase(any())).thenAnswer((_) async {});
          when(() => mockGetEntriesUseCase()).thenReturn([testEntries[1]]);
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.deleteRequested('1')),
        verify: (_) {
          verify(() => mockDeleteEntryUseCase('1')).called(1);
        },
      );
    });

    group('searchRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'emits loaded with filtered entries when search has results',
        build: () {
          when(() => mockSearchUseCase('hello')).thenReturn([testEntries[0]]);
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.searchRequested('hello')),
        expect: () => [
          DictionaryState.loaded(
            entries: [testEntries[0]],
            searchQuery: 'hello',
          ),
        ],
      );

      blocTest<DictionaryBloc, DictionaryState>(
        'reloads all entries when search query is empty',
        build: () {
          when(() => mockGetEntriesUseCase()).thenReturn(testEntries);
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.searchRequested('')),
        expect: () => [
          const DictionaryState.loading(),
          DictionaryState.loaded(entries: testEntries),
        ],
      );
    });

    group('clearRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'clears dictionary and emits empty loaded state',
        build: () {
          when(() => mockClearUseCase()).thenAnswer((_) async {});
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.clearRequested()),
        expect: () => [
          const DictionaryState.loaded(entries: []),
        ],
        verify: (_) {
          verify(() => mockClearUseCase()).called(1);
        },
      );
    });

    group('updateRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'updates entry and reloads',
        build: () {
          final updatedEntry = testEntries[0].copyWith(rememberCount: 1);
          when(() => mockUpdateEntryUseCase(any())).thenAnswer((_) async {});
          when(() => mockGetEntriesUseCase()).thenReturn([updatedEntry, testEntries[1]]);
          return createBloc();
        },
        act: (bloc) {
          final updatedEntry = testEntries[0].copyWith(rememberCount: 1);
          bloc.add(DictionaryEvent.updateRequested(updatedEntry));
        },
        verify: (_) {
          verify(() => mockUpdateEntryUseCase(any())).called(1);
        },
      );
    });

    group('resetProgressRequested', () {
      blocTest<DictionaryBloc, DictionaryState>(
        'resets progress for all entries',
        build: () {
          final learnedEntries = [
            createTestDictionaryEntry(id: '1', rememberCount: 3, isLearned: true),
            createTestDictionaryEntry(id: '2', rememberCount: 2),
          ];
          when(() => mockGetEntriesUseCase()).thenReturn(learnedEntries);
          when(() => mockUpdateEntryUseCase(any())).thenAnswer((_) async {});
          return createBloc();
        },
        act: (bloc) => bloc.add(const DictionaryEvent.resetProgressRequested()),
        verify: (_) {
          verify(() => mockUpdateEntryUseCase(any())).called(2);
        },
      );
    });
  });
}
