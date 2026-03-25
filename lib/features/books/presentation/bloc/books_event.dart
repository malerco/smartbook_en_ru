part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {
  const factory BooksEvent.loadRequested() = BooksLoadRequested;
  const factory BooksEvent.addRequested(Book book) = BooksAddRequested;
  const factory BooksEvent.deleteRequested(String bookId) = BooksDeleteRequested;
  const factory BooksEvent.updateRequested(Book book) = BooksUpdateRequested;
  const factory BooksEvent.importRequested(String filePath) = BooksImportRequested;
}
