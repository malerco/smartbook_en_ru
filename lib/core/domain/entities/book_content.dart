import 'package:equatable/equatable.dart';

class BookChapter extends Equatable {
  final String id;
  final String title;
  final String content;
  final int orderIndex;

  const BookChapter({
    required this.id,
    required this.title,
    required this.content,
    required this.orderIndex,
  });

  @override
  List<Object?> get props => [id, title, content, orderIndex];
}

class BookContent extends Equatable {
  final String bookId;
  final String title;
  final String? author;
  final List<BookChapter> chapters;
  final String? coverImagePath;

  const BookContent({
    required this.bookId,
    required this.title,
    this.author,
    required this.chapters,
    this.coverImagePath,
  });

  String get fullText => chapters.map((c) => c.content).join('\n\n');

  int get totalCharacters => fullText.length;

  @override
  List<Object?> get props => [bookId, title, author, chapters, coverImagePath];
}
