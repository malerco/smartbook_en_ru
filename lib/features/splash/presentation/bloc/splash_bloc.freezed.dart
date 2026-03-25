// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress, LoadingMessageType messageType)
    progressUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStarted value) started,
    required TResult Function(SplashProgressUpdated value) progressUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStarted value)? started,
    TResult? Function(SplashProgressUpdated value)? progressUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStarted value)? started,
    TResult Function(SplashProgressUpdated value)? progressUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
    SplashEvent value,
    $Res Function(SplashEvent) then,
  ) = _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SplashStartedImplCopyWith<$Res> {
  factory _$$SplashStartedImplCopyWith(
    _$SplashStartedImpl value,
    $Res Function(_$SplashStartedImpl) then,
  ) = __$$SplashStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStartedImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$SplashStartedImpl>
    implements _$$SplashStartedImplCopyWith<$Res> {
  __$$SplashStartedImplCopyWithImpl(
    _$SplashStartedImpl _value,
    $Res Function(_$SplashStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashStartedImpl implements SplashStarted {
  const _$SplashStartedImpl();

  @override
  String toString() {
    return 'SplashEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress, LoadingMessageType messageType)
    progressUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStarted value) started,
    required TResult Function(SplashProgressUpdated value) progressUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStarted value)? started,
    TResult? Function(SplashProgressUpdated value)? progressUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStarted value)? started,
    TResult Function(SplashProgressUpdated value)? progressUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SplashStarted implements SplashEvent {
  const factory SplashStarted() = _$SplashStartedImpl;
}

/// @nodoc
abstract class _$$SplashProgressUpdatedImplCopyWith<$Res> {
  factory _$$SplashProgressUpdatedImplCopyWith(
    _$SplashProgressUpdatedImpl value,
    $Res Function(_$SplashProgressUpdatedImpl) then,
  ) = __$$SplashProgressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress, LoadingMessageType messageType});
}

/// @nodoc
class __$$SplashProgressUpdatedImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$SplashProgressUpdatedImpl>
    implements _$$SplashProgressUpdatedImplCopyWith<$Res> {
  __$$SplashProgressUpdatedImplCopyWithImpl(
    _$SplashProgressUpdatedImpl _value,
    $Res Function(_$SplashProgressUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null, Object? messageType = null}) {
    return _then(
      _$SplashProgressUpdatedImpl(
        null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
        null == messageType
            ? _value.messageType
            : messageType // ignore: cast_nullable_to_non_nullable
                  as LoadingMessageType,
      ),
    );
  }
}

/// @nodoc

class _$SplashProgressUpdatedImpl implements SplashProgressUpdated {
  const _$SplashProgressUpdatedImpl(this.progress, this.messageType);

  @override
  final double progress;
  @override
  final LoadingMessageType messageType;

  @override
  String toString() {
    return 'SplashEvent.progressUpdated(progress: $progress, messageType: $messageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashProgressUpdatedImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, messageType);

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashProgressUpdatedImplCopyWith<_$SplashProgressUpdatedImpl>
  get copyWith =>
      __$$SplashProgressUpdatedImplCopyWithImpl<_$SplashProgressUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double progress, LoadingMessageType messageType)
    progressUpdated,
  }) {
    return progressUpdated(progress, messageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
  }) {
    return progressUpdated?.call(progress, messageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double progress, LoadingMessageType messageType)?
    progressUpdated,
    required TResult orElse(),
  }) {
    if (progressUpdated != null) {
      return progressUpdated(progress, messageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStarted value) started,
    required TResult Function(SplashProgressUpdated value) progressUpdated,
  }) {
    return progressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStarted value)? started,
    TResult? Function(SplashProgressUpdated value)? progressUpdated,
  }) {
    return progressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStarted value)? started,
    TResult Function(SplashProgressUpdated value)? progressUpdated,
    required TResult orElse(),
  }) {
    if (progressUpdated != null) {
      return progressUpdated(this);
    }
    return orElse();
  }
}

abstract class SplashProgressUpdated implements SplashEvent {
  const factory SplashProgressUpdated(
    final double progress,
    final LoadingMessageType messageType,
  ) = _$SplashProgressUpdatedImpl;

  double get progress;
  LoadingMessageType get messageType;

  /// Create a copy of SplashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashProgressUpdatedImplCopyWith<_$SplashProgressUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, LoadingMessageType messageType)
    loading,
    required TResult Function() loaded,
    required TResult Function(String errorKey) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, LoadingMessageType messageType)? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorKey)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, LoadingMessageType messageType)? loading,
    TResult Function()? loaded,
    TResult Function(String errorKey)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitial value) initial,
    required TResult Function(SplashLoading value) loading,
    required TResult Function(SplashLoaded value) loaded,
    required TResult Function(SplashError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitial value)? initial,
    TResult? Function(SplashLoading value)? loading,
    TResult? Function(SplashLoaded value)? loaded,
    TResult? Function(SplashError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitial value)? initial,
    TResult Function(SplashLoading value)? loading,
    TResult Function(SplashLoaded value)? loaded,
    TResult Function(SplashError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
    SplashState value,
    $Res Function(SplashState) then,
  ) = _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SplashInitialImplCopyWith<$Res> {
  factory _$$SplashInitialImplCopyWith(
    _$SplashInitialImpl value,
    $Res Function(_$SplashInitialImpl) then,
  ) = __$$SplashInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashInitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashInitialImpl>
    implements _$$SplashInitialImplCopyWith<$Res> {
  __$$SplashInitialImplCopyWithImpl(
    _$SplashInitialImpl _value,
    $Res Function(_$SplashInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashInitialImpl implements SplashInitial {
  const _$SplashInitialImpl();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, LoadingMessageType messageType)
    loading,
    required TResult Function() loaded,
    required TResult Function(String errorKey) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, LoadingMessageType messageType)? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorKey)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, LoadingMessageType messageType)? loading,
    TResult Function()? loaded,
    TResult Function(String errorKey)? error,
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
    required TResult Function(SplashInitial value) initial,
    required TResult Function(SplashLoading value) loading,
    required TResult Function(SplashLoaded value) loaded,
    required TResult Function(SplashError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitial value)? initial,
    TResult? Function(SplashLoading value)? loading,
    TResult? Function(SplashLoaded value)? loaded,
    TResult? Function(SplashError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitial value)? initial,
    TResult Function(SplashLoading value)? loading,
    TResult Function(SplashLoaded value)? loaded,
    TResult Function(SplashError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashInitial implements SplashState {
  const factory SplashInitial() = _$SplashInitialImpl;
}

/// @nodoc
abstract class _$$SplashLoadingImplCopyWith<$Res> {
  factory _$$SplashLoadingImplCopyWith(
    _$SplashLoadingImpl value,
    $Res Function(_$SplashLoadingImpl) then,
  ) = __$$SplashLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress, LoadingMessageType messageType});
}

/// @nodoc
class __$$SplashLoadingImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashLoadingImpl>
    implements _$$SplashLoadingImplCopyWith<$Res> {
  __$$SplashLoadingImplCopyWithImpl(
    _$SplashLoadingImpl _value,
    $Res Function(_$SplashLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null, Object? messageType = null}) {
    return _then(
      _$SplashLoadingImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
        messageType: null == messageType
            ? _value.messageType
            : messageType // ignore: cast_nullable_to_non_nullable
                  as LoadingMessageType,
      ),
    );
  }
}

/// @nodoc

class _$SplashLoadingImpl implements SplashLoading {
  const _$SplashLoadingImpl({
    required this.progress,
    required this.messageType,
  });

  @override
  final double progress;
  @override
  final LoadingMessageType messageType;

  @override
  String toString() {
    return 'SplashState.loading(progress: $progress, messageType: $messageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashLoadingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, messageType);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashLoadingImplCopyWith<_$SplashLoadingImpl> get copyWith =>
      __$$SplashLoadingImplCopyWithImpl<_$SplashLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, LoadingMessageType messageType)
    loading,
    required TResult Function() loaded,
    required TResult Function(String errorKey) error,
  }) {
    return loading(progress, messageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, LoadingMessageType messageType)? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorKey)? error,
  }) {
    return loading?.call(progress, messageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, LoadingMessageType messageType)? loading,
    TResult Function()? loaded,
    TResult Function(String errorKey)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(progress, messageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitial value) initial,
    required TResult Function(SplashLoading value) loading,
    required TResult Function(SplashLoaded value) loaded,
    required TResult Function(SplashError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitial value)? initial,
    TResult? Function(SplashLoading value)? loading,
    TResult? Function(SplashLoaded value)? loaded,
    TResult? Function(SplashError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitial value)? initial,
    TResult Function(SplashLoading value)? loading,
    TResult Function(SplashLoaded value)? loaded,
    TResult Function(SplashError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SplashLoading implements SplashState {
  const factory SplashLoading({
    required final double progress,
    required final LoadingMessageType messageType,
  }) = _$SplashLoadingImpl;

  double get progress;
  LoadingMessageType get messageType;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashLoadingImplCopyWith<_$SplashLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SplashLoadedImplCopyWith<$Res> {
  factory _$$SplashLoadedImplCopyWith(
    _$SplashLoadedImpl value,
    $Res Function(_$SplashLoadedImpl) then,
  ) = __$$SplashLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashLoadedImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashLoadedImpl>
    implements _$$SplashLoadedImplCopyWith<$Res> {
  __$$SplashLoadedImplCopyWithImpl(
    _$SplashLoadedImpl _value,
    $Res Function(_$SplashLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashLoadedImpl implements SplashLoaded {
  const _$SplashLoadedImpl();

  @override
  String toString() {
    return 'SplashState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, LoadingMessageType messageType)
    loading,
    required TResult Function() loaded,
    required TResult Function(String errorKey) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, LoadingMessageType messageType)? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorKey)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, LoadingMessageType messageType)? loading,
    TResult Function()? loaded,
    TResult Function(String errorKey)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitial value) initial,
    required TResult Function(SplashLoading value) loading,
    required TResult Function(SplashLoaded value) loaded,
    required TResult Function(SplashError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitial value)? initial,
    TResult? Function(SplashLoading value)? loading,
    TResult? Function(SplashLoaded value)? loaded,
    TResult? Function(SplashError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitial value)? initial,
    TResult Function(SplashLoading value)? loading,
    TResult Function(SplashLoaded value)? loaded,
    TResult Function(SplashError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SplashLoaded implements SplashState {
  const factory SplashLoaded() = _$SplashLoadedImpl;
}

/// @nodoc
abstract class _$$SplashErrorImplCopyWith<$Res> {
  factory _$$SplashErrorImplCopyWith(
    _$SplashErrorImpl value,
    $Res Function(_$SplashErrorImpl) then,
  ) = __$$SplashErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorKey});
}

/// @nodoc
class __$$SplashErrorImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashErrorImpl>
    implements _$$SplashErrorImplCopyWith<$Res> {
  __$$SplashErrorImplCopyWithImpl(
    _$SplashErrorImpl _value,
    $Res Function(_$SplashErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorKey = null}) {
    return _then(
      _$SplashErrorImpl(
        null == errorKey
            ? _value.errorKey
            : errorKey // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SplashErrorImpl implements SplashError {
  const _$SplashErrorImpl(this.errorKey);

  @override
  final String errorKey;

  @override
  String toString() {
    return 'SplashState.error(errorKey: $errorKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashErrorImpl &&
            (identical(other.errorKey, errorKey) ||
                other.errorKey == errorKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorKey);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashErrorImplCopyWith<_$SplashErrorImpl> get copyWith =>
      __$$SplashErrorImplCopyWithImpl<_$SplashErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, LoadingMessageType messageType)
    loading,
    required TResult Function() loaded,
    required TResult Function(String errorKey) error,
  }) {
    return error(errorKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, LoadingMessageType messageType)? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorKey)? error,
  }) {
    return error?.call(errorKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, LoadingMessageType messageType)? loading,
    TResult Function()? loaded,
    TResult Function(String errorKey)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitial value) initial,
    required TResult Function(SplashLoading value) loading,
    required TResult Function(SplashLoaded value) loaded,
    required TResult Function(SplashError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitial value)? initial,
    TResult? Function(SplashLoading value)? loading,
    TResult? Function(SplashLoaded value)? loaded,
    TResult? Function(SplashError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitial value)? initial,
    TResult Function(SplashLoading value)? loading,
    TResult Function(SplashLoaded value)? loaded,
    TResult Function(SplashError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SplashError implements SplashState {
  const factory SplashError(final String errorKey) = _$SplashErrorImpl;

  String get errorKey;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashErrorImplCopyWith<_$SplashErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
