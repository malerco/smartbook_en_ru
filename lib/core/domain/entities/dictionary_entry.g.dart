// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryEntryImpl _$$DictionaryEntryImplFromJson(
  Map<String, dynamic> json,
) => _$DictionaryEntryImpl(
  id: json['id'] as String,
  word: json['word'] as String,
  translation: json['translation'] as String,
  transcription: json['transcription'] as String?,
  example: json['example'] as String?,
  sourceLanguage: json['sourceLanguage'] as String,
  targetLanguage: json['targetLanguage'] as String,
  addedAt: DateTime.parse(json['addedAt'] as String),
  bookId: json['bookId'] as String?,
  rememberCount: (json['rememberCount'] as num?)?.toInt() ?? 0,
  isLearned: json['isLearned'] as bool? ?? false,
  lastReviewedAt: json['lastReviewedAt'] == null
      ? null
      : DateTime.parse(json['lastReviewedAt'] as String),
);

Map<String, dynamic> _$$DictionaryEntryImplToJson(
  _$DictionaryEntryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'word': instance.word,
  'translation': instance.translation,
  'transcription': instance.transcription,
  'example': instance.example,
  'sourceLanguage': instance.sourceLanguage,
  'targetLanguage': instance.targetLanguage,
  'addedAt': instance.addedAt.toIso8601String(),
  'bookId': instance.bookId,
  'rememberCount': instance.rememberCount,
  'isLearned': instance.isLearned,
  'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
};
