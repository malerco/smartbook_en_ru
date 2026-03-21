import 'package:injectable/injectable.dart';
import '../../../../core/domain/repositories/books_repository.dart';

@lazySingleton
class DeleteBookUseCase {
  final BooksRepository _repository;

  DeleteBookUseCase(this._repository);

  Future<void> call(String bookId) async {
    await _repository.deleteBook(bookId);
  }
}
