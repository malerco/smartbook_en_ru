// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  author: json['author'] as String?,
  filePath: json['filePath'] as String,
  coverPath: json['coverPath'] as String?,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
  currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
  progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
  scrollPosition: (json['scrollPosition'] as num?)?.toDouble() ?? 0.0,
  addedAt: DateTime.parse(json['addedAt'] as String),
  lastReadAt: json['lastReadAt'] == null
      ? null
      : DateTime.parse(json['lastReadAt'] as String),
);

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'filePath': instance.filePath,
      'coverPath': instance.coverPath,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'progress': instance.progress,
      'scrollPosition': instance.scrollPosition,
      'addedAt': instance.addedAt.toIso8601String(),
      'lastReadAt': instance.lastReadAt?.toIso8601String(),
    };
