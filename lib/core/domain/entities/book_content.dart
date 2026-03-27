import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_content.freezed.dart';
part 'book_content.g.dart';

@freezed
class BookChapter with _$BookChapter {
  const factory BookChapter({
    required String id,
    required String title,
    required String content,
    required int orderIndex,
  }) = _BookChapter;

  factory BookChapter.fromJson(Map<String, dynamic> json) =>
      _$BookChapterFromJson(json);
}

@freezed
class BookContent with _$BookContent {
  const BookContent._();

  const factory BookContent({
    required String bookId,
    required String title,
    String? author,
    required List<BookChapter> chapters,
    String? coverImagePath,
  }) = _BookContent;

  factory BookContent.fromJson(Map<String, dynamic> json) =>
      _$BookContentFromJson(json);

  String get fullText => chapters.map((c) => c.content).join('\n\n');

  int get totalCharacters => fullText.length;
}
