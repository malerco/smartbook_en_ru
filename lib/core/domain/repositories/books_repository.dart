import '../entities/book.dart';

abstract class BooksRepository {
  List<Book> getBooks();
  Future<void> saveBooks(List<Book> books);
  Future<void> addBook(Book book);
  Future<void> updateBook(Book book);
  Future<void> deleteBook(String bookId);
  Book? getBookById(String bookId);
}
