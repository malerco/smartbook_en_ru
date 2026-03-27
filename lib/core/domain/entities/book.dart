import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String title,
    String? author,
    required String filePath,
    String? coverPath,
    @Default(0) int totalPages,
    @Default(0) int currentPage,
    @Default(0.0) double progress,
    @Default(0.0) double scrollPosition,
    required DateTime addedAt,
    DateTime? lastReadAt,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
