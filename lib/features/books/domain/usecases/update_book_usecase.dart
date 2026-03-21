import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/domain/repositories/books_repository.dart';

@lazySingleton
class UpdateBookUseCase {
  final BooksRepository _repository;

  UpdateBookUseCase(this._repository);

  Future<void> call(Book book) async {
    await _repository.updateBook(book);
  }
}
