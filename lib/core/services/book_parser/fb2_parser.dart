import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xml/xml.dart';
import '../../domain/entities/book_content.dart';
import '../../errors/failures.dart';
import 'book_parser.dart';

class Fb2Parser extends BookParser {
  @override
  List<String> get supportedExtensions => ['fb2'];

  @override
  Future<Either<Failure, BookContent>> parse(
    String filePath,
    Uint8List fileBytes,
    String bookId,
  ) async {
    try {
      final content = utf8.decode(fileBytes, allowMalformed: true);
      final document = XmlDocument.parse(content);
      
      final fictionBook = document.findAllElements('FictionBook').firstOrNull;
      if (fictionBook == null) {
        return const Left(BookParseFailure('Invalid FB2 format'));
      }
      
      final description = fictionBook.findAllElements('description').firstOrNull;
      final titleInfo = description?.findAllElements('title-info').firstOrNull;
      
      final bookTitle = _extractTitle(titleInfo) ?? _extractTitleFromPath(filePath);
      final author = _extractAuthor(titleInfo);
      
      String? coverPath;
      final coverImageId = _extractCoverId(titleInfo);
      if (coverImageId != null) {
        coverPath = await _extractAndSaveCover(fictionBook, coverImageId, bookId);
      }
      
      final body = fictionBook.findAllElements('body').firstOrNull;
      if (body == null) {
        return const Left(BookParseFailure('No content found in FB2 file'));
      }
      
      final chapters = <BookChapter>[];
      int orderIndex = 0;
      
      final sections = body.findAllElements('section');
      for (final section in sections) {
        final chapterTitle = _extractSectionTitle(section) ?? 'Chapter ${orderIndex + 1}';
        final chapterContent = _extractSectionContent(section);
        
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
      
      if (chapters.isEmpty) {
        final fullContent = _extractSectionContent(body);
        if (fullContent.isNotEmpty) {
          chapters.add(BookChapter(
            id: '${bookId}_chapter_0',
            title: bookTitle,
            content: fullContent,
            orderIndex: 0,
          ));
        }
      }
      
      if (chapters.isEmpty) {
        return const Left(BookParseFailure('No content found in FB2 file'));
      }
      
      return Right(BookContent(
        bookId: bookId,
        title: bookTitle,
        author: author,
        chapters: chapters,
        coverImagePath: coverPath,
      ));
    } catch (e) {
      return Left(BookParseFailure('Failed to parse FB2: ${e.toString()}'));
    }
  }

  String? _extractTitle(XmlElement? titleInfo) {
    if (titleInfo == null) return null;
    final bookTitle = titleInfo.findAllElements('book-title').firstOrNull;
    return bookTitle?.innerText.trim();
  }

  String? _extractAuthor(XmlElement? titleInfo) {
    if (titleInfo == null) return null;
    final authorElement = titleInfo.findAllElements('author').firstOrNull;
    if (authorElement == null) return null;
    
    final firstName = authorElement.findAllElements('first-name').firstOrNull?.innerText ?? '';
    final middleName = authorElement.findAllElements('middle-name').firstOrNull?.innerText ?? '';
    final lastName = authorElement.findAllElements('last-name').firstOrNull?.innerText ?? '';
    
    final parts = [firstName, middleName, lastName].where((p) => p.isNotEmpty).toList();
    return parts.isNotEmpty ? parts.join(' ') : null;
  }

  String? _extractCoverId(XmlElement? titleInfo) {
    if (titleInfo == null) return null;
    final coverpage = titleInfo.findAllElements('coverpage').firstOrNull;
    if (coverpage == null) return null;
    
    final image = coverpage.findAllElements('image').firstOrNull;
    if (image == null) return null;
    
    final href = image.getAttribute('l:href') ?? image.getAttribute('xlink:href');
    if (href == null) return null;
    
    return href.replaceFirst('#', '');
  }

  Future<String?> _extractAndSaveCover(
    XmlElement fictionBook,
    String coverId,
    String bookId,
  ) async {
    try {
      final binaries = fictionBook.findAllElements('binary');
      for (final binary in binaries) {
        final id = binary.getAttribute('id');
        if (id == coverId) {
          final base64Content = binary.innerText.replaceAll(RegExp(r'\s'), '');
          final imageBytes = base64Decode(base64Content);
          
          final appDir = await getApplicationDocumentsDirectory();
          final coversDir = Directory('${appDir.path}/covers');
          if (!await coversDir.exists()) {
            await coversDir.create(recursive: true);
          }
          
          final contentType = binary.getAttribute('content-type') ?? 'image/jpeg';
          final extension = contentType.contains('png') ? 'png' : 'jpg';
          final coverPath = '${coversDir.path}/$bookId.$extension';
          
          final file = File(coverPath);
          await file.writeAsBytes(imageBytes);
          
          return coverPath;
        }
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  String? _extractSectionTitle(XmlElement section) {
    final title = section.findAllElements('title').firstOrNull;
    if (title == null) return null;
    
    final paragraphs = title.findAllElements('p');
    final titleParts = paragraphs.map((p) => p.innerText.trim()).where((t) => t.isNotEmpty);
    return titleParts.isNotEmpty ? titleParts.join(' ') : null;
  }

  String _extractSectionContent(XmlElement element) {
    final buffer = StringBuffer();
    
    for (final child in element.children) {
      if (child is XmlElement) {
        switch (child.name.local) {
          case 'p':
            final text = child.innerText.trim();
            if (text.isNotEmpty) {
              buffer.writeln(text);
              buffer.writeln();
            }
            break;
          case 'empty-line':
            buffer.writeln();
            break;
          case 'subtitle':
            final text = child.innerText.trim();
            if (text.isNotEmpty) {
              buffer.writeln(text);
              buffer.writeln();
            }
            break;
          case 'poem':
          case 'stanza':
            buffer.write(_extractSectionContent(child));
            buffer.writeln();
            break;
          case 'v':
            buffer.writeln(child.innerText.trim());
            break;
          case 'cite':
            buffer.write(_extractSectionContent(child));
            break;
          case 'epigraph':
            buffer.write(_extractSectionContent(child));
            buffer.writeln();
            break;
        }
      }
    }
    
    return buffer.toString().trim();
  }

  String _extractTitleFromPath(String filePath) {
    final fileName = filePath.split('/').last;
    final nameWithoutExtension = fileName.replaceAll(RegExp(r'\.[^.]+$'), '');
    return nameWithoutExtension;
  }
}
