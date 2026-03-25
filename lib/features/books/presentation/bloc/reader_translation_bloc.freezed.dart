// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reader_translation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReaderTranslationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderTranslationEventCopyWith<$Res> {
  factory $ReaderTranslationEventCopyWith(
    ReaderTranslationEvent value,
    $Res Function(ReaderTranslationEvent) then,
  ) = _$ReaderTranslationEventCopyWithImpl<$Res, ReaderTranslationEvent>;
}

/// @nodoc
class _$ReaderTranslationEventCopyWithImpl<
  $Res,
  $Val extends ReaderTranslationEvent
>
    implements $ReaderTranslationEventCopyWith<$Res> {
  _$ReaderTranslationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReaderTranslationWordTappedImplCopyWith<$Res> {
  factory _$$ReaderTranslationWordTappedImplCopyWith(
    _$ReaderTranslationWordTappedImpl value,
    $Res Function(_$ReaderTranslationWordTappedImpl) then,
  ) = __$$ReaderTranslationWordTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String word, TranslationDirection direction});
}

/// @nodoc
class __$$ReaderTranslationWordTappedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationEventCopyWithImpl<
          $Res,
          _$ReaderTranslationWordTappedImpl
        >
    implements _$$ReaderTranslationWordTappedImplCopyWith<$Res> {
  __$$ReaderTranslationWordTappedImplCopyWithImpl(
    _$ReaderTranslationWordTappedImpl _value,
    $Res Function(_$ReaderTranslationWordTappedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? word = null, Object? direction = null}) {
    return _then(
      _$ReaderTranslationWordTappedImpl(
        word: null == word
            ? _value.word
            : word // ignore: cast_nullable_to_non_nullable
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

class _$ReaderTranslationWordTappedImpl implements ReaderTranslationWordTapped {
  const _$ReaderTranslationWordTappedImpl({
    required this.word,
    required this.direction,
  });

  @override
  final String word;
  @override
  final TranslationDirection direction;

  @override
  String toString() {
    return 'ReaderTranslationEvent.wordTapped(word: $word, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationWordTappedImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, direction);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationWordTappedImplCopyWith<_$ReaderTranslationWordTappedImpl>
  get copyWith =>
      __$$ReaderTranslationWordTappedImplCopyWithImpl<
        _$ReaderTranslationWordTappedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) {
    return wordTapped(word, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) {
    return wordTapped?.call(word, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) {
    if (wordTapped != null) {
      return wordTapped(word, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) {
    return wordTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) {
    return wordTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) {
    if (wordTapped != null) {
      return wordTapped(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationWordTapped implements ReaderTranslationEvent {
  const factory ReaderTranslationWordTapped({
    required final String word,
    required final TranslationDirection direction,
  }) = _$ReaderTranslationWordTappedImpl;

  String get word;
  TranslationDirection get direction;

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationWordTappedImplCopyWith<_$ReaderTranslationWordTappedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationTextSelectedImplCopyWith<$Res> {
  factory _$$ReaderTranslationTextSelectedImplCopyWith(
    _$ReaderTranslationTextSelectedImpl value,
    $Res Function(_$ReaderTranslationTextSelectedImpl) then,
  ) = __$$ReaderTranslationTextSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, TranslationDirection direction});
}

/// @nodoc
class __$$ReaderTranslationTextSelectedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationEventCopyWithImpl<
          $Res,
          _$ReaderTranslationTextSelectedImpl
        >
    implements _$$ReaderTranslationTextSelectedImplCopyWith<$Res> {
  __$$ReaderTranslationTextSelectedImplCopyWithImpl(
    _$ReaderTranslationTextSelectedImpl _value,
    $Res Function(_$ReaderTranslationTextSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? direction = null}) {
    return _then(
      _$ReaderTranslationTextSelectedImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
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

class _$ReaderTranslationTextSelectedImpl
    implements ReaderTranslationTextSelected {
  const _$ReaderTranslationTextSelectedImpl({
    required this.text,
    required this.direction,
  });

  @override
  final String text;
  @override
  final TranslationDirection direction;

  @override
  String toString() {
    return 'ReaderTranslationEvent.textSelected(text: $text, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationTextSelectedImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, direction);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationTextSelectedImplCopyWith<
    _$ReaderTranslationTextSelectedImpl
  >
  get copyWith =>
      __$$ReaderTranslationTextSelectedImplCopyWithImpl<
        _$ReaderTranslationTextSelectedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) {
    return textSelected(text, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) {
    return textSelected?.call(text, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) {
    if (textSelected != null) {
      return textSelected(text, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) {
    return textSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) {
    return textSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) {
    if (textSelected != null) {
      return textSelected(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationTextSelected implements ReaderTranslationEvent {
  const factory ReaderTranslationTextSelected({
    required final String text,
    required final TranslationDirection direction,
  }) = _$ReaderTranslationTextSelectedImpl;

  String get text;
  TranslationDirection get direction;

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationTextSelectedImplCopyWith<
    _$ReaderTranslationTextSelectedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationParagraphSwipedImplCopyWith<$Res> {
  factory _$$ReaderTranslationParagraphSwipedImplCopyWith(
    _$ReaderTranslationParagraphSwipedImpl value,
    $Res Function(_$ReaderTranslationParagraphSwipedImpl) then,
  ) = __$$ReaderTranslationParagraphSwipedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int paragraphIndex,
    String originalText,
    TranslationDirection direction,
  });
}

/// @nodoc
class __$$ReaderTranslationParagraphSwipedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationEventCopyWithImpl<
          $Res,
          _$ReaderTranslationParagraphSwipedImpl
        >
    implements _$$ReaderTranslationParagraphSwipedImplCopyWith<$Res> {
  __$$ReaderTranslationParagraphSwipedImplCopyWithImpl(
    _$ReaderTranslationParagraphSwipedImpl _value,
    $Res Function(_$ReaderTranslationParagraphSwipedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paragraphIndex = null,
    Object? originalText = null,
    Object? direction = null,
  }) {
    return _then(
      _$ReaderTranslationParagraphSwipedImpl(
        paragraphIndex: null == paragraphIndex
            ? _value.paragraphIndex
            : paragraphIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        originalText: null == originalText
            ? _value.originalText
            : originalText // ignore: cast_nullable_to_non_nullable
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

class _$ReaderTranslationParagraphSwipedImpl
    implements ReaderTranslationParagraphSwiped {
  const _$ReaderTranslationParagraphSwipedImpl({
    required this.paragraphIndex,
    required this.originalText,
    required this.direction,
  });

  @override
  final int paragraphIndex;
  @override
  final String originalText;
  @override
  final TranslationDirection direction;

  @override
  String toString() {
    return 'ReaderTranslationEvent.paragraphSwiped(paragraphIndex: $paragraphIndex, originalText: $originalText, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationParagraphSwipedImpl &&
            (identical(other.paragraphIndex, paragraphIndex) ||
                other.paragraphIndex == paragraphIndex) &&
            (identical(other.originalText, originalText) ||
                other.originalText == originalText) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paragraphIndex, originalText, direction);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationParagraphSwipedImplCopyWith<
    _$ReaderTranslationParagraphSwipedImpl
  >
  get copyWith =>
      __$$ReaderTranslationParagraphSwipedImplCopyWithImpl<
        _$ReaderTranslationParagraphSwipedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) {
    return paragraphSwiped(paragraphIndex, originalText, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) {
    return paragraphSwiped?.call(paragraphIndex, originalText, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) {
    if (paragraphSwiped != null) {
      return paragraphSwiped(paragraphIndex, originalText, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) {
    return paragraphSwiped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) {
    return paragraphSwiped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) {
    if (paragraphSwiped != null) {
      return paragraphSwiped(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationParagraphSwiped
    implements ReaderTranslationEvent {
  const factory ReaderTranslationParagraphSwiped({
    required final int paragraphIndex,
    required final String originalText,
    required final TranslationDirection direction,
  }) = _$ReaderTranslationParagraphSwipedImpl;

  int get paragraphIndex;
  String get originalText;
  TranslationDirection get direction;

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationParagraphSwipedImplCopyWith<
    _$ReaderTranslationParagraphSwipedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationDismissedImplCopyWith<$Res> {
  factory _$$ReaderTranslationDismissedImplCopyWith(
    _$ReaderTranslationDismissedImpl value,
    $Res Function(_$ReaderTranslationDismissedImpl) then,
  ) = __$$ReaderTranslationDismissedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReaderTranslationDismissedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationEventCopyWithImpl<
          $Res,
          _$ReaderTranslationDismissedImpl
        >
    implements _$$ReaderTranslationDismissedImplCopyWith<$Res> {
  __$$ReaderTranslationDismissedImplCopyWithImpl(
    _$ReaderTranslationDismissedImpl _value,
    $Res Function(_$ReaderTranslationDismissedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReaderTranslationDismissedImpl implements ReaderTranslationDismissed {
  const _$ReaderTranslationDismissedImpl();

  @override
  String toString() {
    return 'ReaderTranslationEvent.dismissed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationDismissedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) {
    return dismissed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) {
    return dismissed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) {
    if (dismissed != null) {
      return dismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) {
    return dismissed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) {
    return dismissed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) {
    if (dismissed != null) {
      return dismissed(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationDismissed implements ReaderTranslationEvent {
  const factory ReaderTranslationDismissed() = _$ReaderTranslationDismissedImpl;
}

/// @nodoc
abstract class _$$ReaderTranslationParagraphRestoredImplCopyWith<$Res> {
  factory _$$ReaderTranslationParagraphRestoredImplCopyWith(
    _$ReaderTranslationParagraphRestoredImpl value,
    $Res Function(_$ReaderTranslationParagraphRestoredImpl) then,
  ) = __$$ReaderTranslationParagraphRestoredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int paragraphIndex});
}

/// @nodoc
class __$$ReaderTranslationParagraphRestoredImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationEventCopyWithImpl<
          $Res,
          _$ReaderTranslationParagraphRestoredImpl
        >
    implements _$$ReaderTranslationParagraphRestoredImplCopyWith<$Res> {
  __$$ReaderTranslationParagraphRestoredImplCopyWithImpl(
    _$ReaderTranslationParagraphRestoredImpl _value,
    $Res Function(_$ReaderTranslationParagraphRestoredImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? paragraphIndex = null}) {
    return _then(
      _$ReaderTranslationParagraphRestoredImpl(
        paragraphIndex: null == paragraphIndex
            ? _value.paragraphIndex
            : paragraphIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ReaderTranslationParagraphRestoredImpl
    implements ReaderTranslationParagraphRestored {
  const _$ReaderTranslationParagraphRestoredImpl({
    required this.paragraphIndex,
  });

  @override
  final int paragraphIndex;

  @override
  String toString() {
    return 'ReaderTranslationEvent.paragraphRestored(paragraphIndex: $paragraphIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationParagraphRestoredImpl &&
            (identical(other.paragraphIndex, paragraphIndex) ||
                other.paragraphIndex == paragraphIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paragraphIndex);

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationParagraphRestoredImplCopyWith<
    _$ReaderTranslationParagraphRestoredImpl
  >
  get copyWith =>
      __$$ReaderTranslationParagraphRestoredImplCopyWithImpl<
        _$ReaderTranslationParagraphRestoredImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, TranslationDirection direction)
    wordTapped,
    required TResult Function(String text, TranslationDirection direction)
    textSelected,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )
    paragraphSwiped,
    required TResult Function() dismissed,
    required TResult Function(int paragraphIndex) paragraphRestored,
  }) {
    return paragraphRestored(paragraphIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, TranslationDirection direction)? wordTapped,
    TResult? Function(String text, TranslationDirection direction)?
    textSelected,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult? Function()? dismissed,
    TResult? Function(int paragraphIndex)? paragraphRestored,
  }) {
    return paragraphRestored?.call(paragraphIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, TranslationDirection direction)? wordTapped,
    TResult Function(String text, TranslationDirection direction)? textSelected,
    TResult Function(
      int paragraphIndex,
      String originalText,
      TranslationDirection direction,
    )?
    paragraphSwiped,
    TResult Function()? dismissed,
    TResult Function(int paragraphIndex)? paragraphRestored,
    required TResult orElse(),
  }) {
    if (paragraphRestored != null) {
      return paragraphRestored(paragraphIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationWordTapped value) wordTapped,
    required TResult Function(ReaderTranslationTextSelected value) textSelected,
    required TResult Function(ReaderTranslationParagraphSwiped value)
    paragraphSwiped,
    required TResult Function(ReaderTranslationDismissed value) dismissed,
    required TResult Function(ReaderTranslationParagraphRestored value)
    paragraphRestored,
  }) {
    return paragraphRestored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult? Function(ReaderTranslationTextSelected value)? textSelected,
    TResult? Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult? Function(ReaderTranslationDismissed value)? dismissed,
    TResult? Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
  }) {
    return paragraphRestored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationWordTapped value)? wordTapped,
    TResult Function(ReaderTranslationTextSelected value)? textSelected,
    TResult Function(ReaderTranslationParagraphSwiped value)? paragraphSwiped,
    TResult Function(ReaderTranslationDismissed value)? dismissed,
    TResult Function(ReaderTranslationParagraphRestored value)?
    paragraphRestored,
    required TResult orElse(),
  }) {
    if (paragraphRestored != null) {
      return paragraphRestored(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationParagraphRestored
    implements ReaderTranslationEvent {
  const factory ReaderTranslationParagraphRestored({
    required final int paragraphIndex,
  }) = _$ReaderTranslationParagraphRestoredImpl;

  int get paragraphIndex;

  /// Create a copy of ReaderTranslationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationParagraphRestoredImplCopyWith<
    _$ReaderTranslationParagraphRestoredImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReaderTranslationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderTranslationStateCopyWith<$Res> {
  factory $ReaderTranslationStateCopyWith(
    ReaderTranslationState value,
    $Res Function(ReaderTranslationState) then,
  ) = _$ReaderTranslationStateCopyWithImpl<$Res, ReaderTranslationState>;
}

/// @nodoc
class _$ReaderTranslationStateCopyWithImpl<
  $Res,
  $Val extends ReaderTranslationState
>
    implements $ReaderTranslationStateCopyWith<$Res> {
  _$ReaderTranslationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReaderTranslationInitialImplCopyWith<$Res> {
  factory _$$ReaderTranslationInitialImplCopyWith(
    _$ReaderTranslationInitialImpl value,
    $Res Function(_$ReaderTranslationInitialImpl) then,
  ) = __$$ReaderTranslationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReaderTranslationInitialImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<
          $Res,
          _$ReaderTranslationInitialImpl
        >
    implements _$$ReaderTranslationInitialImplCopyWith<$Res> {
  __$$ReaderTranslationInitialImplCopyWithImpl(
    _$ReaderTranslationInitialImpl _value,
    $Res Function(_$ReaderTranslationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReaderTranslationInitialImpl implements ReaderTranslationInitial {
  const _$ReaderTranslationInitialImpl();

  @override
  String toString() {
    return 'ReaderTranslationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
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
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationInitial implements ReaderTranslationState {
  const factory ReaderTranslationInitial() = _$ReaderTranslationInitialImpl;
}

/// @nodoc
abstract class _$$ReaderTranslationTranslatingImplCopyWith<$Res> {
  factory _$$ReaderTranslationTranslatingImplCopyWith(
    _$ReaderTranslationTranslatingImpl value,
    $Res Function(_$ReaderTranslationTranslatingImpl) then,
  ) = __$$ReaderTranslationTranslatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, bool isWord});
}

/// @nodoc
class __$$ReaderTranslationTranslatingImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<
          $Res,
          _$ReaderTranslationTranslatingImpl
        >
    implements _$$ReaderTranslationTranslatingImplCopyWith<$Res> {
  __$$ReaderTranslationTranslatingImplCopyWithImpl(
    _$ReaderTranslationTranslatingImpl _value,
    $Res Function(_$ReaderTranslationTranslatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? isWord = null}) {
    return _then(
      _$ReaderTranslationTranslatingImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        isWord: null == isWord
            ? _value.isWord
            : isWord // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ReaderTranslationTranslatingImpl
    implements ReaderTranslationTranslating {
  const _$ReaderTranslationTranslatingImpl({
    required this.text,
    required this.isWord,
  });

  @override
  final String text;
  @override
  final bool isWord;

  @override
  String toString() {
    return 'ReaderTranslationState.translating(text: $text, isWord: $isWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationTranslatingImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isWord, isWord) || other.isWord == isWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, isWord);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationTranslatingImplCopyWith<
    _$ReaderTranslationTranslatingImpl
  >
  get copyWith =>
      __$$ReaderTranslationTranslatingImplCopyWithImpl<
        _$ReaderTranslationTranslatingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return translating(text, isWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return translating?.call(text, isWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (translating != null) {
      return translating(text, isWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return translating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return translating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (translating != null) {
      return translating(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationTranslating implements ReaderTranslationState {
  const factory ReaderTranslationTranslating({
    required final String text,
    required final bool isWord,
  }) = _$ReaderTranslationTranslatingImpl;

  String get text;
  bool get isWord;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationTranslatingImplCopyWith<
    _$ReaderTranslationTranslatingImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationTranslatedImplCopyWith<$Res> {
  factory _$$ReaderTranslationTranslatedImplCopyWith(
    _$ReaderTranslationTranslatedImpl value,
    $Res Function(_$ReaderTranslationTranslatedImpl) then,
  ) = __$$ReaderTranslationTranslatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TranslationResult result, bool isWord});

  $TranslationResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ReaderTranslationTranslatedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<
          $Res,
          _$ReaderTranslationTranslatedImpl
        >
    implements _$$ReaderTranslationTranslatedImplCopyWith<$Res> {
  __$$ReaderTranslationTranslatedImplCopyWithImpl(
    _$ReaderTranslationTranslatedImpl _value,
    $Res Function(_$ReaderTranslationTranslatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null, Object? isWord = null}) {
    return _then(
      _$ReaderTranslationTranslatedImpl(
        result: null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as TranslationResult,
        isWord: null == isWord
            ? _value.isWord
            : isWord // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslationResultCopyWith<$Res> get result {
    return $TranslationResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$ReaderTranslationTranslatedImpl implements ReaderTranslationTranslated {
  const _$ReaderTranslationTranslatedImpl({
    required this.result,
    required this.isWord,
  });

  @override
  final TranslationResult result;
  @override
  final bool isWord;

  @override
  String toString() {
    return 'ReaderTranslationState.translated(result: $result, isWord: $isWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationTranslatedImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isWord, isWord) || other.isWord == isWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isWord);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationTranslatedImplCopyWith<_$ReaderTranslationTranslatedImpl>
  get copyWith =>
      __$$ReaderTranslationTranslatedImplCopyWithImpl<
        _$ReaderTranslationTranslatedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return translated(result, isWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return translated?.call(result, isWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (translated != null) {
      return translated(result, isWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return translated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return translated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (translated != null) {
      return translated(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationTranslated implements ReaderTranslationState {
  const factory ReaderTranslationTranslated({
    required final TranslationResult result,
    required final bool isWord,
  }) = _$ReaderTranslationTranslatedImpl;

  TranslationResult get result;
  bool get isWord;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationTranslatedImplCopyWith<_$ReaderTranslationTranslatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationParagraphTranslatingImplCopyWith<$Res> {
  factory _$$ReaderTranslationParagraphTranslatingImplCopyWith(
    _$ReaderTranslationParagraphTranslatingImpl value,
    $Res Function(_$ReaderTranslationParagraphTranslatingImpl) then,
  ) = __$$ReaderTranslationParagraphTranslatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int paragraphIndex, String originalText});
}

/// @nodoc
class __$$ReaderTranslationParagraphTranslatingImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<
          $Res,
          _$ReaderTranslationParagraphTranslatingImpl
        >
    implements _$$ReaderTranslationParagraphTranslatingImplCopyWith<$Res> {
  __$$ReaderTranslationParagraphTranslatingImplCopyWithImpl(
    _$ReaderTranslationParagraphTranslatingImpl _value,
    $Res Function(_$ReaderTranslationParagraphTranslatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? paragraphIndex = null, Object? originalText = null}) {
    return _then(
      _$ReaderTranslationParagraphTranslatingImpl(
        paragraphIndex: null == paragraphIndex
            ? _value.paragraphIndex
            : paragraphIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        originalText: null == originalText
            ? _value.originalText
            : originalText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ReaderTranslationParagraphTranslatingImpl
    implements ReaderTranslationParagraphTranslating {
  const _$ReaderTranslationParagraphTranslatingImpl({
    required this.paragraphIndex,
    required this.originalText,
  });

  @override
  final int paragraphIndex;
  @override
  final String originalText;

  @override
  String toString() {
    return 'ReaderTranslationState.paragraphTranslating(paragraphIndex: $paragraphIndex, originalText: $originalText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationParagraphTranslatingImpl &&
            (identical(other.paragraphIndex, paragraphIndex) ||
                other.paragraphIndex == paragraphIndex) &&
            (identical(other.originalText, originalText) ||
                other.originalText == originalText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paragraphIndex, originalText);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationParagraphTranslatingImplCopyWith<
    _$ReaderTranslationParagraphTranslatingImpl
  >
  get copyWith =>
      __$$ReaderTranslationParagraphTranslatingImplCopyWithImpl<
        _$ReaderTranslationParagraphTranslatingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return paragraphTranslating(paragraphIndex, originalText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return paragraphTranslating?.call(paragraphIndex, originalText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (paragraphTranslating != null) {
      return paragraphTranslating(paragraphIndex, originalText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return paragraphTranslating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return paragraphTranslating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (paragraphTranslating != null) {
      return paragraphTranslating(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationParagraphTranslating
    implements ReaderTranslationState {
  const factory ReaderTranslationParagraphTranslating({
    required final int paragraphIndex,
    required final String originalText,
  }) = _$ReaderTranslationParagraphTranslatingImpl;

  int get paragraphIndex;
  String get originalText;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationParagraphTranslatingImplCopyWith<
    _$ReaderTranslationParagraphTranslatingImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationParagraphTranslatedImplCopyWith<$Res> {
  factory _$$ReaderTranslationParagraphTranslatedImplCopyWith(
    _$ReaderTranslationParagraphTranslatedImpl value,
    $Res Function(_$ReaderTranslationParagraphTranslatedImpl) then,
  ) = __$$ReaderTranslationParagraphTranslatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int paragraphIndex, String originalText, String translatedText});
}

/// @nodoc
class __$$ReaderTranslationParagraphTranslatedImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<
          $Res,
          _$ReaderTranslationParagraphTranslatedImpl
        >
    implements _$$ReaderTranslationParagraphTranslatedImplCopyWith<$Res> {
  __$$ReaderTranslationParagraphTranslatedImplCopyWithImpl(
    _$ReaderTranslationParagraphTranslatedImpl _value,
    $Res Function(_$ReaderTranslationParagraphTranslatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paragraphIndex = null,
    Object? originalText = null,
    Object? translatedText = null,
  }) {
    return _then(
      _$ReaderTranslationParagraphTranslatedImpl(
        paragraphIndex: null == paragraphIndex
            ? _value.paragraphIndex
            : paragraphIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        originalText: null == originalText
            ? _value.originalText
            : originalText // ignore: cast_nullable_to_non_nullable
                  as String,
        translatedText: null == translatedText
            ? _value.translatedText
            : translatedText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ReaderTranslationParagraphTranslatedImpl
    implements ReaderTranslationParagraphTranslated {
  const _$ReaderTranslationParagraphTranslatedImpl({
    required this.paragraphIndex,
    required this.originalText,
    required this.translatedText,
  });

  @override
  final int paragraphIndex;
  @override
  final String originalText;
  @override
  final String translatedText;

  @override
  String toString() {
    return 'ReaderTranslationState.paragraphTranslated(paragraphIndex: $paragraphIndex, originalText: $originalText, translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationParagraphTranslatedImpl &&
            (identical(other.paragraphIndex, paragraphIndex) ||
                other.paragraphIndex == paragraphIndex) &&
            (identical(other.originalText, originalText) ||
                other.originalText == originalText) &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paragraphIndex, originalText, translatedText);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationParagraphTranslatedImplCopyWith<
    _$ReaderTranslationParagraphTranslatedImpl
  >
  get copyWith =>
      __$$ReaderTranslationParagraphTranslatedImplCopyWithImpl<
        _$ReaderTranslationParagraphTranslatedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return paragraphTranslated(paragraphIndex, originalText, translatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return paragraphTranslated?.call(
      paragraphIndex,
      originalText,
      translatedText,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (paragraphTranslated != null) {
      return paragraphTranslated(paragraphIndex, originalText, translatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return paragraphTranslated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return paragraphTranslated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (paragraphTranslated != null) {
      return paragraphTranslated(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationParagraphTranslated
    implements ReaderTranslationState {
  const factory ReaderTranslationParagraphTranslated({
    required final int paragraphIndex,
    required final String originalText,
    required final String translatedText,
  }) = _$ReaderTranslationParagraphTranslatedImpl;

  int get paragraphIndex;
  String get originalText;
  String get translatedText;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationParagraphTranslatedImplCopyWith<
    _$ReaderTranslationParagraphTranslatedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReaderTranslationErrorImplCopyWith<$Res> {
  factory _$$ReaderTranslationErrorImplCopyWith(
    _$ReaderTranslationErrorImpl value,
    $Res Function(_$ReaderTranslationErrorImpl) then,
  ) = __$$ReaderTranslationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, TranslationErrorType? errorType});
}

/// @nodoc
class __$$ReaderTranslationErrorImplCopyWithImpl<$Res>
    extends
        _$ReaderTranslationStateCopyWithImpl<$Res, _$ReaderTranslationErrorImpl>
    implements _$$ReaderTranslationErrorImplCopyWith<$Res> {
  __$$ReaderTranslationErrorImplCopyWithImpl(
    _$ReaderTranslationErrorImpl _value,
    $Res Function(_$ReaderTranslationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? errorType = freezed}) {
    return _then(
      _$ReaderTranslationErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        errorType: freezed == errorType
            ? _value.errorType
            : errorType // ignore: cast_nullable_to_non_nullable
                  as TranslationErrorType?,
      ),
    );
  }
}

/// @nodoc

class _$ReaderTranslationErrorImpl implements ReaderTranslationError {
  const _$ReaderTranslationErrorImpl({required this.message, this.errorType});

  @override
  final String message;
  @override
  final TranslationErrorType? errorType;

  @override
  String toString() {
    return 'ReaderTranslationState.error(message: $message, errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderTranslationErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, errorType);

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderTranslationErrorImplCopyWith<_$ReaderTranslationErrorImpl>
  get copyWith =>
      __$$ReaderTranslationErrorImplCopyWithImpl<_$ReaderTranslationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, bool isWord) translating,
    required TResult Function(TranslationResult result, bool isWord) translated,
    required TResult Function(int paragraphIndex, String originalText)
    paragraphTranslating,
    required TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )
    paragraphTranslated,
    required TResult Function(String message, TranslationErrorType? errorType)
    error,
  }) {
    return error(message, errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, bool isWord)? translating,
    TResult? Function(TranslationResult result, bool isWord)? translated,
    TResult? Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult? Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult? Function(String message, TranslationErrorType? errorType)? error,
  }) {
    return error?.call(message, errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, bool isWord)? translating,
    TResult Function(TranslationResult result, bool isWord)? translated,
    TResult Function(int paragraphIndex, String originalText)?
    paragraphTranslating,
    TResult Function(
      int paragraphIndex,
      String originalText,
      String translatedText,
    )?
    paragraphTranslated,
    TResult Function(String message, TranslationErrorType? errorType)? error,
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
    required TResult Function(ReaderTranslationInitial value) initial,
    required TResult Function(ReaderTranslationTranslating value) translating,
    required TResult Function(ReaderTranslationTranslated value) translated,
    required TResult Function(ReaderTranslationParagraphTranslating value)
    paragraphTranslating,
    required TResult Function(ReaderTranslationParagraphTranslated value)
    paragraphTranslated,
    required TResult Function(ReaderTranslationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReaderTranslationInitial value)? initial,
    TResult? Function(ReaderTranslationTranslating value)? translating,
    TResult? Function(ReaderTranslationTranslated value)? translated,
    TResult? Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult? Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult? Function(ReaderTranslationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReaderTranslationInitial value)? initial,
    TResult Function(ReaderTranslationTranslating value)? translating,
    TResult Function(ReaderTranslationTranslated value)? translated,
    TResult Function(ReaderTranslationParagraphTranslating value)?
    paragraphTranslating,
    TResult Function(ReaderTranslationParagraphTranslated value)?
    paragraphTranslated,
    TResult Function(ReaderTranslationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReaderTranslationError implements ReaderTranslationState {
  const factory ReaderTranslationError({
    required final String message,
    final TranslationErrorType? errorType,
  }) = _$ReaderTranslationErrorImpl;

  String get message;
  TranslationErrorType? get errorType;

  /// Create a copy of ReaderTranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderTranslationErrorImplCopyWith<_$ReaderTranslationErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
