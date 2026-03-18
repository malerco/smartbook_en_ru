part of 'dictionary_bloc.dart';

@freezed
class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.loadRequested() = DictionaryLoadRequested;
  const factory DictionaryEvent.addRequested(DictionaryEntry entry) = DictionaryAddRequested;
  const factory DictionaryEvent.deleteRequested(String entryId) = DictionaryDeleteRequested;
  const factory DictionaryEvent.searchRequested(String query) = DictionarySearchRequested;
  const factory DictionaryEvent.clearRequested() = DictionaryClearRequested;
}
