import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:epubx/epubx.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import '../../domain/entities/book_content.dart';
import '../../errors/failures.dart';
import 'book_parser.dart';

class EpubParser extends BookParser {
  @override
  List<String> get supportedExtensions => ['epub'];

  @override
  Future<Either<Failure, BookContent>> parse(
    String filePath,
    Uint8List fileBytes,
    String bookId,
  ) async {
    try {
      final epubBook = await EpubReader.readBook(fileBytes);
      
      final title = epubBook.Title ?? _extractTitleFromPath(filePath);
      final author = epubBook.Author;
      
      String? coverPath;
      if (epubBook.CoverImage != null) {
        coverPath = await _saveCoverImage(bookId, epubBook.CoverImage!);
      }
      
      final chapters = <BookChapter>[];
      int orderIndex = 0;
      
      if (epubBook.Chapters != null) {
        for (final chapter in epubBook.Chapters!) {
          final chapterContent = _extractChapterContent(chapter);
          if (chapterContent.isNotEmpty) {
            chapters.add(BookChapter(
              id: '${bookId}_chapter_$orderIndex',
              title: chapter.Title ?? 'Chapter ${orderIndex + 1}',
              content: chapterContent,
              orderIndex: orderIndex,
            ));
            orderIndex++;
          }
          
          if (chapter.SubChapters != null) {
            for (final subChapter in chapter.SubChapters!) {
              final subContent = _extractChapterContent(subChapter);
              if (subContent.isNotEmpty) {
                chapters.add(BookChapter(
                  id: '${bookId}_chapter_$orderIndex',
                  title: subChapter.Title ?? 'Chapter ${orderIndex + 1}',
                  content: subContent,
                  orderIndex: orderIndex,
                ));
                orderIndex++;
              }
            }
          }
        }
      }
      
      if (chapters.isEmpty && epubBook.Content?.Html != null) {
        for (final entry in epubBook.Content!.Html!.entries) {
          final htmlContent = entry.value.Content ?? '';
          final textContent = _htmlToText(htmlContent);
          if (textContent.isNotEmpty) {
            chapters.add(BookChapter(
              id: '${bookId}_chapter_$orderIndex',
              title: 'Section ${orderIndex + 1}',
              content: textContent,
              orderIndex: orderIndex,
            ));
            orderIndex++;
          }
        }
      }
      
      if (chapters.isEmpty) {
        return const Left(BookParseFailure('No content found in EPUB file'));
      }
      
      return Right(BookContent(
        bookId: bookId,
        title: title,
        author: author,
        chapters: chapters,
        coverImagePath: coverPath,
      ));
    } catch (e) {
      return Left(BookParseFailure('Failed to parse EPUB: ${e.toString()}'));
    }
  }

  String _extractChapterContent(EpubChapter chapter) {
    final htmlContent = chapter.HtmlContent ?? '';
    return _htmlToText(htmlContent);
  }

  String _htmlToText(String html) {
    String text = html;
    
    text = text.replaceAll(RegExp(r'<br\s*/?>'), '\n');
    text = text.replaceAll(RegExp(r'</p>'), '\n\n');
    text = text.replaceAll(RegExp(r'</div>'), '\n');
    text = text.replaceAll(RegExp(r'</h[1-6]>'), '\n\n');
    
    text = text.replaceAll(RegExp(r'<style[^>]*>.*?</style>', dotAll: true), '');
    text = text.replaceAll(RegExp(r'<script[^>]*>.*?</script>', dotAll: true), '');
    
    text = text.replaceAll(RegExp(r'<[^>]+>'), '');
    
    text = text.replaceAll(RegExp(r'&nbsp;'), ' ');
    text = text.replaceAll(RegExp(r'&amp;'), '&');
    text = text.replaceAll(RegExp(r'&lt;'), '<');
    text = text.replaceAll(RegExp(r'&gt;'), '>');
    text = text.replaceAll(RegExp(r'&quot;'), '"');
    text = text.replaceAll(RegExp(r'&#\d+;'), '');
    
    text = text.replaceAll(RegExp(r'\n{3,}'), '\n\n');
    text = text.replaceAll(RegExp(r' +'), ' ');
    
    return text.trim();
  }

  Future<String?> _saveCoverImage(String bookId, img.Image coverImage) async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final coversDir = Directory('${appDir.path}/covers');
      if (!await coversDir.exists()) {
        await coversDir.create(recursive: true);
      }
      
      final coverPath = '${coversDir.path}/$bookId.png';
      final file = File(coverPath);
      final pngBytes = img.encodePng(coverImage);
      await file.writeAsBytes(pngBytes);
      
      return coverPath;
    } catch (e) {
      return null;
    }
  }

  String _extractTitleFromPath(String filePath) {
    final fileName = filePath.split('/').last;
    final nameWithoutExtension = fileName.replaceAll(RegExp(r'\.[^.]+$'), '');
    return nameWithoutExtension;
  }
}
