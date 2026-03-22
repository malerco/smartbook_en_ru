import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/entities/book.dart';
import '../../../../core/domain/repositories/books_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/services/book_parser/book_parser_service.dart';

@lazySingleton
class ImportBookUseCase {
  final BookParserService _parserService;
  final BooksRepository _repository;

  ImportBookUseCase(this._parserService, this._repository);

  Future<Either<Failure, Book>> call(String filePath) async {
    final result = await _parserService.importBook(filePath);
    
    return result.fold(
      (failure) => Left(failure),
      (book) async {
        await _repository.addBook(book);
        return Right(book);
      },
    );
  }
}
