import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/domain/repositories/books_repository.dart';

@lazySingleton
class AddBookUseCase {
  final BooksRepository _repository;

  AddBookUseCase(this._repository);

  Future<void> call(Book book) async {
    await _repository.addBook(book);
  }
}
