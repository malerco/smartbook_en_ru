part of 'dictionary_bloc.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState.initial() = DictionaryInitial;
  const factory DictionaryState.loading() = DictionaryLoading;
  const factory DictionaryState.loaded({
    required List<DictionaryEntry> entries,
    String? searchQuery,
  }) = DictionaryLoaded;
  const factory DictionaryState.error({required String message}) = DictionaryError;
}
