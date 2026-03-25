// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookReaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookId) loadRequested,
    required TResult Function(int chapterIndex) chapterChanged,
    required TResult Function(double progress) progressUpdated,
    required TResult Function(double scrollPosition) scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookId)? loadRequested,
    TResult? Function(int chapterIndex)? chapterChanged,
    TResult? Function(double progress)? progressUpdated,
    TResult? Function(double scrollPosition)? scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookId)? loadRequested,
    TResult Function(int chapterIndex)? chapterChanged,
    TResult Function(double progress)? progressUpdated,
    TResult Function(double scrollPosition)? scrollPositionChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderLoadRequested value) loadRequested,
    required TResult Function(BookReaderChapterChanged value) chapterChanged,
    required TResult Function(BookReaderProgressUpdated value) progressUpdated,
    required TResult Function(BookReaderScrollPositionChanged value)
    scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderLoadRequested value)? loadRequested,
    TResult? Function(BookReaderChapterChanged value)? chapterChanged,
    TResult? Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult? Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderLoadRequested value)? loadRequested,
    TResult Function(BookReaderChapterChanged value)? chapterChanged,
    TResult Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReaderEventCopyWith<$Res> {
  factory $BookReaderEventCopyWith(
    BookReaderEvent value,
    $Res Function(BookReaderEvent) then,
  ) = _$BookReaderEventCopyWithImpl<$Res, BookReaderEvent>;
}

/// @nodoc
class _$BookReaderEventCopyWithImpl<$Res, $Val extends BookReaderEvent>
    implements $BookReaderEventCopyWith<$Res> {
  _$BookReaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookReaderLoadRequestedImplCopyWith<$Res> {
  factory _$$BookReaderLoadRequestedImplCopyWith(
    _$BookReaderLoadRequestedImpl value,
    $Res Function(_$BookReaderLoadRequestedImpl) then,
  ) = __$$BookReaderLoadRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$BookReaderLoadRequestedImplCopyWithImpl<$Res>
    extends _$BookReaderEventCopyWithImpl<$Res, _$BookReaderLoadRequestedImpl>
    implements _$$BookReaderLoadRequestedImplCopyWith<$Res> {
  __$$BookReaderLoadRequestedImplCopyWithImpl(
    _$BookReaderLoadRequestedImpl _value,
    $Res Function(_$BookReaderLoadRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookId = null}) {
    return _then(
      _$BookReaderLoadRequestedImpl(
        bookId: null == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderLoadRequestedImpl implements BookReaderLoadRequested {
  const _$BookReaderLoadRequestedImpl({required this.bookId});

  @override
  final String bookId;

  @override
  String toString() {
    return 'BookReaderEvent.loadRequested(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderLoadRequestedImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderLoadRequestedImplCopyWith<_$BookReaderLoadRequestedImpl>
  get copyWith =>
      __$$BookReaderLoadRequestedImplCopyWithImpl<
        _$BookReaderLoadRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookId) loadRequested,
    required TResult Function(int chapterIndex) chapterChanged,
    required TResult Function(double progress) progressUpdated,
    required TResult Function(double scrollPosition) scrollPositionChanged,
  }) {
    return loadRequested(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookId)? loadRequested,
    TResult? Function(int chapterIndex)? chapterChanged,
    TResult? Function(double progress)? progressUpdated,
    TResult? Function(double scrollPosition)? scrollPositionChanged,
  }) {
    return loadRequested?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookId)? loadRequested,
    TResult Function(int chapterIndex)? chapterChanged,
    TResult Function(double progress)? progressUpdated,
    TResult Function(double scrollPosition)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderLoadRequested value) loadRequested,
    required TResult Function(BookReaderChapterChanged value) chapterChanged,
    required TResult Function(BookReaderProgressUpdated value) progressUpdated,
    required TResult Function(BookReaderScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderLoadRequested value)? loadRequested,
    TResult? Function(BookReaderChapterChanged value)? chapterChanged,
    TResult? Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult? Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderLoadRequested value)? loadRequested,
    TResult Function(BookReaderChapterChanged value)? chapterChanged,
    TResult Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class BookReaderLoadRequested implements BookReaderEvent {
  const factory BookReaderLoadRequested({required final String bookId}) =
      _$BookReaderLoadRequestedImpl;

  String get bookId;

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderLoadRequestedImplCopyWith<_$BookReaderLoadRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookReaderChapterChangedImplCopyWith<$Res> {
  factory _$$BookReaderChapterChangedImplCopyWith(
    _$BookReaderChapterChangedImpl value,
    $Res Function(_$BookReaderChapterChangedImpl) then,
  ) = __$$BookReaderChapterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chapterIndex});
}

/// @nodoc
class __$$BookReaderChapterChangedImplCopyWithImpl<$Res>
    extends _$BookReaderEventCopyWithImpl<$Res, _$BookReaderChapterChangedImpl>
    implements _$$BookReaderChapterChangedImplCopyWith<$Res> {
  __$$BookReaderChapterChangedImplCopyWithImpl(
    _$BookReaderChapterChangedImpl _value,
    $Res Function(_$BookReaderChapterChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chapterIndex = null}) {
    return _then(
      _$BookReaderChapterChangedImpl(
        chapterIndex: null == chapterIndex
            ? _value.chapterIndex
            : chapterIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderChapterChangedImpl implements BookReaderChapterChanged {
  const _$BookReaderChapterChangedImpl({required this.chapterIndex});

  @override
  final int chapterIndex;

  @override
  String toString() {
    return 'BookReaderEvent.chapterChanged(chapterIndex: $chapterIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderChapterChangedImpl &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapterIndex);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderChapterChangedImplCopyWith<_$BookReaderChapterChangedImpl>
  get copyWith =>
      __$$BookReaderChapterChangedImplCopyWithImpl<
        _$BookReaderChapterChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookId) loadRequested,
    required TResult Function(int chapterIndex) chapterChanged,
    required TResult Function(double progress) progressUpdated,
    required TResult Function(double scrollPosition) scrollPositionChanged,
  }) {
    return chapterChanged(chapterIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookId)? loadRequested,
    TResult? Function(int chapterIndex)? chapterChanged,
    TResult? Function(double progress)? progressUpdated,
    TResult? Function(double scrollPosition)? scrollPositionChanged,
  }) {
    return chapterChanged?.call(chapterIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookId)? loadRequested,
    TResult Function(int chapterIndex)? chapterChanged,
    TResult Function(double progress)? progressUpdated,
    TResult Function(double scrollPosition)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (chapterChanged != null) {
      return chapterChanged(chapterIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderLoadRequested value) loadRequested,
    required TResult Function(BookReaderChapterChanged value) chapterChanged,
    required TResult Function(BookReaderProgressUpdated value) progressUpdated,
    required TResult Function(BookReaderScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return chapterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderLoadRequested value)? loadRequested,
    TResult? Function(BookReaderChapterChanged value)? chapterChanged,
    TResult? Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult? Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
  }) {
    return chapterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderLoadRequested value)? loadRequested,
    TResult Function(BookReaderChapterChanged value)? chapterChanged,
    TResult Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (chapterChanged != null) {
      return chapterChanged(this);
    }
    return orElse();
  }
}

abstract class BookReaderChapterChanged implements BookReaderEvent {
  const factory BookReaderChapterChanged({required final int chapterIndex}) =
      _$BookReaderChapterChangedImpl;

  int get chapterIndex;

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderChapterChangedImplCopyWith<_$BookReaderChapterChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookReaderProgressUpdatedImplCopyWith<$Res> {
  factory _$$BookReaderProgressUpdatedImplCopyWith(
    _$BookReaderProgressUpdatedImpl value,
    $Res Function(_$BookReaderProgressUpdatedImpl) then,
  ) = __$$BookReaderProgressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$BookReaderProgressUpdatedImplCopyWithImpl<$Res>
    extends _$BookReaderEventCopyWithImpl<$Res, _$BookReaderProgressUpdatedImpl>
    implements _$$BookReaderProgressUpdatedImplCopyWith<$Res> {
  __$$BookReaderProgressUpdatedImplCopyWithImpl(
    _$BookReaderProgressUpdatedImpl _value,
    $Res Function(_$BookReaderProgressUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null}) {
    return _then(
      _$BookReaderProgressUpdatedImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderProgressUpdatedImpl implements BookReaderProgressUpdated {
  const _$BookReaderProgressUpdatedImpl({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'BookReaderEvent.progressUpdated(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderProgressUpdatedImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderProgressUpdatedImplCopyWith<_$BookReaderProgressUpdatedImpl>
  get copyWith =>
      __$$BookReaderProgressUpdatedImplCopyWithImpl<
        _$BookReaderProgressUpdatedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookId) loadRequested,
    required TResult Function(int chapterIndex) chapterChanged,
    required TResult Function(double progress) progressUpdated,
    required TResult Function(double scrollPosition) scrollPositionChanged,
  }) {
    return progressUpdated(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookId)? loadRequested,
    TResult? Function(int chapterIndex)? chapterChanged,
    TResult? Function(double progress)? progressUpdated,
    TResult? Function(double scrollPosition)? scrollPositionChanged,
  }) {
    return progressUpdated?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookId)? loadRequested,
    TResult Function(int chapterIndex)? chapterChanged,
    TResult Function(double progress)? progressUpdated,
    TResult Function(double scrollPosition)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (progressUpdated != null) {
      return progressUpdated(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderLoadRequested value) loadRequested,
    required TResult Function(BookReaderChapterChanged value) chapterChanged,
    required TResult Function(BookReaderProgressUpdated value) progressUpdated,
    required TResult Function(BookReaderScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return progressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderLoadRequested value)? loadRequested,
    TResult? Function(BookReaderChapterChanged value)? chapterChanged,
    TResult? Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult? Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
  }) {
    return progressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderLoadRequested value)? loadRequested,
    TResult Function(BookReaderChapterChanged value)? chapterChanged,
    TResult Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (progressUpdated != null) {
      return progressUpdated(this);
    }
    return orElse();
  }
}

abstract class BookReaderProgressUpdated implements BookReaderEvent {
  const factory BookReaderProgressUpdated({required final double progress}) =
      _$BookReaderProgressUpdatedImpl;

  double get progress;

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderProgressUpdatedImplCopyWith<_$BookReaderProgressUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookReaderScrollPositionChangedImplCopyWith<$Res> {
  factory _$$BookReaderScrollPositionChangedImplCopyWith(
    _$BookReaderScrollPositionChangedImpl value,
    $Res Function(_$BookReaderScrollPositionChangedImpl) then,
  ) = __$$BookReaderScrollPositionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double scrollPosition});
}

/// @nodoc
class __$$BookReaderScrollPositionChangedImplCopyWithImpl<$Res>
    extends
        _$BookReaderEventCopyWithImpl<
          $Res,
          _$BookReaderScrollPositionChangedImpl
        >
    implements _$$BookReaderScrollPositionChangedImplCopyWith<$Res> {
  __$$BookReaderScrollPositionChangedImplCopyWithImpl(
    _$BookReaderScrollPositionChangedImpl _value,
    $Res Function(_$BookReaderScrollPositionChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? scrollPosition = null}) {
    return _then(
      _$BookReaderScrollPositionChangedImpl(
        scrollPosition: null == scrollPosition
            ? _value.scrollPosition
            : scrollPosition // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderScrollPositionChangedImpl
    implements BookReaderScrollPositionChanged {
  const _$BookReaderScrollPositionChangedImpl({required this.scrollPosition});

  @override
  final double scrollPosition;

  @override
  String toString() {
    return 'BookReaderEvent.scrollPositionChanged(scrollPosition: $scrollPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderScrollPositionChangedImpl &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPosition);

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderScrollPositionChangedImplCopyWith<
    _$BookReaderScrollPositionChangedImpl
  >
  get copyWith =>
      __$$BookReaderScrollPositionChangedImplCopyWithImpl<
        _$BookReaderScrollPositionChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookId) loadRequested,
    required TResult Function(int chapterIndex) chapterChanged,
    required TResult Function(double progress) progressUpdated,
    required TResult Function(double scrollPosition) scrollPositionChanged,
  }) {
    return scrollPositionChanged(scrollPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookId)? loadRequested,
    TResult? Function(int chapterIndex)? chapterChanged,
    TResult? Function(double progress)? progressUpdated,
    TResult? Function(double scrollPosition)? scrollPositionChanged,
  }) {
    return scrollPositionChanged?.call(scrollPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookId)? loadRequested,
    TResult Function(int chapterIndex)? chapterChanged,
    TResult Function(double progress)? progressUpdated,
    TResult Function(double scrollPosition)? scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (scrollPositionChanged != null) {
      return scrollPositionChanged(scrollPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderLoadRequested value) loadRequested,
    required TResult Function(BookReaderChapterChanged value) chapterChanged,
    required TResult Function(BookReaderProgressUpdated value) progressUpdated,
    required TResult Function(BookReaderScrollPositionChanged value)
    scrollPositionChanged,
  }) {
    return scrollPositionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderLoadRequested value)? loadRequested,
    TResult? Function(BookReaderChapterChanged value)? chapterChanged,
    TResult? Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult? Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
  }) {
    return scrollPositionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderLoadRequested value)? loadRequested,
    TResult Function(BookReaderChapterChanged value)? chapterChanged,
    TResult Function(BookReaderProgressUpdated value)? progressUpdated,
    TResult Function(BookReaderScrollPositionChanged value)?
    scrollPositionChanged,
    required TResult orElse(),
  }) {
    if (scrollPositionChanged != null) {
      return scrollPositionChanged(this);
    }
    return orElse();
  }
}

abstract class BookReaderScrollPositionChanged implements BookReaderEvent {
  const factory BookReaderScrollPositionChanged({
    required final double scrollPosition,
  }) = _$BookReaderScrollPositionChangedImpl;

  double get scrollPosition;

  /// Create a copy of BookReaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderScrollPositionChangedImplCopyWith<
    _$BookReaderScrollPositionChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookReaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Book book,
      BookContent content,
      int currentChapterIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderInitial value) initial,
    required TResult Function(BookReaderLoading value) loading,
    required TResult Function(BookReaderLoaded value) loaded,
    required TResult Function(BookReaderError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderInitial value)? initial,
    TResult? Function(BookReaderLoading value)? loading,
    TResult? Function(BookReaderLoaded value)? loaded,
    TResult? Function(BookReaderError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderInitial value)? initial,
    TResult Function(BookReaderLoading value)? loading,
    TResult Function(BookReaderLoaded value)? loaded,
    TResult Function(BookReaderError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReaderStateCopyWith<$Res> {
  factory $BookReaderStateCopyWith(
    BookReaderState value,
    $Res Function(BookReaderState) then,
  ) = _$BookReaderStateCopyWithImpl<$Res, BookReaderState>;
}

/// @nodoc
class _$BookReaderStateCopyWithImpl<$Res, $Val extends BookReaderState>
    implements $BookReaderStateCopyWith<$Res> {
  _$BookReaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookReaderInitialImplCopyWith<$Res> {
  factory _$$BookReaderInitialImplCopyWith(
    _$BookReaderInitialImpl value,
    $Res Function(_$BookReaderInitialImpl) then,
  ) = __$$BookReaderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookReaderInitialImplCopyWithImpl<$Res>
    extends _$BookReaderStateCopyWithImpl<$Res, _$BookReaderInitialImpl>
    implements _$$BookReaderInitialImplCopyWith<$Res> {
  __$$BookReaderInitialImplCopyWithImpl(
    _$BookReaderInitialImpl _value,
    $Res Function(_$BookReaderInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookReaderInitialImpl implements BookReaderInitial {
  const _$BookReaderInitialImpl();

  @override
  String toString() {
    return 'BookReaderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookReaderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Book book,
      BookContent content,
      int currentChapterIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderInitial value) initial,
    required TResult Function(BookReaderLoading value) loading,
    required TResult Function(BookReaderLoaded value) loaded,
    required TResult Function(BookReaderError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderInitial value)? initial,
    TResult? Function(BookReaderLoading value)? loading,
    TResult? Function(BookReaderLoaded value)? loaded,
    TResult? Function(BookReaderError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderInitial value)? initial,
    TResult Function(BookReaderLoading value)? loading,
    TResult Function(BookReaderLoaded value)? loaded,
    TResult Function(BookReaderError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BookReaderInitial implements BookReaderState {
  const factory BookReaderInitial() = _$BookReaderInitialImpl;
}

/// @nodoc
abstract class _$$BookReaderLoadingImplCopyWith<$Res> {
  factory _$$BookReaderLoadingImplCopyWith(
    _$BookReaderLoadingImpl value,
    $Res Function(_$BookReaderLoadingImpl) then,
  ) = __$$BookReaderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookReaderLoadingImplCopyWithImpl<$Res>
    extends _$BookReaderStateCopyWithImpl<$Res, _$BookReaderLoadingImpl>
    implements _$$BookReaderLoadingImplCopyWith<$Res> {
  __$$BookReaderLoadingImplCopyWithImpl(
    _$BookReaderLoadingImpl _value,
    $Res Function(_$BookReaderLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookReaderLoadingImpl implements BookReaderLoading {
  const _$BookReaderLoadingImpl();

  @override
  String toString() {
    return 'BookReaderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookReaderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Book book,
      BookContent content,
      int currentChapterIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderInitial value) initial,
    required TResult Function(BookReaderLoading value) loading,
    required TResult Function(BookReaderLoaded value) loaded,
    required TResult Function(BookReaderError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderInitial value)? initial,
    TResult? Function(BookReaderLoading value)? loading,
    TResult? Function(BookReaderLoaded value)? loaded,
    TResult? Function(BookReaderError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderInitial value)? initial,
    TResult Function(BookReaderLoading value)? loading,
    TResult Function(BookReaderLoaded value)? loaded,
    TResult Function(BookReaderError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookReaderLoading implements BookReaderState {
  const factory BookReaderLoading() = _$BookReaderLoadingImpl;
}

/// @nodoc
abstract class _$$BookReaderLoadedImplCopyWith<$Res> {
  factory _$$BookReaderLoadedImplCopyWith(
    _$BookReaderLoadedImpl value,
    $Res Function(_$BookReaderLoadedImpl) then,
  ) = __$$BookReaderLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book, BookContent content, int currentChapterIndex});
}

/// @nodoc
class __$$BookReaderLoadedImplCopyWithImpl<$Res>
    extends _$BookReaderStateCopyWithImpl<$Res, _$BookReaderLoadedImpl>
    implements _$$BookReaderLoadedImplCopyWith<$Res> {
  __$$BookReaderLoadedImplCopyWithImpl(
    _$BookReaderLoadedImpl _value,
    $Res Function(_$BookReaderLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? content = null,
    Object? currentChapterIndex = null,
  }) {
    return _then(
      _$BookReaderLoadedImpl(
        book: null == book
            ? _value.book
            : book // ignore: cast_nullable_to_non_nullable
                  as Book,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as BookContent,
        currentChapterIndex: null == currentChapterIndex
            ? _value.currentChapterIndex
            : currentChapterIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderLoadedImpl implements BookReaderLoaded {
  const _$BookReaderLoadedImpl({
    required this.book,
    required this.content,
    required this.currentChapterIndex,
  });

  @override
  final Book book;
  @override
  final BookContent content;
  @override
  final int currentChapterIndex;

  @override
  String toString() {
    return 'BookReaderState.loaded(book: $book, content: $content, currentChapterIndex: $currentChapterIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderLoadedImpl &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.currentChapterIndex, currentChapterIndex) ||
                other.currentChapterIndex == currentChapterIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, book, content, currentChapterIndex);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderLoadedImplCopyWith<_$BookReaderLoadedImpl> get copyWith =>
      __$$BookReaderLoadedImplCopyWithImpl<_$BookReaderLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Book book,
      BookContent content,
      int currentChapterIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(book, content, currentChapterIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(book, content, currentChapterIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(book, content, currentChapterIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderInitial value) initial,
    required TResult Function(BookReaderLoading value) loading,
    required TResult Function(BookReaderLoaded value) loaded,
    required TResult Function(BookReaderError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderInitial value)? initial,
    TResult? Function(BookReaderLoading value)? loading,
    TResult? Function(BookReaderLoaded value)? loaded,
    TResult? Function(BookReaderError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderInitial value)? initial,
    TResult Function(BookReaderLoading value)? loading,
    TResult Function(BookReaderLoaded value)? loaded,
    TResult Function(BookReaderError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BookReaderLoaded implements BookReaderState {
  const factory BookReaderLoaded({
    required final Book book,
    required final BookContent content,
    required final int currentChapterIndex,
  }) = _$BookReaderLoadedImpl;

  Book get book;
  BookContent get content;
  int get currentChapterIndex;

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderLoadedImplCopyWith<_$BookReaderLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookReaderErrorImplCopyWith<$Res> {
  factory _$$BookReaderErrorImplCopyWith(
    _$BookReaderErrorImpl value,
    $Res Function(_$BookReaderErrorImpl) then,
  ) = __$$BookReaderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookReaderErrorImplCopyWithImpl<$Res>
    extends _$BookReaderStateCopyWithImpl<$Res, _$BookReaderErrorImpl>
    implements _$$BookReaderErrorImplCopyWith<$Res> {
  __$$BookReaderErrorImplCopyWithImpl(
    _$BookReaderErrorImpl _value,
    $Res Function(_$BookReaderErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BookReaderErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookReaderErrorImpl implements BookReaderError {
  const _$BookReaderErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookReaderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReaderErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReaderErrorImplCopyWith<_$BookReaderErrorImpl> get copyWith =>
      __$$BookReaderErrorImplCopyWithImpl<_$BookReaderErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      Book book,
      BookContent content,
      int currentChapterIndex,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Book book, BookContent content, int currentChapterIndex)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookReaderInitial value) initial,
    required TResult Function(BookReaderLoading value) loading,
    required TResult Function(BookReaderLoaded value) loaded,
    required TResult Function(BookReaderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookReaderInitial value)? initial,
    TResult? Function(BookReaderLoading value)? loading,
    TResult? Function(BookReaderLoaded value)? loaded,
    TResult? Function(BookReaderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookReaderInitial value)? initial,
    TResult Function(BookReaderLoading value)? loading,
    TResult Function(BookReaderLoaded value)? loaded,
    TResult Function(BookReaderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookReaderError implements BookReaderState {
  const factory BookReaderError({required final String message}) =
      _$BookReaderErrorImpl;

  String get message;

  /// Create a copy of BookReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReaderErrorImplCopyWith<_$BookReaderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
