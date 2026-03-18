import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/entities/book.dart';

@lazySingleton
class BooksService {
  static const String _booksKey = 'saved_books';
  final SharedPreferences _prefs;

  BooksService(this._prefs);

  List<Book> getBooks() {
    final jsonString = _prefs.getString(_booksKey);
    if (jsonString == null) return [];
    
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((e) => Book.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<void> saveBooks(List<Book> books) async {
    final jsonList = books.map((e) => e.toJson()).toList();
    await _prefs.setString(_booksKey, json.encode(jsonList));
  }

  Future<void> addBook(Book book) async {
    final books = getBooks();
    books.add(book);
    await saveBooks(books);
  }

  Future<void> updateBook(Book book) async {
    final books = getBooks();
    final index = books.indexWhere((b) => b.id == book.id);
    if (index != -1) {
      books[index] = book;
      await saveBooks(books);
    }
  }

  Future<void> deleteBook(String bookId) async {
    final books = getBooks();
    books.removeWhere((b) => b.id == bookId);
    await saveBooks(books);
  }

  Book? getBookById(String bookId) {
    final books = getBooks();
    try {
      return books.firstWhere((b) => b.id == bookId);
    } catch (_) {
      return null;
    }
  }
}
