import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import '../../domain/entities/book_content.dart';
import '../../errors/failures.dart';

abstract class BookParser {
  List<String> get supportedExtensions;
  
  Future<Either<Failure, BookContent>> parse(
    String filePath,
    Uint8List fileBytes,
    String bookId,
  );
}

enum BookFormat {
  epub,
  fb2,
  txt,
  unknown;

  static BookFormat fromExtension(String extension) {
    switch (extension.toLowerCase()) {
      case 'epub':
        return BookFormat.epub;
      case 'fb2':
        return BookFormat.fb2;
      case 'txt':
        return BookFormat.txt;
      default:
        return BookFormat.unknown;
    }
  }

  static List<String> get supportedExtensions => ['epub', 'fb2', 'txt'];
}
