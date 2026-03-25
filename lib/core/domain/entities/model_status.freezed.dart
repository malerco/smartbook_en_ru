// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModelStatus {
  ModelLoadingState get state => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelStatusCopyWith<ModelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelStatusCopyWith<$Res> {
  factory $ModelStatusCopyWith(
    ModelStatus value,
    $Res Function(ModelStatus) then,
  ) = _$ModelStatusCopyWithImpl<$Res, ModelStatus>;
  @useResult
  $Res call({ModelLoadingState state, double progress, String? errorMessage});
}

/// @nodoc
class _$ModelStatusCopyWithImpl<$Res, $Val extends ModelStatus>
    implements $ModelStatusCopyWith<$Res> {
  _$ModelStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as ModelLoadingState,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as double,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModelStatusImplCopyWith<$Res>
    implements $ModelStatusCopyWith<$Res> {
  factory _$$ModelStatusImplCopyWith(
    _$ModelStatusImpl value,
    $Res Function(_$ModelStatusImpl) then,
  ) = __$$ModelStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModelLoadingState state, double progress, String? errorMessage});
}

/// @nodoc
class __$$ModelStatusImplCopyWithImpl<$Res>
    extends _$ModelStatusCopyWithImpl<$Res, _$ModelStatusImpl>
    implements _$$ModelStatusImplCopyWith<$Res> {
  __$$ModelStatusImplCopyWithImpl(
    _$ModelStatusImpl _value,
    $Res Function(_$ModelStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$ModelStatusImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as ModelLoadingState,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ModelStatusImpl extends _ModelStatus {
  const _$ModelStatusImpl({
    this.state = ModelLoadingState.initial,
    this.progress = 0.0,
    this.errorMessage,
  }) : super._();

  @override
  @JsonKey()
  final ModelLoadingState state;
  @override
  @JsonKey()
  final double progress;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ModelStatus(state: $state, progress: $progress, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelStatusImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, progress, errorMessage);

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelStatusImplCopyWith<_$ModelStatusImpl> get copyWith =>
      __$$ModelStatusImplCopyWithImpl<_$ModelStatusImpl>(this, _$identity);
}

abstract class _ModelStatus extends ModelStatus {
  const factory _ModelStatus({
    final ModelLoadingState state,
    final double progress,
    final String? errorMessage,
  }) = _$ModelStatusImpl;
  const _ModelStatus._() : super._();

  @override
  ModelLoadingState get state;
  @override
  double get progress;
  @override
  String? get errorMessage;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelStatusImplCopyWith<_$ModelStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
