import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../domain/usecases/get_dictionary_entries_usecase.dart';
import '../../domain/usecases/add_dictionary_entry_usecase.dart';
import '../../domain/usecases/update_dictionary_entry_usecase.dart';
import '../../domain/usecases/delete_dictionary_entry_usecase.dart';
import '../../domain/usecases/search_dictionary_usecase.dart';
import '../../domain/usecases/clear_dictionary_usecase.dart';

part 'dictionary_bloc.freezed.dart';
part 'dictionary_event.dart';
part 'dictionary_state.dart';

@injectable
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final GetDictionaryEntriesUseCase _getEntriesUseCase;
  final AddDictionaryEntryUseCase _addEntryUseCase;
  final UpdateDictionaryEntryUseCase _updateEntryUseCase;
  final DeleteDictionaryEntryUseCase _deleteEntryUseCase;
  final SearchDictionaryUseCase _searchUseCase;
  final ClearDictionaryUseCase _clearUseCase;

  DictionaryBloc(
    this._getEntriesUseCase,
    this._addEntryUseCase,
    this._updateEntryUseCase,
    this._deleteEntryUseCase,
    this._searchUseCase,
    this._clearUseCase,
  ) : super(const DictionaryState.initial()) {
    on<DictionaryLoadRequested>(_onLoadRequested);
    on<DictionaryAddRequested>(_onAddRequested);
    on<DictionaryUpdateRequested>(_onUpdateRequested);
    on<DictionaryDeleteRequested>(_onDeleteRequested);
    on<DictionarySearchRequested>(_onSearchRequested);
    on<DictionaryClearRequested>(_onClearRequested);
    on<DictionaryResetProgressRequested>(_onResetProgressRequested);
  }

  Future<void> _onLoadRequested(
    DictionaryLoadRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    emit(const DictionaryState.loading());
    try {
      final entries = _getEntriesUseCase();
      emit(DictionaryState.loaded(entries: entries));
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onAddRequested(
    DictionaryAddRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      await _addEntryUseCase(event.entry);
      add(const DictionaryEvent.loadRequested());
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onDeleteRequested(
    DictionaryDeleteRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      await _deleteEntryUseCase(event.entryId);
      add(const DictionaryEvent.loadRequested());
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onSearchRequested(
    DictionarySearchRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      if (event.query.isEmpty) {
        add(const DictionaryEvent.loadRequested());
        return;
      }
      final entries = _searchUseCase(event.query);
      emit(DictionaryState.loaded(entries: entries, searchQuery: event.query));
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onClearRequested(
    DictionaryClearRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      await _clearUseCase();
      emit(const DictionaryState.loaded(entries: []));
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateRequested(
    DictionaryUpdateRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      await _updateEntryUseCase(event.entry);
      add(const DictionaryEvent.loadRequested());
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }

  Future<void> _onResetProgressRequested(
    DictionaryResetProgressRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    try {
      final entries = _getEntriesUseCase();
      for (final entry in entries) {
        final resetEntry = entry.copyWith(
          rememberCount: 0,
          isLearned: false,
          lastReviewedAt: null,
        );
        await _updateEntryUseCase(resetEntry);
      }
      add(const DictionaryEvent.loadRequested());
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }
}
