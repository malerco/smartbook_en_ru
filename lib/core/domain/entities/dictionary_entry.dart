import 'package:equatable/equatable.dart';

class DictionaryEntry extends Equatable {
  final String id;
  final String word;
  final String translation;
  final String? transcription;
  final String? example;
  final String sourceLanguage;
  final String targetLanguage;
  final DateTime addedAt;
  final String? bookId;
  final int rememberCount;
  final bool isLearned;
  final DateTime? lastReviewedAt;

  const DictionaryEntry({
    required this.id,
    required this.word,
    required this.translation,
    this.transcription,
    this.example,
    required this.sourceLanguage,
    required this.targetLanguage,
    required this.addedAt,
    this.bookId,
    this.rememberCount = 0,
    this.isLearned = false,
    this.lastReviewedAt,
  });

  DictionaryEntry copyWith({
    String? id,
    String? word,
    String? translation,
    String? transcription,
    String? example,
    String? sourceLanguage,
    String? targetLanguage,
    DateTime? addedAt,
    String? bookId,
    int? rememberCount,
    bool? isLearned,
    DateTime? lastReviewedAt,
  }) {
    return DictionaryEntry(
      id: id ?? this.id,
      word: word ?? this.word,
      translation: translation ?? this.translation,
      transcription: transcription ?? this.transcription,
      example: example ?? this.example,
      sourceLanguage: sourceLanguage ?? this.sourceLanguage,
      targetLanguage: targetLanguage ?? this.targetLanguage,
      addedAt: addedAt ?? this.addedAt,
      bookId: bookId ?? this.bookId,
      rememberCount: rememberCount ?? this.rememberCount,
      isLearned: isLearned ?? this.isLearned,
      lastReviewedAt: lastReviewedAt ?? this.lastReviewedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'word': word,
      'translation': translation,
      'transcription': transcription,
      'example': example,
      'sourceLanguage': sourceLanguage,
      'targetLanguage': targetLanguage,
      'addedAt': addedAt.toIso8601String(),
      'bookId': bookId,
      'rememberCount': rememberCount,
      'isLearned': isLearned,
      'lastReviewedAt': lastReviewedAt?.toIso8601String(),
    };
  }

  factory DictionaryEntry.fromJson(Map<String, dynamic> json) {
    return DictionaryEntry(
      id: json['id'] as String,
      word: json['word'] as String,
      translation: json['translation'] as String,
      transcription: json['transcription'] as String?,
      example: json['example'] as String?,
      sourceLanguage: json['sourceLanguage'] as String,
      targetLanguage: json['targetLanguage'] as String,
      addedAt: DateTime.parse(json['addedAt'] as String),
      bookId: json['bookId'] as String?,
      rememberCount: json['rememberCount'] as int? ?? 0,
      isLearned: json['isLearned'] as bool? ?? false,
      lastReviewedAt: json['lastReviewedAt'] != null 
          ? DateTime.parse(json['lastReviewedAt'] as String) 
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        word,
        translation,
        transcription,
        example,
        sourceLanguage,
        targetLanguage,
        addedAt,
        bookId,
        rememberCount,
        isLearned,
        lastReviewedAt,
      ];
}
