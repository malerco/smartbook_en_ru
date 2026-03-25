import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/domain/repositories/books_repository.dart';

@lazySingleton
class GetBooksUseCase {
  final BooksRepository _repository;

  GetBooksUseCase(this._repository);

  List<Book> call() {
    final books = _repository.getBooks();
    books.sort((a, b) => b.addedAt.compareTo(a.addedAt));
    return books;
  }
}
