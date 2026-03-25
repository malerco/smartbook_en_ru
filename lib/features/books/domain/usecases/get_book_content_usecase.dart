import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book_content.dart';
import '../../../../core/domain/repositories/books_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/services/book_parser/book_parser_service.dart';

@lazySingleton
class GetBookContentUseCase {
  final BookParserService _parserService;
  final BooksRepository _repository;

  GetBookContentUseCase(this._parserService, this._repository);

  Future<Either<Failure, BookContent>> call(String bookId) async {
    final book = _repository.getBookById(bookId);
    
    if (book == null) {
      return const Left(BookNotFoundFailure());
    }
    
    return _parserService.getBookContent(book.filePath);
  }
}
