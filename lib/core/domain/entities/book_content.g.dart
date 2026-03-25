// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookChapterImpl _$$BookChapterImplFromJson(Map<String, dynamic> json) =>
    _$BookChapterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      orderIndex: (json['orderIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$BookChapterImplToJson(_$BookChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'orderIndex': instance.orderIndex,
    };

_$BookContentImpl _$$BookContentImplFromJson(Map<String, dynamic> json) =>
    _$BookContentImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String?,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => BookChapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      coverImagePath: json['coverImagePath'] as String?,
    );

Map<String, dynamic> _$$BookContentImplToJson(_$BookContentImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'chapters': instance.chapters,
      'coverImagePath': instance.coverImagePath,
    };
