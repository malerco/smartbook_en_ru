import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/entities/book.dart';
import '../../domain/entities/book_content.dart';
import '../../errors/failures.dart';
import 'book_parser.dart';
import 'epub_parser.dart';
import 'fb2_parser.dart';
import 'txt_parser.dart';

@lazySingleton
class BookParserService {
  final List<BookParser> _parsers = [
    EpubParser(),
    Fb2Parser(),
    TxtParser(),
  ];

  List<String> get supportedExtensions => 
      _parsers.expand((p) => p.supportedExtensions).toList();

  bool isSupported(String filePath) {
    return _parsers.any((parser) => _canParse(parser, filePath));
  }

  bool _canParse(BookParser parser, String filePath) {
    final extension = filePath.split('.').last.toLowerCase();
    return parser.supportedExtensions.contains(extension);
  }

  Future<Either<Failure, BookContent>> parseBook(
    String filePath,
    Uint8List fileBytes,
    String bookId,
  ) async {
    for (final parser in _parsers) {
      if (_canParse(parser, filePath)) {
        return parser.parse(filePath, fileBytes, bookId);
      }
    }
    return const Left(UnsupportedFormatFailure());
  }

  Future<Either<Failure, Book>> importBook(String sourcePath) async {
    try {
      final file = File(sourcePath);
      if (!await file.exists()) {
        return const Left(BookNotFoundFailure('Source file not found'));
      }

      final fileBytes = await file.readAsBytes();
      final bookId = DateTime.now().millisecondsSinceEpoch.toString();

      final parseResult = await parseBook(sourcePath, fileBytes, bookId);

      return parseResult.fold(
        (failure) => Left(failure),
        (content) async {
          final savedPath = await _saveBookToStorage(sourcePath, bookId);

          final book = Book(
            id: bookId,
            title: content.title,
            author: content.author,
            filePath: savedPath,
            coverPath: content.coverImagePath,
            totalPages: content.chapters.length,
            currentPage: 0,
            progress: 0.0,
            addedAt: DateTime.now(),
          );

          return Right(book);
        },
      );
    } catch (e) {
      return Left(BookParseFailure('Failed to import book: ${e.toString()}'));
    }
  }

  Future<String> _saveBookToStorage(String sourcePath, String bookId) async {
    final appDir = await getApplicationDocumentsDirectory();
    final booksDir = Directory('${appDir.path}/books');
    if (!await booksDir.exists()) {
      await booksDir.create(recursive: true);
    }

    final extension = sourcePath.split('.').last;
    final destPath = '${booksDir.path}/$bookId.$extension';

    final sourceFile = File(sourcePath);
    await sourceFile.copy(destPath);

    return destPath;
  }

  Future<Either<Failure, BookContent>> getBookContent(String filePath) async {
    try {
      final file = File(filePath);
      if (!await file.exists()) {
        return const Left(BookNotFoundFailure());
      }

      final fileBytes = await file.readAsBytes();
      final bookId = filePath.split('/').last.replaceAll(RegExp(r'\.[^.]+$'), '');

      return parseBook(filePath, fileBytes, bookId);
    } catch (e) {
      return Left(BookParseFailure('Failed to read book: ${e.toString()}'));
    }
  }
}
