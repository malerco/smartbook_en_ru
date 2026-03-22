part of 'book_reader_bloc.dart';

@freezed
class BookReaderState with _$BookReaderState {
  const factory BookReaderState.initial() = BookReaderInitial;
  const factory BookReaderState.loading() = BookReaderLoading;
  const factory BookReaderState.loaded({
    required Book book,
    required BookContent content,
    required int currentChapterIndex,
  }) = BookReaderLoaded;
  const factory BookReaderState.error({required String message}) = BookReaderError;
}
