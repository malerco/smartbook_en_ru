import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/services/dictionary_service.dart';

part 'dictionary_bloc.freezed.dart';
part 'dictionary_event.dart';
part 'dictionary_state.dart';

@injectable
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryService _dictionaryService;

  DictionaryBloc(this._dictionaryService) : super(const DictionaryState.initial()) {
    on<DictionaryLoadRequested>(_onLoadRequested);
    on<DictionaryAddRequested>(_onAddRequested);
    on<DictionaryDeleteRequested>(_onDeleteRequested);
    on<DictionarySearchRequested>(_onSearchRequested);
    on<DictionaryClearRequested>(_onClearRequested);
  }

  Future<void> _onLoadRequested(
    DictionaryLoadRequested event,
    Emitter<DictionaryState> emit,
  ) async {
    emit(const DictionaryState.loading());
    try {
      final entries = _dictionaryService.getEntries();
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
      await _dictionaryService.addEntry(event.entry);
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
      await _dictionaryService.deleteEntry(event.entryId);
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
      final entries = _dictionaryService.searchEntries(event.query);
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
      await _dictionaryService.clearAll();
      emit(const DictionaryState.loaded(entries: []));
    } catch (e) {
      emit(DictionaryState.error(message: e.toString()));
    }
  }
}
