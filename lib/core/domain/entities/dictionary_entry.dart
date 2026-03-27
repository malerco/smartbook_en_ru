import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_entry.freezed.dart';
part 'dictionary_entry.g.dart';

@freezed
class DictionaryEntry with _$DictionaryEntry {
  const factory DictionaryEntry({
    required String id,
    required String word,
    required String translation,
    String? transcription,
    String? example,
    required String sourceLanguage,
    required String targetLanguage,
    required DateTime addedAt,
    String? bookId,
    @Default(0) int rememberCount,
    @Default(false) bool isLearned,
    DateTime? lastReviewedAt,
  }) = _DictionaryEntry;

  factory DictionaryEntry.fromJson(Map<String, dynamic> json) =>
      _$DictionaryEntryFromJson(json);
}
