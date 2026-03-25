part of 'books_bloc.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial() = BooksInitial;
  const factory BooksState.loading() = BooksLoading;
  const factory BooksState.loaded({required List<Book?> books}) = BooksLoaded;
  const factory BooksState.error({required String message}) = BooksError;
}
