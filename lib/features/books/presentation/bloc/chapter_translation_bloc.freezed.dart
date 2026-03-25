// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_translation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChapterTranslationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )
    started,
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )
    retryFailed,
    required TResult Function() skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult? Function()? skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult Function()? skipped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationStarted value) started,
    required TResult Function(ChapterTranslationRetryFailed value) retryFailed,
    required TResult Function(ChapterTranslationSkipped value) skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationStarted value)? started,
    TResult? Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult? Function(ChapterTranslationSkipped value)? skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationStarted value)? started,
    TResult Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult Function(ChapterTranslationSkipped value)? skipped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterTranslationEventCopyWith<$Res> {
  factory $ChapterTranslationEventCopyWith(
    ChapterTranslationEvent value,
    $Res Function(ChapterTranslationEvent) then,
  ) = _$ChapterTranslationEventCopyWithImpl<$Res, ChapterTranslationEvent>;
}

/// @nodoc
class _$ChapterTranslationEventCopyWithImpl<
  $Res,
  $Val extends ChapterTranslationEvent
>
    implements $ChapterTranslationEventCopyWith<$Res> {
  _$ChapterTranslationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChapterTranslationStartedImplCopyWith<$Res> {
  factory _$$ChapterTranslationStartedImplCopyWith(
    _$ChapterTranslationStartedImpl value,
    $Res Function(_$ChapterTranslationStartedImpl) then,
  ) = __$$ChapterTranslationStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String bookId,
    int chapterIndex,
    String chapterContent,
    TranslationDirection direction,
  });
}

/// @nodoc
class __$$ChapterTranslationStartedImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationEventCopyWithImpl<
          $Res,
          _$ChapterTranslationStartedImpl
        >
    implements _$$ChapterTranslationStartedImplCopyWith<$Res> {
  __$$ChapterTranslationStartedImplCopyWithImpl(
    _$ChapterTranslationStartedImpl _value,
    $Res Function(_$ChapterTranslationStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? chapterIndex = null,
    Object? chapterContent = null,
    Object? direction = null,
  }) {
    return _then(
      _$ChapterTranslationStartedImpl(
        bookId: null == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String,
        chapterIndex: null == chapterIndex
            ? _value.chapterIndex
            : chapterIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        chapterContent: null == chapterContent
            ? _value.chapterContent
            : chapterContent // ignore: cast_nullable_to_non_nullable
                  as String,
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as TranslationDirection,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationStartedImpl implements ChapterTranslationStarted {
  const _$ChapterTranslationStartedImpl({
    required this.bookId,
    required this.chapterIndex,
    required this.chapterContent,
    required this.direction,
  });

  @override
  final String bookId;
  @override
  final int chapterIndex;
  @override
  final String chapterContent;
  @override
  final TranslationDirection direction;

  @override
  String toString() {
    return 'ChapterTranslationEvent.started(bookId: $bookId, chapterIndex: $chapterIndex, chapterContent: $chapterContent, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationStartedImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex) &&
            (identical(other.chapterContent, chapterContent) ||
                other.chapterContent == chapterContent) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, chapterIndex, chapterContent, direction);

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationStartedImplCopyWith<_$ChapterTranslationStartedImpl>
  get copyWith =>
      __$$ChapterTranslationStartedImplCopyWithImpl<
        _$ChapterTranslationStartedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )
    started,
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )
    retryFailed,
    required TResult Function() skipped,
  }) {
    return started(bookId, chapterIndex, chapterContent, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult? Function()? skipped,
  }) {
    return started?.call(bookId, chapterIndex, chapterContent, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(bookId, chapterIndex, chapterContent, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationStarted value) started,
    required TResult Function(ChapterTranslationRetryFailed value) retryFailed,
    required TResult Function(ChapterTranslationSkipped value) skipped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationStarted value)? started,
    TResult? Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult? Function(ChapterTranslationSkipped value)? skipped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationStarted value)? started,
    TResult Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult Function(ChapterTranslationSkipped value)? skipped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationStarted implements ChapterTranslationEvent {
  const factory ChapterTranslationStarted({
    required final String bookId,
    required final int chapterIndex,
    required final String chapterContent,
    required final TranslationDirection direction,
  }) = _$ChapterTranslationStartedImpl;

  String get bookId;
  int get chapterIndex;
  String get chapterContent;
  TranslationDirection get direction;

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationStartedImplCopyWith<_$ChapterTranslationStartedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationRetryFailedImplCopyWith<$Res> {
  factory _$$ChapterTranslationRetryFailedImplCopyWith(
    _$ChapterTranslationRetryFailedImpl value,
    $Res Function(_$ChapterTranslationRetryFailedImpl) then,
  ) = __$$ChapterTranslationRetryFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String bookId,
    int chapterIndex,
    String chapterContent,
    Set<int> failedIndices,
    TranslationDirection direction,
  });
}

/// @nodoc
class __$$ChapterTranslationRetryFailedImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationEventCopyWithImpl<
          $Res,
          _$ChapterTranslationRetryFailedImpl
        >
    implements _$$ChapterTranslationRetryFailedImplCopyWith<$Res> {
  __$$ChapterTranslationRetryFailedImplCopyWithImpl(
    _$ChapterTranslationRetryFailedImpl _value,
    $Res Function(_$ChapterTranslationRetryFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? chapterIndex = null,
    Object? chapterContent = null,
    Object? failedIndices = null,
    Object? direction = null,
  }) {
    return _then(
      _$ChapterTranslationRetryFailedImpl(
        bookId: null == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String,
        chapterIndex: null == chapterIndex
            ? _value.chapterIndex
            : chapterIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        chapterContent: null == chapterContent
            ? _value.chapterContent
            : chapterContent // ignore: cast_nullable_to_non_nullable
                  as String,
        failedIndices: null == failedIndices
            ? _value._failedIndices
            : failedIndices // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as TranslationDirection,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationRetryFailedImpl
    implements ChapterTranslationRetryFailed {
  const _$ChapterTranslationRetryFailedImpl({
    required this.bookId,
    required this.chapterIndex,
    required this.chapterContent,
    required final Set<int> failedIndices,
    required this.direction,
  }) : _failedIndices = failedIndices;

  @override
  final String bookId;
  @override
  final int chapterIndex;
  @override
  final String chapterContent;
  final Set<int> _failedIndices;
  @override
  Set<int> get failedIndices {
    if (_failedIndices is EqualUnmodifiableSetView) return _failedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_failedIndices);
  }

  @override
  final TranslationDirection direction;

  @override
  String toString() {
    return 'ChapterTranslationEvent.retryFailed(bookId: $bookId, chapterIndex: $chapterIndex, chapterContent: $chapterContent, failedIndices: $failedIndices, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationRetryFailedImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex) &&
            (identical(other.chapterContent, chapterContent) ||
                other.chapterContent == chapterContent) &&
            const DeepCollectionEquality().equals(
              other._failedIndices,
              _failedIndices,
            ) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    bookId,
    chapterIndex,
    chapterContent,
    const DeepCollectionEquality().hash(_failedIndices),
    direction,
  );

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationRetryFailedImplCopyWith<
    _$ChapterTranslationRetryFailedImpl
  >
  get copyWith =>
      __$$ChapterTranslationRetryFailedImplCopyWithImpl<
        _$ChapterTranslationRetryFailedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )
    started,
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )
    retryFailed,
    required TResult Function() skipped,
  }) {
    return retryFailed(
      bookId,
      chapterIndex,
      chapterContent,
      failedIndices,
      direction,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult? Function()? skipped,
  }) {
    return retryFailed?.call(
      bookId,
      chapterIndex,
      chapterContent,
      failedIndices,
      direction,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (retryFailed != null) {
      return retryFailed(
        bookId,
        chapterIndex,
        chapterContent,
        failedIndices,
        direction,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationStarted value) started,
    required TResult Function(ChapterTranslationRetryFailed value) retryFailed,
    required TResult Function(ChapterTranslationSkipped value) skipped,
  }) {
    return retryFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationStarted value)? started,
    TResult? Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult? Function(ChapterTranslationSkipped value)? skipped,
  }) {
    return retryFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationStarted value)? started,
    TResult Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult Function(ChapterTranslationSkipped value)? skipped,
    required TResult orElse(),
  }) {
    if (retryFailed != null) {
      return retryFailed(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationRetryFailed
    implements ChapterTranslationEvent {
  const factory ChapterTranslationRetryFailed({
    required final String bookId,
    required final int chapterIndex,
    required final String chapterContent,
    required final Set<int> failedIndices,
    required final TranslationDirection direction,
  }) = _$ChapterTranslationRetryFailedImpl;

  String get bookId;
  int get chapterIndex;
  String get chapterContent;
  Set<int> get failedIndices;
  TranslationDirection get direction;

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationRetryFailedImplCopyWith<
    _$ChapterTranslationRetryFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationSkippedImplCopyWith<$Res> {
  factory _$$ChapterTranslationSkippedImplCopyWith(
    _$ChapterTranslationSkippedImpl value,
    $Res Function(_$ChapterTranslationSkippedImpl) then,
  ) = __$$ChapterTranslationSkippedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChapterTranslationSkippedImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationEventCopyWithImpl<
          $Res,
          _$ChapterTranslationSkippedImpl
        >
    implements _$$ChapterTranslationSkippedImplCopyWith<$Res> {
  __$$ChapterTranslationSkippedImplCopyWithImpl(
    _$ChapterTranslationSkippedImpl _value,
    $Res Function(_$ChapterTranslationSkippedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChapterTranslationSkippedImpl implements ChapterTranslationSkipped {
  const _$ChapterTranslationSkippedImpl();

  @override
  String toString() {
    return 'ChapterTranslationEvent.skipped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationSkippedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )
    started,
    required TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )
    retryFailed,
    required TResult Function() skipped,
  }) {
    return skipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult? Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult? Function()? skipped,
  }) {
    return skipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      TranslationDirection direction,
    )?
    started,
    TResult Function(
      String bookId,
      int chapterIndex,
      String chapterContent,
      Set<int> failedIndices,
      TranslationDirection direction,
    )?
    retryFailed,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationStarted value) started,
    required TResult Function(ChapterTranslationRetryFailed value) retryFailed,
    required TResult Function(ChapterTranslationSkipped value) skipped,
  }) {
    return skipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationStarted value)? started,
    TResult? Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult? Function(ChapterTranslationSkipped value)? skipped,
  }) {
    return skipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationStarted value)? started,
    TResult Function(ChapterTranslationRetryFailed value)? retryFailed,
    TResult Function(ChapterTranslationSkipped value)? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationSkipped implements ChapterTranslationEvent {
  const factory ChapterTranslationSkipped() = _$ChapterTranslationSkippedImpl;
}

/// @nodoc
mixin _$ChapterTranslationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterTranslationStateCopyWith<$Res> {
  factory $ChapterTranslationStateCopyWith(
    ChapterTranslationState value,
    $Res Function(ChapterTranslationState) then,
  ) = _$ChapterTranslationStateCopyWithImpl<$Res, ChapterTranslationState>;
}

/// @nodoc
class _$ChapterTranslationStateCopyWithImpl<
  $Res,
  $Val extends ChapterTranslationState
>
    implements $ChapterTranslationStateCopyWith<$Res> {
  _$ChapterTranslationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChapterTranslationInitialImplCopyWith<$Res> {
  factory _$$ChapterTranslationInitialImplCopyWith(
    _$ChapterTranslationInitialImpl value,
    $Res Function(_$ChapterTranslationInitialImpl) then,
  ) = __$$ChapterTranslationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChapterTranslationInitialImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationInitialImpl
        >
    implements _$$ChapterTranslationInitialImplCopyWith<$Res> {
  __$$ChapterTranslationInitialImplCopyWithImpl(
    _$ChapterTranslationInitialImpl _value,
    $Res Function(_$ChapterTranslationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChapterTranslationInitialImpl implements ChapterTranslationInitial {
  const _$ChapterTranslationInitialImpl();

  @override
  String toString() {
    return 'ChapterTranslationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
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
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationInitial implements ChapterTranslationState {
  const factory ChapterTranslationInitial() = _$ChapterTranslationInitialImpl;
}

/// @nodoc
abstract class _$$ChapterTranslationLoadingImplCopyWith<$Res> {
  factory _$$ChapterTranslationLoadingImplCopyWith(
    _$ChapterTranslationLoadingImpl value,
    $Res Function(_$ChapterTranslationLoadingImpl) then,
  ) = __$$ChapterTranslationLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress, int completedParagraphs, int totalParagraphs});
}

/// @nodoc
class __$$ChapterTranslationLoadingImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationLoadingImpl
        >
    implements _$$ChapterTranslationLoadingImplCopyWith<$Res> {
  __$$ChapterTranslationLoadingImplCopyWithImpl(
    _$ChapterTranslationLoadingImpl _value,
    $Res Function(_$ChapterTranslationLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? completedParagraphs = null,
    Object? totalParagraphs = null,
  }) {
    return _then(
      _$ChapterTranslationLoadingImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
        completedParagraphs: null == completedParagraphs
            ? _value.completedParagraphs
            : completedParagraphs // ignore: cast_nullable_to_non_nullable
                  as int,
        totalParagraphs: null == totalParagraphs
            ? _value.totalParagraphs
            : totalParagraphs // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationLoadingImpl implements ChapterTranslationLoading {
  const _$ChapterTranslationLoadingImpl({
    this.progress = 0.0,
    this.completedParagraphs = 0,
    this.totalParagraphs = 0,
  });

  @override
  @JsonKey()
  final double progress;
  @override
  @JsonKey()
  final int completedParagraphs;
  @override
  @JsonKey()
  final int totalParagraphs;

  @override
  String toString() {
    return 'ChapterTranslationState.loading(progress: $progress, completedParagraphs: $completedParagraphs, totalParagraphs: $totalParagraphs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationLoadingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.completedParagraphs, completedParagraphs) ||
                other.completedParagraphs == completedParagraphs) &&
            (identical(other.totalParagraphs, totalParagraphs) ||
                other.totalParagraphs == totalParagraphs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, progress, completedParagraphs, totalParagraphs);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationLoadingImplCopyWith<_$ChapterTranslationLoadingImpl>
  get copyWith =>
      __$$ChapterTranslationLoadingImplCopyWithImpl<
        _$ChapterTranslationLoadingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return loading(progress, completedParagraphs, totalParagraphs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return loading?.call(progress, completedParagraphs, totalParagraphs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(progress, completedParagraphs, totalParagraphs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationLoading implements ChapterTranslationState {
  const factory ChapterTranslationLoading({
    final double progress,
    final int completedParagraphs,
    final int totalParagraphs,
  }) = _$ChapterTranslationLoadingImpl;

  double get progress;
  int get completedParagraphs;
  int get totalParagraphs;

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationLoadingImplCopyWith<_$ChapterTranslationLoadingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationPartialImplCopyWith<$Res> {
  factory _$$ChapterTranslationPartialImplCopyWith(
    _$ChapterTranslationPartialImpl value,
    $Res Function(_$ChapterTranslationPartialImpl) then,
  ) = __$$ChapterTranslationPartialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    Map<int, String> translations,
    Set<int> failedIndices,
    double progress,
    int totalParagraphs,
    bool isLoading,
  });
}

/// @nodoc
class __$$ChapterTranslationPartialImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationPartialImpl
        >
    implements _$$ChapterTranslationPartialImplCopyWith<$Res> {
  __$$ChapterTranslationPartialImplCopyWithImpl(
    _$ChapterTranslationPartialImpl _value,
    $Res Function(_$ChapterTranslationPartialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
    Object? failedIndices = null,
    Object? progress = null,
    Object? totalParagraphs = null,
    Object? isLoading = null,
  }) {
    return _then(
      _$ChapterTranslationPartialImpl(
        translations: null == translations
            ? _value._translations
            : translations // ignore: cast_nullable_to_non_nullable
                  as Map<int, String>,
        failedIndices: null == failedIndices
            ? _value._failedIndices
            : failedIndices // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
        totalParagraphs: null == totalParagraphs
            ? _value.totalParagraphs
            : totalParagraphs // ignore: cast_nullable_to_non_nullable
                  as int,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationPartialImpl implements ChapterTranslationPartial {
  const _$ChapterTranslationPartialImpl({
    required final Map<int, String> translations,
    required final Set<int> failedIndices,
    required this.progress,
    required this.totalParagraphs,
    required this.isLoading,
  }) : _translations = translations,
       _failedIndices = failedIndices;

  final Map<int, String> _translations;
  @override
  Map<int, String> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  final Set<int> _failedIndices;
  @override
  Set<int> get failedIndices {
    if (_failedIndices is EqualUnmodifiableSetView) return _failedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_failedIndices);
  }

  @override
  final double progress;
  @override
  final int totalParagraphs;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ChapterTranslationState.partial(translations: $translations, failedIndices: $failedIndices, progress: $progress, totalParagraphs: $totalParagraphs, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationPartialImpl &&
            const DeepCollectionEquality().equals(
              other._translations,
              _translations,
            ) &&
            const DeepCollectionEquality().equals(
              other._failedIndices,
              _failedIndices,
            ) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.totalParagraphs, totalParagraphs) ||
                other.totalParagraphs == totalParagraphs) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_translations),
    const DeepCollectionEquality().hash(_failedIndices),
    progress,
    totalParagraphs,
    isLoading,
  );

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationPartialImplCopyWith<_$ChapterTranslationPartialImpl>
  get copyWith =>
      __$$ChapterTranslationPartialImplCopyWithImpl<
        _$ChapterTranslationPartialImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return partial(
      translations,
      failedIndices,
      progress,
      totalParagraphs,
      isLoading,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return partial?.call(
      translations,
      failedIndices,
      progress,
      totalParagraphs,
      isLoading,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (partial != null) {
      return partial(
        translations,
        failedIndices,
        progress,
        totalParagraphs,
        isLoading,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return partial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return partial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (partial != null) {
      return partial(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationPartial implements ChapterTranslationState {
  const factory ChapterTranslationPartial({
    required final Map<int, String> translations,
    required final Set<int> failedIndices,
    required final double progress,
    required final int totalParagraphs,
    required final bool isLoading,
  }) = _$ChapterTranslationPartialImpl;

  Map<int, String> get translations;
  Set<int> get failedIndices;
  double get progress;
  int get totalParagraphs;
  bool get isLoading;

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationPartialImplCopyWith<_$ChapterTranslationPartialImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationLoadedImplCopyWith<$Res> {
  factory _$$ChapterTranslationLoadedImplCopyWith(
    _$ChapterTranslationLoadedImpl value,
    $Res Function(_$ChapterTranslationLoadedImpl) then,
  ) = __$$ChapterTranslationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, String> translations, Set<int> failedIndices});
}

/// @nodoc
class __$$ChapterTranslationLoadedImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationLoadedImpl
        >
    implements _$$ChapterTranslationLoadedImplCopyWith<$Res> {
  __$$ChapterTranslationLoadedImplCopyWithImpl(
    _$ChapterTranslationLoadedImpl _value,
    $Res Function(_$ChapterTranslationLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? translations = null, Object? failedIndices = null}) {
    return _then(
      _$ChapterTranslationLoadedImpl(
        translations: null == translations
            ? _value._translations
            : translations // ignore: cast_nullable_to_non_nullable
                  as Map<int, String>,
        failedIndices: null == failedIndices
            ? _value._failedIndices
            : failedIndices // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationLoadedImpl implements ChapterTranslationLoaded {
  const _$ChapterTranslationLoadedImpl({
    required final Map<int, String> translations,
    final Set<int> failedIndices = const {},
  }) : _translations = translations,
       _failedIndices = failedIndices;

  final Map<int, String> _translations;
  @override
  Map<int, String> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  final Set<int> _failedIndices;
  @override
  @JsonKey()
  Set<int> get failedIndices {
    if (_failedIndices is EqualUnmodifiableSetView) return _failedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_failedIndices);
  }

  @override
  String toString() {
    return 'ChapterTranslationState.loaded(translations: $translations, failedIndices: $failedIndices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._translations,
              _translations,
            ) &&
            const DeepCollectionEquality().equals(
              other._failedIndices,
              _failedIndices,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_translations),
    const DeepCollectionEquality().hash(_failedIndices),
  );

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationLoadedImplCopyWith<_$ChapterTranslationLoadedImpl>
  get copyWith =>
      __$$ChapterTranslationLoadedImplCopyWithImpl<
        _$ChapterTranslationLoadedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return loaded(translations, failedIndices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return loaded?.call(translations, failedIndices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(translations, failedIndices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationLoaded implements ChapterTranslationState {
  const factory ChapterTranslationLoaded({
    required final Map<int, String> translations,
    final Set<int> failedIndices,
  }) = _$ChapterTranslationLoadedImpl;

  Map<int, String> get translations;
  Set<int> get failedIndices;

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationLoadedImplCopyWith<_$ChapterTranslationLoadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationErrorImplCopyWith<$Res> {
  factory _$$ChapterTranslationErrorImplCopyWith(
    _$ChapterTranslationErrorImpl value,
    $Res Function(_$ChapterTranslationErrorImpl) then,
  ) = __$$ChapterTranslationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, ChapterTranslationErrorType errorType});
}

/// @nodoc
class __$$ChapterTranslationErrorImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationErrorImpl
        >
    implements _$$ChapterTranslationErrorImplCopyWith<$Res> {
  __$$ChapterTranslationErrorImplCopyWithImpl(
    _$ChapterTranslationErrorImpl _value,
    $Res Function(_$ChapterTranslationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? errorType = null}) {
    return _then(
      _$ChapterTranslationErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        errorType: null == errorType
            ? _value.errorType
            : errorType // ignore: cast_nullable_to_non_nullable
                  as ChapterTranslationErrorType,
      ),
    );
  }
}

/// @nodoc

class _$ChapterTranslationErrorImpl implements ChapterTranslationError {
  const _$ChapterTranslationErrorImpl({
    required this.message,
    required this.errorType,
  });

  @override
  final String message;
  @override
  final ChapterTranslationErrorType errorType;

  @override
  String toString() {
    return 'ChapterTranslationState.error(message: $message, errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorType);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterTranslationErrorImplCopyWith<_$ChapterTranslationErrorImpl>
  get copyWith =>
      __$$ChapterTranslationErrorImplCopyWithImpl<
        _$ChapterTranslationErrorImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return error(message, errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return error?.call(message, errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationError implements ChapterTranslationState {
  const factory ChapterTranslationError({
    required final String message,
    required final ChapterTranslationErrorType errorType,
  }) = _$ChapterTranslationErrorImpl;

  String get message;
  ChapterTranslationErrorType get errorType;

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterTranslationErrorImplCopyWith<_$ChapterTranslationErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterTranslationSkippedStateImplCopyWith<$Res> {
  factory _$$ChapterTranslationSkippedStateImplCopyWith(
    _$ChapterTranslationSkippedStateImpl value,
    $Res Function(_$ChapterTranslationSkippedStateImpl) then,
  ) = __$$ChapterTranslationSkippedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChapterTranslationSkippedStateImplCopyWithImpl<$Res>
    extends
        _$ChapterTranslationStateCopyWithImpl<
          $Res,
          _$ChapterTranslationSkippedStateImpl
        >
    implements _$$ChapterTranslationSkippedStateImplCopyWith<$Res> {
  __$$ChapterTranslationSkippedStateImplCopyWithImpl(
    _$ChapterTranslationSkippedStateImpl _value,
    $Res Function(_$ChapterTranslationSkippedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterTranslationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChapterTranslationSkippedStateImpl
    implements ChapterTranslationSkippedState {
  const _$ChapterTranslationSkippedStateImpl();

  @override
  String toString() {
    return 'ChapterTranslationState.skipped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterTranslationSkippedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )
    loading,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )
    partial,
    required TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
    )
    loaded,
    required TResult Function(
      String message,
      ChapterTranslationErrorType errorType,
    )
    error,
    required TResult Function() skipped,
  }) {
    return skipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult? Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult? Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult? Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult? Function()? skipped,
  }) {
    return skipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      double progress,
      int completedParagraphs,
      int totalParagraphs,
    )?
    loading,
    TResult Function(
      Map<int, String> translations,
      Set<int> failedIndices,
      double progress,
      int totalParagraphs,
      bool isLoading,
    )?
    partial,
    TResult Function(Map<int, String> translations, Set<int> failedIndices)?
    loaded,
    TResult Function(String message, ChapterTranslationErrorType errorType)?
    error,
    TResult Function()? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterTranslationInitial value) initial,
    required TResult Function(ChapterTranslationLoading value) loading,
    required TResult Function(ChapterTranslationPartial value) partial,
    required TResult Function(ChapterTranslationLoaded value) loaded,
    required TResult Function(ChapterTranslationError value) error,
    required TResult Function(ChapterTranslationSkippedState value) skipped,
  }) {
    return skipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChapterTranslationInitial value)? initial,
    TResult? Function(ChapterTranslationLoading value)? loading,
    TResult? Function(ChapterTranslationPartial value)? partial,
    TResult? Function(ChapterTranslationLoaded value)? loaded,
    TResult? Function(ChapterTranslationError value)? error,
    TResult? Function(ChapterTranslationSkippedState value)? skipped,
  }) {
    return skipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterTranslationInitial value)? initial,
    TResult Function(ChapterTranslationLoading value)? loading,
    TResult Function(ChapterTranslationPartial value)? partial,
    TResult Function(ChapterTranslationLoaded value)? loaded,
    TResult Function(ChapterTranslationError value)? error,
    TResult Function(ChapterTranslationSkippedState value)? skipped,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped(this);
    }
    return orElse();
  }
}

abstract class ChapterTranslationSkippedState
    implements ChapterTranslationState {
  const factory ChapterTranslationSkippedState() =
      _$ChapterTranslationSkippedStateImpl;
}
