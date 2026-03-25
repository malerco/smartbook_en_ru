// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookChapter _$BookChapterFromJson(Map<String, dynamic> json) {
  return _BookChapter.fromJson(json);
}

/// @nodoc
mixin _$BookChapter {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get orderIndex => throw _privateConstructorUsedError;

  /// Serializes this BookChapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookChapterCopyWith<BookChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookChapterCopyWith<$Res> {
  factory $BookChapterCopyWith(
    BookChapter value,
    $Res Function(BookChapter) then,
  ) = _$BookChapterCopyWithImpl<$Res, BookChapter>;
  @useResult
  $Res call({String id, String title, String content, int orderIndex});
}

/// @nodoc
class _$BookChapterCopyWithImpl<$Res, $Val extends BookChapter>
    implements $BookChapterCopyWith<$Res> {
  _$BookChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? orderIndex = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            orderIndex: null == orderIndex
                ? _value.orderIndex
                : orderIndex // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookChapterImplCopyWith<$Res>
    implements $BookChapterCopyWith<$Res> {
  factory _$$BookChapterImplCopyWith(
    _$BookChapterImpl value,
    $Res Function(_$BookChapterImpl) then,
  ) = __$$BookChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String content, int orderIndex});
}

/// @nodoc
class __$$BookChapterImplCopyWithImpl<$Res>
    extends _$BookChapterCopyWithImpl<$Res, _$BookChapterImpl>
    implements _$$BookChapterImplCopyWith<$Res> {
  __$$BookChapterImplCopyWithImpl(
    _$BookChapterImpl _value,
    $Res Function(_$BookChapterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? orderIndex = null,
  }) {
    return _then(
      _$BookChapterImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        orderIndex: null == orderIndex
            ? _value.orderIndex
            : orderIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookChapterImpl implements _BookChapter {
  const _$BookChapterImpl({
    required this.id,
    required this.title,
    required this.content,
    required this.orderIndex,
  });

  factory _$BookChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookChapterImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int orderIndex;

  @override
  String toString() {
    return 'BookChapter(id: $id, title: $title, content: $content, orderIndex: $orderIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, orderIndex);

  /// Create a copy of BookChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookChapterImplCopyWith<_$BookChapterImpl> get copyWith =>
      __$$BookChapterImplCopyWithImpl<_$BookChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookChapterImplToJson(this);
  }
}

abstract class _BookChapter implements BookChapter {
  const factory _BookChapter({
    required final String id,
    required final String title,
    required final String content,
    required final int orderIndex,
  }) = _$BookChapterImpl;

  factory _BookChapter.fromJson(Map<String, dynamic> json) =
      _$BookChapterImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get orderIndex;

  /// Create a copy of BookChapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookChapterImplCopyWith<_$BookChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookContent _$BookContentFromJson(Map<String, dynamic> json) {
  return _BookContent.fromJson(json);
}

/// @nodoc
mixin _$BookContent {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  List<BookChapter> get chapters => throw _privateConstructorUsedError;
  String? get coverImagePath => throw _privateConstructorUsedError;

  /// Serializes this BookContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookContentCopyWith<BookContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookContentCopyWith<$Res> {
  factory $BookContentCopyWith(
    BookContent value,
    $Res Function(BookContent) then,
  ) = _$BookContentCopyWithImpl<$Res, BookContent>;
  @useResult
  $Res call({
    String bookId,
    String title,
    String? author,
    List<BookChapter> chapters,
    String? coverImagePath,
  });
}

/// @nodoc
class _$BookContentCopyWithImpl<$Res, $Val extends BookContent>
    implements $BookContentCopyWith<$Res> {
  _$BookContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = freezed,
    Object? chapters = null,
    Object? coverImagePath = freezed,
  }) {
    return _then(
      _value.copyWith(
            bookId: null == bookId
                ? _value.bookId
                : bookId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String?,
            chapters: null == chapters
                ? _value.chapters
                : chapters // ignore: cast_nullable_to_non_nullable
                      as List<BookChapter>,
            coverImagePath: freezed == coverImagePath
                ? _value.coverImagePath
                : coverImagePath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookContentImplCopyWith<$Res>
    implements $BookContentCopyWith<$Res> {
  factory _$$BookContentImplCopyWith(
    _$BookContentImpl value,
    $Res Function(_$BookContentImpl) then,
  ) = __$$BookContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String bookId,
    String title,
    String? author,
    List<BookChapter> chapters,
    String? coverImagePath,
  });
}

/// @nodoc
class __$$BookContentImplCopyWithImpl<$Res>
    extends _$BookContentCopyWithImpl<$Res, _$BookContentImpl>
    implements _$$BookContentImplCopyWith<$Res> {
  __$$BookContentImplCopyWithImpl(
    _$BookContentImpl _value,
    $Res Function(_$BookContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = freezed,
    Object? chapters = null,
    Object? coverImagePath = freezed,
  }) {
    return _then(
      _$BookContentImpl(
        bookId: null == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String?,
        chapters: null == chapters
            ? _value._chapters
            : chapters // ignore: cast_nullable_to_non_nullable
                  as List<BookChapter>,
        coverImagePath: freezed == coverImagePath
            ? _value.coverImagePath
            : coverImagePath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookContentImpl extends _BookContent {
  const _$BookContentImpl({
    required this.bookId,
    required this.title,
    this.author,
    required final List<BookChapter> chapters,
    this.coverImagePath,
  }) : _chapters = chapters,
       super._();

  factory _$BookContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookContentImplFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String? author;
  final List<BookChapter> _chapters;
  @override
  List<BookChapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  final String? coverImagePath;

  @override
  String toString() {
    return 'BookContent(bookId: $bookId, title: $title, author: $author, chapters: $chapters, coverImagePath: $coverImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookContentImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.coverImagePath, coverImagePath) ||
                other.coverImagePath == coverImagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    bookId,
    title,
    author,
    const DeepCollectionEquality().hash(_chapters),
    coverImagePath,
  );

  /// Create a copy of BookContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookContentImplCopyWith<_$BookContentImpl> get copyWith =>
      __$$BookContentImplCopyWithImpl<_$BookContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookContentImplToJson(this);
  }
}

abstract class _BookContent extends BookContent {
  const factory _BookContent({
    required final String bookId,
    required final String title,
    final String? author,
    required final List<BookChapter> chapters,
    final String? coverImagePath,
  }) = _$BookContentImpl;
  const _BookContent._() : super._();

  factory _BookContent.fromJson(Map<String, dynamic> json) =
      _$BookContentImpl.fromJson;

  @override
  String get bookId;
  @override
  String get title;
  @override
  String? get author;
  @override
  List<BookChapter> get chapters;
  @override
  String? get coverImagePath;

  /// Create a copy of BookContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookContentImplCopyWith<_$BookContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
