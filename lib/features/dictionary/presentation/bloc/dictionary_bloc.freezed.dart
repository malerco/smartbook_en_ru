// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DictionaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEventCopyWith<$Res> {
  factory $DictionaryEventCopyWith(
    DictionaryEvent value,
    $Res Function(DictionaryEvent) then,
  ) = _$DictionaryEventCopyWithImpl<$Res, DictionaryEvent>;
}

/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res, $Val extends DictionaryEvent>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DictionaryLoadRequestedImplCopyWith<$Res> {
  factory _$$DictionaryLoadRequestedImplCopyWith(
    _$DictionaryLoadRequestedImpl value,
    $Res Function(_$DictionaryLoadRequestedImpl) then,
  ) = __$$DictionaryLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryLoadRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionaryLoadRequestedImpl>
    implements _$$DictionaryLoadRequestedImplCopyWith<$Res> {
  __$$DictionaryLoadRequestedImplCopyWithImpl(
    _$DictionaryLoadRequestedImpl _value,
    $Res Function(_$DictionaryLoadRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DictionaryLoadRequestedImpl implements DictionaryLoadRequested {
  const _$DictionaryLoadRequestedImpl();

  @override
  String toString() {
    return 'DictionaryEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryLoadRequested implements DictionaryEvent {
  const factory DictionaryLoadRequested() = _$DictionaryLoadRequestedImpl;
}

/// @nodoc
abstract class _$$DictionaryAddRequestedImplCopyWith<$Res> {
  factory _$$DictionaryAddRequestedImplCopyWith(
    _$DictionaryAddRequestedImpl value,
    $Res Function(_$DictionaryAddRequestedImpl) then,
  ) = __$$DictionaryAddRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DictionaryEntry entry});

  $DictionaryEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$DictionaryAddRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionaryAddRequestedImpl>
    implements _$$DictionaryAddRequestedImplCopyWith<$Res> {
  __$$DictionaryAddRequestedImplCopyWithImpl(
    _$DictionaryAddRequestedImpl _value,
    $Res Function(_$DictionaryAddRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entry = null}) {
    return _then(
      _$DictionaryAddRequestedImpl(
        null == entry
            ? _value.entry
            : entry // ignore: cast_nullable_to_non_nullable
                  as DictionaryEntry,
      ),
    );
  }

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryEntryCopyWith<$Res> get entry {
    return $DictionaryEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc

class _$DictionaryAddRequestedImpl implements DictionaryAddRequested {
  const _$DictionaryAddRequestedImpl(this.entry);

  @override
  final DictionaryEntry entry;

  @override
  String toString() {
    return 'DictionaryEvent.addRequested(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryAddRequestedImpl &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryAddRequestedImplCopyWith<_$DictionaryAddRequestedImpl>
  get copyWith =>
      __$$DictionaryAddRequestedImplCopyWithImpl<_$DictionaryAddRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return addRequested(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return addRequested?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return addRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return addRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryAddRequested implements DictionaryEvent {
  const factory DictionaryAddRequested(final DictionaryEntry entry) =
      _$DictionaryAddRequestedImpl;

  DictionaryEntry get entry;

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryAddRequestedImplCopyWith<_$DictionaryAddRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryUpdateRequestedImplCopyWith<$Res> {
  factory _$$DictionaryUpdateRequestedImplCopyWith(
    _$DictionaryUpdateRequestedImpl value,
    $Res Function(_$DictionaryUpdateRequestedImpl) then,
  ) = __$$DictionaryUpdateRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DictionaryEntry entry});

  $DictionaryEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$DictionaryUpdateRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionaryUpdateRequestedImpl>
    implements _$$DictionaryUpdateRequestedImplCopyWith<$Res> {
  __$$DictionaryUpdateRequestedImplCopyWithImpl(
    _$DictionaryUpdateRequestedImpl _value,
    $Res Function(_$DictionaryUpdateRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entry = null}) {
    return _then(
      _$DictionaryUpdateRequestedImpl(
        null == entry
            ? _value.entry
            : entry // ignore: cast_nullable_to_non_nullable
                  as DictionaryEntry,
      ),
    );
  }

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryEntryCopyWith<$Res> get entry {
    return $DictionaryEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc

class _$DictionaryUpdateRequestedImpl implements DictionaryUpdateRequested {
  const _$DictionaryUpdateRequestedImpl(this.entry);

  @override
  final DictionaryEntry entry;

  @override
  String toString() {
    return 'DictionaryEvent.updateRequested(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryUpdateRequestedImpl &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryUpdateRequestedImplCopyWith<_$DictionaryUpdateRequestedImpl>
  get copyWith =>
      __$$DictionaryUpdateRequestedImplCopyWithImpl<
        _$DictionaryUpdateRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return updateRequested(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return updateRequested?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryUpdateRequested implements DictionaryEvent {
  const factory DictionaryUpdateRequested(final DictionaryEntry entry) =
      _$DictionaryUpdateRequestedImpl;

  DictionaryEntry get entry;

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryUpdateRequestedImplCopyWith<_$DictionaryUpdateRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryDeleteRequestedImplCopyWith<$Res> {
  factory _$$DictionaryDeleteRequestedImplCopyWith(
    _$DictionaryDeleteRequestedImpl value,
    $Res Function(_$DictionaryDeleteRequestedImpl) then,
  ) = __$$DictionaryDeleteRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String entryId});
}

/// @nodoc
class __$$DictionaryDeleteRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionaryDeleteRequestedImpl>
    implements _$$DictionaryDeleteRequestedImplCopyWith<$Res> {
  __$$DictionaryDeleteRequestedImplCopyWithImpl(
    _$DictionaryDeleteRequestedImpl _value,
    $Res Function(_$DictionaryDeleteRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entryId = null}) {
    return _then(
      _$DictionaryDeleteRequestedImpl(
        null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DictionaryDeleteRequestedImpl implements DictionaryDeleteRequested {
  const _$DictionaryDeleteRequestedImpl(this.entryId);

  @override
  final String entryId;

  @override
  String toString() {
    return 'DictionaryEvent.deleteRequested(entryId: $entryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryDeleteRequestedImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entryId);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryDeleteRequestedImplCopyWith<_$DictionaryDeleteRequestedImpl>
  get copyWith =>
      __$$DictionaryDeleteRequestedImplCopyWithImpl<
        _$DictionaryDeleteRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return deleteRequested(entryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return deleteRequested?.call(entryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(entryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return deleteRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return deleteRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryDeleteRequested implements DictionaryEvent {
  const factory DictionaryDeleteRequested(final String entryId) =
      _$DictionaryDeleteRequestedImpl;

  String get entryId;

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryDeleteRequestedImplCopyWith<_$DictionaryDeleteRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionarySearchRequestedImplCopyWith<$Res> {
  factory _$$DictionarySearchRequestedImplCopyWith(
    _$DictionarySearchRequestedImpl value,
    $Res Function(_$DictionarySearchRequestedImpl) then,
  ) = __$$DictionarySearchRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$DictionarySearchRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionarySearchRequestedImpl>
    implements _$$DictionarySearchRequestedImplCopyWith<$Res> {
  __$$DictionarySearchRequestedImplCopyWithImpl(
    _$DictionarySearchRequestedImpl _value,
    $Res Function(_$DictionarySearchRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$DictionarySearchRequestedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DictionarySearchRequestedImpl implements DictionarySearchRequested {
  const _$DictionarySearchRequestedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'DictionaryEvent.searchRequested(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionarySearchRequestedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionarySearchRequestedImplCopyWith<_$DictionarySearchRequestedImpl>
  get copyWith =>
      __$$DictionarySearchRequestedImplCopyWithImpl<
        _$DictionarySearchRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return searchRequested(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return searchRequested?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return searchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return searchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(this);
    }
    return orElse();
  }
}

abstract class DictionarySearchRequested implements DictionaryEvent {
  const factory DictionarySearchRequested(final String query) =
      _$DictionarySearchRequestedImpl;

  String get query;

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionarySearchRequestedImplCopyWith<_$DictionarySearchRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryClearRequestedImplCopyWith<$Res> {
  factory _$$DictionaryClearRequestedImplCopyWith(
    _$DictionaryClearRequestedImpl value,
    $Res Function(_$DictionaryClearRequestedImpl) then,
  ) = __$$DictionaryClearRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryClearRequestedImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$DictionaryClearRequestedImpl>
    implements _$$DictionaryClearRequestedImplCopyWith<$Res> {
  __$$DictionaryClearRequestedImplCopyWithImpl(
    _$DictionaryClearRequestedImpl _value,
    $Res Function(_$DictionaryClearRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DictionaryClearRequestedImpl implements DictionaryClearRequested {
  const _$DictionaryClearRequestedImpl();

  @override
  String toString() {
    return 'DictionaryEvent.clearRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryClearRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return clearRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return clearRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (clearRequested != null) {
      return clearRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return clearRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return clearRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (clearRequested != null) {
      return clearRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryClearRequested implements DictionaryEvent {
  const factory DictionaryClearRequested() = _$DictionaryClearRequestedImpl;
}

/// @nodoc
abstract class _$$DictionaryResetProgressRequestedImplCopyWith<$Res> {
  factory _$$DictionaryResetProgressRequestedImplCopyWith(
    _$DictionaryResetProgressRequestedImpl value,
    $Res Function(_$DictionaryResetProgressRequestedImpl) then,
  ) = __$$DictionaryResetProgressRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryResetProgressRequestedImplCopyWithImpl<$Res>
    extends
        _$DictionaryEventCopyWithImpl<
          $Res,
          _$DictionaryResetProgressRequestedImpl
        >
    implements _$$DictionaryResetProgressRequestedImplCopyWith<$Res> {
  __$$DictionaryResetProgressRequestedImplCopyWithImpl(
    _$DictionaryResetProgressRequestedImpl _value,
    $Res Function(_$DictionaryResetProgressRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DictionaryResetProgressRequestedImpl
    implements DictionaryResetProgressRequested {
  const _$DictionaryResetProgressRequestedImpl();

  @override
  String toString() {
    return 'DictionaryEvent.resetProgressRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryResetProgressRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(DictionaryEntry entry) addRequested,
    required TResult Function(DictionaryEntry entry) updateRequested,
    required TResult Function(String entryId) deleteRequested,
    required TResult Function(String query) searchRequested,
    required TResult Function() clearRequested,
    required TResult Function() resetProgressRequested,
  }) {
    return resetProgressRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(DictionaryEntry entry)? addRequested,
    TResult? Function(DictionaryEntry entry)? updateRequested,
    TResult? Function(String entryId)? deleteRequested,
    TResult? Function(String query)? searchRequested,
    TResult? Function()? clearRequested,
    TResult? Function()? resetProgressRequested,
  }) {
    return resetProgressRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(DictionaryEntry entry)? addRequested,
    TResult Function(DictionaryEntry entry)? updateRequested,
    TResult Function(String entryId)? deleteRequested,
    TResult Function(String query)? searchRequested,
    TResult Function()? clearRequested,
    TResult Function()? resetProgressRequested,
    required TResult orElse(),
  }) {
    if (resetProgressRequested != null) {
      return resetProgressRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryLoadRequested value) loadRequested,
    required TResult Function(DictionaryAddRequested value) addRequested,
    required TResult Function(DictionaryUpdateRequested value) updateRequested,
    required TResult Function(DictionaryDeleteRequested value) deleteRequested,
    required TResult Function(DictionarySearchRequested value) searchRequested,
    required TResult Function(DictionaryClearRequested value) clearRequested,
    required TResult Function(DictionaryResetProgressRequested value)
    resetProgressRequested,
  }) {
    return resetProgressRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryLoadRequested value)? loadRequested,
    TResult? Function(DictionaryAddRequested value)? addRequested,
    TResult? Function(DictionaryUpdateRequested value)? updateRequested,
    TResult? Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult? Function(DictionarySearchRequested value)? searchRequested,
    TResult? Function(DictionaryClearRequested value)? clearRequested,
    TResult? Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
  }) {
    return resetProgressRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryLoadRequested value)? loadRequested,
    TResult Function(DictionaryAddRequested value)? addRequested,
    TResult Function(DictionaryUpdateRequested value)? updateRequested,
    TResult Function(DictionaryDeleteRequested value)? deleteRequested,
    TResult Function(DictionarySearchRequested value)? searchRequested,
    TResult Function(DictionaryClearRequested value)? clearRequested,
    TResult Function(DictionaryResetProgressRequested value)?
    resetProgressRequested,
    required TResult orElse(),
  }) {
    if (resetProgressRequested != null) {
      return resetProgressRequested(this);
    }
    return orElse();
  }
}

abstract class DictionaryResetProgressRequested implements DictionaryEvent {
  const factory DictionaryResetProgressRequested() =
      _$DictionaryResetProgressRequestedImpl;
}

/// @nodoc
mixin _$DictionaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<DictionaryEntry> entries,
      String? searchQuery,
    )
    loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DictionaryEntry> entries, String? searchQuery)?
    loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DictionaryEntry> entries, String? searchQuery)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryInitial value) initial,
    required TResult Function(DictionaryLoading value) loading,
    required TResult Function(DictionaryLoaded value) loaded,
    required TResult Function(DictionaryError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryInitial value)? initial,
    TResult? Function(DictionaryLoading value)? loading,
    TResult? Function(DictionaryLoaded value)? loaded,
    TResult? Function(DictionaryError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryInitial value)? initial,
    TResult Function(DictionaryLoading value)? loading,
    TResult Function(DictionaryLoaded value)? loaded,
    TResult Function(DictionaryError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
    DictionaryState value,
    $Res Function(DictionaryState) then,
  ) = _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DictionaryInitialImplCopyWith<$Res> {
  factory _$$DictionaryInitialImplCopyWith(
    _$DictionaryInitialImpl value,
    $Res Function(_$DictionaryInitialImpl) then,
  ) = __$$DictionaryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryInitialImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryInitialImpl>
    implements _$$DictionaryInitialImplCopyWith<$Res> {
  __$$DictionaryInitialImplCopyWithImpl(
    _$DictionaryInitialImpl _value,
    $Res Function(_$DictionaryInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DictionaryInitialImpl implements DictionaryInitial {
  const _$DictionaryInitialImpl();

  @override
  String toString() {
    return 'DictionaryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DictionaryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<DictionaryEntry> entries,
      String? searchQuery,
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
    TResult? Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    TResult Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    required TResult Function(DictionaryInitial value) initial,
    required TResult Function(DictionaryLoading value) loading,
    required TResult Function(DictionaryLoaded value) loaded,
    required TResult Function(DictionaryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryInitial value)? initial,
    TResult? Function(DictionaryLoading value)? loading,
    TResult? Function(DictionaryLoaded value)? loaded,
    TResult? Function(DictionaryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryInitial value)? initial,
    TResult Function(DictionaryLoading value)? loading,
    TResult Function(DictionaryLoaded value)? loaded,
    TResult Function(DictionaryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DictionaryInitial implements DictionaryState {
  const factory DictionaryInitial() = _$DictionaryInitialImpl;
}

/// @nodoc
abstract class _$$DictionaryLoadingImplCopyWith<$Res> {
  factory _$$DictionaryLoadingImplCopyWith(
    _$DictionaryLoadingImpl value,
    $Res Function(_$DictionaryLoadingImpl) then,
  ) = __$$DictionaryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryLoadingImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryLoadingImpl>
    implements _$$DictionaryLoadingImplCopyWith<$Res> {
  __$$DictionaryLoadingImplCopyWithImpl(
    _$DictionaryLoadingImpl _value,
    $Res Function(_$DictionaryLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DictionaryLoadingImpl implements DictionaryLoading {
  const _$DictionaryLoadingImpl();

  @override
  String toString() {
    return 'DictionaryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DictionaryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<DictionaryEntry> entries,
      String? searchQuery,
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
    TResult? Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    TResult Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    required TResult Function(DictionaryInitial value) initial,
    required TResult Function(DictionaryLoading value) loading,
    required TResult Function(DictionaryLoaded value) loaded,
    required TResult Function(DictionaryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryInitial value)? initial,
    TResult? Function(DictionaryLoading value)? loading,
    TResult? Function(DictionaryLoaded value)? loaded,
    TResult? Function(DictionaryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryInitial value)? initial,
    TResult Function(DictionaryLoading value)? loading,
    TResult Function(DictionaryLoaded value)? loaded,
    TResult Function(DictionaryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DictionaryLoading implements DictionaryState {
  const factory DictionaryLoading() = _$DictionaryLoadingImpl;
}

/// @nodoc
abstract class _$$DictionaryLoadedImplCopyWith<$Res> {
  factory _$$DictionaryLoadedImplCopyWith(
    _$DictionaryLoadedImpl value,
    $Res Function(_$DictionaryLoadedImpl) then,
  ) = __$$DictionaryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DictionaryEntry> entries, String? searchQuery});
}

/// @nodoc
class __$$DictionaryLoadedImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryLoadedImpl>
    implements _$$DictionaryLoadedImplCopyWith<$Res> {
  __$$DictionaryLoadedImplCopyWithImpl(
    _$DictionaryLoadedImpl _value,
    $Res Function(_$DictionaryLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entries = null, Object? searchQuery = freezed}) {
    return _then(
      _$DictionaryLoadedImpl(
        entries: null == entries
            ? _value._entries
            : entries // ignore: cast_nullable_to_non_nullable
                  as List<DictionaryEntry>,
        searchQuery: freezed == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DictionaryLoadedImpl implements DictionaryLoaded {
  const _$DictionaryLoadedImpl({
    required final List<DictionaryEntry> entries,
    this.searchQuery,
  }) : _entries = entries;

  final List<DictionaryEntry> _entries;
  @override
  List<DictionaryEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'DictionaryState.loaded(entries: $entries, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryLoadedImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_entries),
    searchQuery,
  );

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryLoadedImplCopyWith<_$DictionaryLoadedImpl> get copyWith =>
      __$$DictionaryLoadedImplCopyWithImpl<_$DictionaryLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<DictionaryEntry> entries,
      String? searchQuery,
    )
    loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(entries, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DictionaryEntry> entries, String? searchQuery)?
    loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(entries, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DictionaryEntry> entries, String? searchQuery)?
    loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(entries, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryInitial value) initial,
    required TResult Function(DictionaryLoading value) loading,
    required TResult Function(DictionaryLoaded value) loaded,
    required TResult Function(DictionaryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryInitial value)? initial,
    TResult? Function(DictionaryLoading value)? loading,
    TResult? Function(DictionaryLoaded value)? loaded,
    TResult? Function(DictionaryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryInitial value)? initial,
    TResult Function(DictionaryLoading value)? loading,
    TResult Function(DictionaryLoaded value)? loaded,
    TResult Function(DictionaryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DictionaryLoaded implements DictionaryState {
  const factory DictionaryLoaded({
    required final List<DictionaryEntry> entries,
    final String? searchQuery,
  }) = _$DictionaryLoadedImpl;

  List<DictionaryEntry> get entries;
  String? get searchQuery;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryLoadedImplCopyWith<_$DictionaryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryErrorImplCopyWith<$Res> {
  factory _$$DictionaryErrorImplCopyWith(
    _$DictionaryErrorImpl value,
    $Res Function(_$DictionaryErrorImpl) then,
  ) = __$$DictionaryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DictionaryErrorImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryErrorImpl>
    implements _$$DictionaryErrorImplCopyWith<$Res> {
  __$$DictionaryErrorImplCopyWithImpl(
    _$DictionaryErrorImpl _value,
    $Res Function(_$DictionaryErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$DictionaryErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DictionaryErrorImpl implements DictionaryError {
  const _$DictionaryErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DictionaryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryErrorImplCopyWith<_$DictionaryErrorImpl> get copyWith =>
      __$$DictionaryErrorImplCopyWithImpl<_$DictionaryErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<DictionaryEntry> entries,
      String? searchQuery,
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
    TResult? Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    TResult Function(List<DictionaryEntry> entries, String? searchQuery)?
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
    required TResult Function(DictionaryInitial value) initial,
    required TResult Function(DictionaryLoading value) loading,
    required TResult Function(DictionaryLoaded value) loaded,
    required TResult Function(DictionaryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryInitial value)? initial,
    TResult? Function(DictionaryLoading value)? loading,
    TResult? Function(DictionaryLoaded value)? loaded,
    TResult? Function(DictionaryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryInitial value)? initial,
    TResult Function(DictionaryLoading value)? loading,
    TResult Function(DictionaryLoaded value)? loaded,
    TResult Function(DictionaryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DictionaryError implements DictionaryState {
  const factory DictionaryError({required final String message}) =
      _$DictionaryErrorImpl;

  String get message;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryErrorImplCopyWith<_$DictionaryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
