// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DictionaryEntry _$DictionaryEntryFromJson(Map<String, dynamic> json) {
  return _DictionaryEntry.fromJson(json);
}

/// @nodoc
mixin _$DictionaryEntry {
  String get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String? get transcription => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  String get sourceLanguage => throw _privateConstructorUsedError;
  String get targetLanguage => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;
  String? get bookId => throw _privateConstructorUsedError;
  int get rememberCount => throw _privateConstructorUsedError;
  bool get isLearned => throw _privateConstructorUsedError;
  DateTime? get lastReviewedAt => throw _privateConstructorUsedError;

  /// Serializes this DictionaryEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryEntryCopyWith<DictionaryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEntryCopyWith<$Res> {
  factory $DictionaryEntryCopyWith(
    DictionaryEntry value,
    $Res Function(DictionaryEntry) then,
  ) = _$DictionaryEntryCopyWithImpl<$Res, DictionaryEntry>;
  @useResult
  $Res call({
    String id,
    String word,
    String translation,
    String? transcription,
    String? example,
    String sourceLanguage,
    String targetLanguage,
    DateTime addedAt,
    String? bookId,
    int rememberCount,
    bool isLearned,
    DateTime? lastReviewedAt,
  });
}

/// @nodoc
class _$DictionaryEntryCopyWithImpl<$Res, $Val extends DictionaryEntry>
    implements $DictionaryEntryCopyWith<$Res> {
  _$DictionaryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? translation = null,
    Object? transcription = freezed,
    Object? example = freezed,
    Object? sourceLanguage = null,
    Object? targetLanguage = null,
    Object? addedAt = null,
    Object? bookId = freezed,
    Object? rememberCount = null,
    Object? isLearned = null,
    Object? lastReviewedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            word: null == word
                ? _value.word
                : word // ignore: cast_nullable_to_non_nullable
                      as String,
            translation: null == translation
                ? _value.translation
                : translation // ignore: cast_nullable_to_non_nullable
                      as String,
            transcription: freezed == transcription
                ? _value.transcription
                : transcription // ignore: cast_nullable_to_non_nullable
                      as String?,
            example: freezed == example
                ? _value.example
                : example // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourceLanguage: null == sourceLanguage
                ? _value.sourceLanguage
                : sourceLanguage // ignore: cast_nullable_to_non_nullable
                      as String,
            targetLanguage: null == targetLanguage
                ? _value.targetLanguage
                : targetLanguage // ignore: cast_nullable_to_non_nullable
                      as String,
            addedAt: null == addedAt
                ? _value.addedAt
                : addedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            bookId: freezed == bookId
                ? _value.bookId
                : bookId // ignore: cast_nullable_to_non_nullable
                      as String?,
            rememberCount: null == rememberCount
                ? _value.rememberCount
                : rememberCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isLearned: null == isLearned
                ? _value.isLearned
                : isLearned // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastReviewedAt: freezed == lastReviewedAt
                ? _value.lastReviewedAt
                : lastReviewedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DictionaryEntryImplCopyWith<$Res>
    implements $DictionaryEntryCopyWith<$Res> {
  factory _$$DictionaryEntryImplCopyWith(
    _$DictionaryEntryImpl value,
    $Res Function(_$DictionaryEntryImpl) then,
  ) = __$$DictionaryEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String word,
    String translation,
    String? transcription,
    String? example,
    String sourceLanguage,
    String targetLanguage,
    DateTime addedAt,
    String? bookId,
    int rememberCount,
    bool isLearned,
    DateTime? lastReviewedAt,
  });
}

/// @nodoc
class __$$DictionaryEntryImplCopyWithImpl<$Res>
    extends _$DictionaryEntryCopyWithImpl<$Res, _$DictionaryEntryImpl>
    implements _$$DictionaryEntryImplCopyWith<$Res> {
  __$$DictionaryEntryImplCopyWithImpl(
    _$DictionaryEntryImpl _value,
    $Res Function(_$DictionaryEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? translation = null,
    Object? transcription = freezed,
    Object? example = freezed,
    Object? sourceLanguage = null,
    Object? targetLanguage = null,
    Object? addedAt = null,
    Object? bookId = freezed,
    Object? rememberCount = null,
    Object? isLearned = null,
    Object? lastReviewedAt = freezed,
  }) {
    return _then(
      _$DictionaryEntryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        word: null == word
            ? _value.word
            : word // ignore: cast_nullable_to_non_nullable
                  as String,
        translation: null == translation
            ? _value.translation
            : translation // ignore: cast_nullable_to_non_nullable
                  as String,
        transcription: freezed == transcription
            ? _value.transcription
            : transcription // ignore: cast_nullable_to_non_nullable
                  as String?,
        example: freezed == example
            ? _value.example
            : example // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourceLanguage: null == sourceLanguage
            ? _value.sourceLanguage
            : sourceLanguage // ignore: cast_nullable_to_non_nullable
                  as String,
        targetLanguage: null == targetLanguage
            ? _value.targetLanguage
            : targetLanguage // ignore: cast_nullable_to_non_nullable
                  as String,
        addedAt: null == addedAt
            ? _value.addedAt
            : addedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        bookId: freezed == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String?,
        rememberCount: null == rememberCount
            ? _value.rememberCount
            : rememberCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isLearned: null == isLearned
            ? _value.isLearned
            : isLearned // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastReviewedAt: freezed == lastReviewedAt
            ? _value.lastReviewedAt
            : lastReviewedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryEntryImpl implements _DictionaryEntry {
  const _$DictionaryEntryImpl({
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

  factory _$DictionaryEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String word;
  @override
  final String translation;
  @override
  final String? transcription;
  @override
  final String? example;
  @override
  final String sourceLanguage;
  @override
  final String targetLanguage;
  @override
  final DateTime addedAt;
  @override
  final String? bookId;
  @override
  @JsonKey()
  final int rememberCount;
  @override
  @JsonKey()
  final bool isLearned;
  @override
  final DateTime? lastReviewedAt;

  @override
  String toString() {
    return 'DictionaryEntry(id: $id, word: $word, translation: $translation, transcription: $transcription, example: $example, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage, addedAt: $addedAt, bookId: $bookId, rememberCount: $rememberCount, isLearned: $isLearned, lastReviewedAt: $lastReviewedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.transcription, transcription) ||
                other.transcription == transcription) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.sourceLanguage, sourceLanguage) ||
                other.sourceLanguage == sourceLanguage) &&
            (identical(other.targetLanguage, targetLanguage) ||
                other.targetLanguage == targetLanguage) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.rememberCount, rememberCount) ||
                other.rememberCount == rememberCount) &&
            (identical(other.isLearned, isLearned) ||
                other.isLearned == isLearned) &&
            (identical(other.lastReviewedAt, lastReviewedAt) ||
                other.lastReviewedAt == lastReviewedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
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
  );

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryEntryImplCopyWith<_$DictionaryEntryImpl> get copyWith =>
      __$$DictionaryEntryImplCopyWithImpl<_$DictionaryEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryEntryImplToJson(this);
  }
}

abstract class _DictionaryEntry implements DictionaryEntry {
  const factory _DictionaryEntry({
    required final String id,
    required final String word,
    required final String translation,
    final String? transcription,
    final String? example,
    required final String sourceLanguage,
    required final String targetLanguage,
    required final DateTime addedAt,
    final String? bookId,
    final int rememberCount,
    final bool isLearned,
    final DateTime? lastReviewedAt,
  }) = _$DictionaryEntryImpl;

  factory _DictionaryEntry.fromJson(Map<String, dynamic> json) =
      _$DictionaryEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get word;
  @override
  String get translation;
  @override
  String? get transcription;
  @override
  String? get example;
  @override
  String get sourceLanguage;
  @override
  String get targetLanguage;
  @override
  DateTime get addedAt;
  @override
  String? get bookId;
  @override
  int get rememberCount;
  @override
  bool get isLearned;
  @override
  DateTime? get lastReviewedAt;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryEntryImplCopyWith<_$DictionaryEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
