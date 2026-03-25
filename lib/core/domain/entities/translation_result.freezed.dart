// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TranslationResult {
  String get originalText => throw _privateConstructorUsedError;
  String get translatedText => throw _privateConstructorUsedError;
  String get transcription => throw _privateConstructorUsedError;
  TranslationDirection get direction => throw _privateConstructorUsedError;
  List<WordPair> get wordPairs => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get variants => throw _privateConstructorUsedError;

  /// Create a copy of TranslationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationResultCopyWith<TranslationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationResultCopyWith<$Res> {
  factory $TranslationResultCopyWith(
    TranslationResult value,
    $Res Function(TranslationResult) then,
  ) = _$TranslationResultCopyWithImpl<$Res, TranslationResult>;
  @useResult
  $Res call({
    String originalText,
    String translatedText,
    String transcription,
    TranslationDirection direction,
    List<WordPair> wordPairs,
    DateTime timestamp,
    List<String> variants,
  });
}

/// @nodoc
class _$TranslationResultCopyWithImpl<$Res, $Val extends TranslationResult>
    implements $TranslationResultCopyWith<$Res> {
  _$TranslationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalText = null,
    Object? translatedText = null,
    Object? transcription = null,
    Object? direction = null,
    Object? wordPairs = null,
    Object? timestamp = null,
    Object? variants = null,
  }) {
    return _then(
      _value.copyWith(
            originalText: null == originalText
                ? _value.originalText
                : originalText // ignore: cast_nullable_to_non_nullable
                      as String,
            translatedText: null == translatedText
                ? _value.translatedText
                : translatedText // ignore: cast_nullable_to_non_nullable
                      as String,
            transcription: null == transcription
                ? _value.transcription
                : transcription // ignore: cast_nullable_to_non_nullable
                      as String,
            direction: null == direction
                ? _value.direction
                : direction // ignore: cast_nullable_to_non_nullable
                      as TranslationDirection,
            wordPairs: null == wordPairs
                ? _value.wordPairs
                : wordPairs // ignore: cast_nullable_to_non_nullable
                      as List<WordPair>,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            variants: null == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranslationResultImplCopyWith<$Res>
    implements $TranslationResultCopyWith<$Res> {
  factory _$$TranslationResultImplCopyWith(
    _$TranslationResultImpl value,
    $Res Function(_$TranslationResultImpl) then,
  ) = __$$TranslationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String originalText,
    String translatedText,
    String transcription,
    TranslationDirection direction,
    List<WordPair> wordPairs,
    DateTime timestamp,
    List<String> variants,
  });
}

/// @nodoc
class __$$TranslationResultImplCopyWithImpl<$Res>
    extends _$TranslationResultCopyWithImpl<$Res, _$TranslationResultImpl>
    implements _$$TranslationResultImplCopyWith<$Res> {
  __$$TranslationResultImplCopyWithImpl(
    _$TranslationResultImpl _value,
    $Res Function(_$TranslationResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TranslationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalText = null,
    Object? translatedText = null,
    Object? transcription = null,
    Object? direction = null,
    Object? wordPairs = null,
    Object? timestamp = null,
    Object? variants = null,
  }) {
    return _then(
      _$TranslationResultImpl(
        originalText: null == originalText
            ? _value.originalText
            : originalText // ignore: cast_nullable_to_non_nullable
                  as String,
        translatedText: null == translatedText
            ? _value.translatedText
            : translatedText // ignore: cast_nullable_to_non_nullable
                  as String,
        transcription: null == transcription
            ? _value.transcription
            : transcription // ignore: cast_nullable_to_non_nullable
                  as String,
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as TranslationDirection,
        wordPairs: null == wordPairs
            ? _value._wordPairs
            : wordPairs // ignore: cast_nullable_to_non_nullable
                  as List<WordPair>,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        variants: null == variants
            ? _value._variants
            : variants // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$TranslationResultImpl implements _TranslationResult {
  const _$TranslationResultImpl({
    required this.originalText,
    required this.translatedText,
    required this.transcription,
    required this.direction,
    required final List<WordPair> wordPairs,
    required this.timestamp,
    final List<String> variants = const [],
  }) : _wordPairs = wordPairs,
       _variants = variants;

  @override
  final String originalText;
  @override
  final String translatedText;
  @override
  final String transcription;
  @override
  final TranslationDirection direction;
  final List<WordPair> _wordPairs;
  @override
  List<WordPair> get wordPairs {
    if (_wordPairs is EqualUnmodifiableListView) return _wordPairs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordPairs);
  }

  @override
  final DateTime timestamp;
  final List<String> _variants;
  @override
  @JsonKey()
  List<String> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'TranslationResult(originalText: $originalText, translatedText: $translatedText, transcription: $transcription, direction: $direction, wordPairs: $wordPairs, timestamp: $timestamp, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationResultImpl &&
            (identical(other.originalText, originalText) ||
                other.originalText == originalText) &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText) &&
            (identical(other.transcription, transcription) ||
                other.transcription == transcription) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            const DeepCollectionEquality().equals(
              other._wordPairs,
              _wordPairs,
            ) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    originalText,
    translatedText,
    transcription,
    direction,
    const DeepCollectionEquality().hash(_wordPairs),
    timestamp,
    const DeepCollectionEquality().hash(_variants),
  );

  /// Create a copy of TranslationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationResultImplCopyWith<_$TranslationResultImpl> get copyWith =>
      __$$TranslationResultImplCopyWithImpl<_$TranslationResultImpl>(
        this,
        _$identity,
      );
}

abstract class _TranslationResult implements TranslationResult {
  const factory _TranslationResult({
    required final String originalText,
    required final String translatedText,
    required final String transcription,
    required final TranslationDirection direction,
    required final List<WordPair> wordPairs,
    required final DateTime timestamp,
    final List<String> variants,
  }) = _$TranslationResultImpl;

  @override
  String get originalText;
  @override
  String get translatedText;
  @override
  String get transcription;
  @override
  TranslationDirection get direction;
  @override
  List<WordPair> get wordPairs;
  @override
  DateTime get timestamp;
  @override
  List<String> get variants;

  /// Create a copy of TranslationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationResultImplCopyWith<_$TranslationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WordPair {
  String get sourceWord => throw _privateConstructorUsedError;
  String get translatedWord => throw _privateConstructorUsedError;
  String? get transcription => throw _privateConstructorUsedError;

  /// Create a copy of WordPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordPairCopyWith<WordPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordPairCopyWith<$Res> {
  factory $WordPairCopyWith(WordPair value, $Res Function(WordPair) then) =
      _$WordPairCopyWithImpl<$Res, WordPair>;
  @useResult
  $Res call({String sourceWord, String translatedWord, String? transcription});
}

/// @nodoc
class _$WordPairCopyWithImpl<$Res, $Val extends WordPair>
    implements $WordPairCopyWith<$Res> {
  _$WordPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceWord = null,
    Object? translatedWord = null,
    Object? transcription = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceWord: null == sourceWord
                ? _value.sourceWord
                : sourceWord // ignore: cast_nullable_to_non_nullable
                      as String,
            translatedWord: null == translatedWord
                ? _value.translatedWord
                : translatedWord // ignore: cast_nullable_to_non_nullable
                      as String,
            transcription: freezed == transcription
                ? _value.transcription
                : transcription // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WordPairImplCopyWith<$Res>
    implements $WordPairCopyWith<$Res> {
  factory _$$WordPairImplCopyWith(
    _$WordPairImpl value,
    $Res Function(_$WordPairImpl) then,
  ) = __$$WordPairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceWord, String translatedWord, String? transcription});
}

/// @nodoc
class __$$WordPairImplCopyWithImpl<$Res>
    extends _$WordPairCopyWithImpl<$Res, _$WordPairImpl>
    implements _$$WordPairImplCopyWith<$Res> {
  __$$WordPairImplCopyWithImpl(
    _$WordPairImpl _value,
    $Res Function(_$WordPairImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WordPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceWord = null,
    Object? translatedWord = null,
    Object? transcription = freezed,
  }) {
    return _then(
      _$WordPairImpl(
        sourceWord: null == sourceWord
            ? _value.sourceWord
            : sourceWord // ignore: cast_nullable_to_non_nullable
                  as String,
        translatedWord: null == translatedWord
            ? _value.translatedWord
            : translatedWord // ignore: cast_nullable_to_non_nullable
                  as String,
        transcription: freezed == transcription
            ? _value.transcription
            : transcription // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$WordPairImpl implements _WordPair {
  const _$WordPairImpl({
    required this.sourceWord,
    required this.translatedWord,
    this.transcription,
  });

  @override
  final String sourceWord;
  @override
  final String translatedWord;
  @override
  final String? transcription;

  @override
  String toString() {
    return 'WordPair(sourceWord: $sourceWord, translatedWord: $translatedWord, transcription: $transcription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordPairImpl &&
            (identical(other.sourceWord, sourceWord) ||
                other.sourceWord == sourceWord) &&
            (identical(other.translatedWord, translatedWord) ||
                other.translatedWord == translatedWord) &&
            (identical(other.transcription, transcription) ||
                other.transcription == transcription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceWord, translatedWord, transcription);

  /// Create a copy of WordPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordPairImplCopyWith<_$WordPairImpl> get copyWith =>
      __$$WordPairImplCopyWithImpl<_$WordPairImpl>(this, _$identity);
}

abstract class _WordPair implements WordPair {
  const factory _WordPair({
    required final String sourceWord,
    required final String translatedWord,
    final String? transcription,
  }) = _$WordPairImpl;

  @override
  String get sourceWord;
  @override
  String get translatedWord;
  @override
  String? get transcription;

  /// Create a copy of WordPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordPairImplCopyWith<_$WordPairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
