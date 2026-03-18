import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String id;
  final String title;
  final String? author;
  final String filePath;
  final String? coverPath;
  final int totalPages;
  final int currentPage;
  final double progress;
  final DateTime addedAt;
  final DateTime? lastReadAt;

  const Book({
    required this.id,
    required this.title,
    this.author,
    required this.filePath,
    this.coverPath,
    this.totalPages = 0,
    this.currentPage = 0,
    this.progress = 0.0,
    required this.addedAt,
    this.lastReadAt,
  });

  Book copyWith({
    String? id,
    String? title,
    String? author,
    String? filePath,
    String? coverPath,
    int? totalPages,
    int? currentPage,
    double? progress,
    DateTime? addedAt,
    DateTime? lastReadAt,
  }) {
    return Book(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      filePath: filePath ?? this.filePath,
      coverPath: coverPath ?? this.coverPath,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
      progress: progress ?? this.progress,
      addedAt: addedAt ?? this.addedAt,
      lastReadAt: lastReadAt ?? this.lastReadAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'filePath': filePath,
      'coverPath': coverPath,
      'totalPages': totalPages,
      'currentPage': currentPage,
      'progress': progress,
      'addedAt': addedAt.toIso8601String(),
      'lastReadAt': lastReadAt?.toIso8601String(),
    };
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String?,
      filePath: json['filePath'] as String,
      coverPath: json['coverPath'] as String?,
      totalPages: json['totalPages'] as int? ?? 0,
      currentPage: json['currentPage'] as int? ?? 0,
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
      addedAt: DateTime.parse(json['addedAt'] as String),
      lastReadAt: json['lastReadAt'] != null
          ? DateTime.parse(json['lastReadAt'] as String)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        author,
        filePath,
        coverPath,
        totalPages,
        currentPage,
        progress,
        addedAt,
        lastReadAt,
      ];
}
