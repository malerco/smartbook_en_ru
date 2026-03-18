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
      ];
}
