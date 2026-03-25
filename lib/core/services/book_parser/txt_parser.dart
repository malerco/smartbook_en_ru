import 'dart:convert';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import '../../domain/entities/book_content.dart';
import '../../errors/failures.dart';
import 'book_parser.dart';

class TxtParser extends BookParser {
  @override
  List<String> get supportedExtensions => ['txt'];

  @override
  Future<Either<Failure, BookContent>> parse(
    String filePath,
    Uint8List fileBytes,
    String bookId,
  ) async {
    try {
      final content = utf8.decode(fileBytes, allowMalformed: true);
      
      if (content.trim().isEmpty) {
        return const Left(BookParseFailure('Empty text file'));
      }
      
      final title = _extractTitleFromPath(filePath);
      final chapters = _splitIntoChapters(content, bookId, title);
      
      return Right(BookContent(
        bookId: bookId,
        title: title,
        author: null,
        chapters: chapters,
        coverImagePath: null,
      ));
    } catch (e) {
      return Left(BookParseFailure('Failed to parse TXT: ${e.toString()}'));
    }
  }

  List<BookChapter> _splitIntoChapters(String content, String bookId, String defaultTitle) {
    final chapters = <BookChapter>[];
    
    final chapterPattern = RegExp(
      r'^(Chapter|Глава|CHAPTER|ГЛАВА|Part|Часть|PART|ЧАСТЬ)\s*[\d\w]+[.:]*\s*.*$',
      multiLine: true,
      caseSensitive: false,
    );
    
    final matches = chapterPattern.allMatches(content).toList();
    
    if (matches.isEmpty) {
      final paragraphs = content.split(RegExp(r'\n\s*\n'));
      final chunkSize = 50;
      
      if (paragraphs.length <= chunkSize) {
        chapters.add(BookChapter(
          id: '${bookId}_chapter_0',
          title: defaultTitle,
          content: content.trim(),
          orderIndex: 0,
        ));
      } else {
        int orderIndex = 0;
        for (int i = 0; i < paragraphs.length; i += chunkSize) {
          final end = (i + chunkSize > paragraphs.length) ? paragraphs.length : i + chunkSize;
          final chapterContent = paragraphs.sublist(i, end).join('\n\n');
          
          chapters.add(BookChapter(
            id: '${bookId}_chapter_$orderIndex',
            title: 'Part ${orderIndex + 1}',
            content: chapterContent.trim(),
            orderIndex: orderIndex,
          ));
          orderIndex++;
        }
      }
    } else {
      int orderIndex = 0;
      
      if (matches.first.start > 0) {
        final prologueContent = content.substring(0, matches.first.start).trim();
        if (prologueContent.isNotEmpty) {
          chapters.add(BookChapter(
            id: '${bookId}_chapter_$orderIndex',
            title: 'Introduction',
            content: prologueContent,
            orderIndex: orderIndex,
          ));
          orderIndex++;
        }
      }
      
      for (int i = 0; i < matches.length; i++) {
        final match = matches[i];
        final chapterTitle = match.group(0)?.trim() ?? 'Chapter ${orderIndex + 1}';
        
        final startIndex = match.end;
        final endIndex = (i + 1 < matches.length) ? matches[i + 1].start : content.length;
        
        final chapterContent = content.substring(startIndex, endIndex).trim();
        
        if (chapterContent.isNotEmpty) {
          chapters.add(BookChapter(
            id: '${bookId}_chapter_$orderIndex',
            title: chapterTitle,
            content: chapterContent,
            orderIndex: orderIndex,
          ));
          orderIndex++;
        }
      }
    }
    
    return chapters;
  }

  String _extractTitleFromPath(String filePath) {
    final fileName = filePath.split('/').last;
    final nameWithoutExtension = fileName.replaceAll(RegExp(r'\.[^.]+$'), '');
    return nameWithoutExtension;
  }
}
