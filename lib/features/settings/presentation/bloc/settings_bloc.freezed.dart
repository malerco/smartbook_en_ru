// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
    SettingsEvent value,
    $Res Function(SettingsEvent) then,
  ) = _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsLoadRequestedImplCopyWith<$Res> {
  factory _$$SettingsLoadRequestedImplCopyWith(
    _$SettingsLoadRequestedImpl value,
    $Res Function(_$SettingsLoadRequestedImpl) then,
  ) = __$$SettingsLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadRequestedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLoadRequestedImpl>
    implements _$$SettingsLoadRequestedImplCopyWith<$Res> {
  __$$SettingsLoadRequestedImplCopyWithImpl(
    _$SettingsLoadRequestedImpl _value,
    $Res Function(_$SettingsLoadRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLoadRequestedImpl implements SettingsLoadRequested {
  const _$SettingsLoadRequestedImpl();

  @override
  String toString() {
    return 'SettingsEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
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
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class SettingsLoadRequested implements SettingsEvent {
  const factory SettingsLoadRequested() = _$SettingsLoadRequestedImpl;
}

/// @nodoc
abstract class _$$SettingsThemeChangedImplCopyWith<$Res> {
  factory _$$SettingsThemeChangedImplCopyWith(
    _$SettingsThemeChangedImpl value,
    $Res Function(_$SettingsThemeChangedImpl) then,
  ) = __$$SettingsThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class __$$SettingsThemeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsThemeChangedImpl>
    implements _$$SettingsThemeChangedImplCopyWith<$Res> {
  __$$SettingsThemeChangedImplCopyWithImpl(
    _$SettingsThemeChangedImpl _value,
    $Res Function(_$SettingsThemeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? themeMode = null}) {
    return _then(
      _$SettingsThemeChangedImpl(
        null == themeMode
            ? _value.themeMode
            : themeMode // ignore: cast_nullable_to_non_nullable
                  as AppThemeMode,
      ),
    );
  }
}

/// @nodoc

class _$SettingsThemeChangedImpl implements SettingsThemeChanged {
  const _$SettingsThemeChangedImpl(this.themeMode);

  @override
  final AppThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsEvent.themeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsThemeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsThemeChangedImplCopyWith<_$SettingsThemeChangedImpl>
  get copyWith =>
      __$$SettingsThemeChangedImplCopyWithImpl<_$SettingsThemeChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return themeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return themeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsThemeChanged implements SettingsEvent {
  const factory SettingsThemeChanged(final AppThemeMode themeMode) =
      _$SettingsThemeChangedImpl;

  AppThemeMode get themeMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsThemeChangedImplCopyWith<_$SettingsThemeChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsFontSizeChangedImplCopyWith<$Res> {
  factory _$$SettingsFontSizeChangedImplCopyWith(
    _$SettingsFontSizeChangedImpl value,
    $Res Function(_$SettingsFontSizeChangedImpl) then,
  ) = __$$SettingsFontSizeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FontSizeOption fontSize});
}

/// @nodoc
class __$$SettingsFontSizeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsFontSizeChangedImpl>
    implements _$$SettingsFontSizeChangedImplCopyWith<$Res> {
  __$$SettingsFontSizeChangedImplCopyWithImpl(
    _$SettingsFontSizeChangedImpl _value,
    $Res Function(_$SettingsFontSizeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fontSize = null}) {
    return _then(
      _$SettingsFontSizeChangedImpl(
        null == fontSize
            ? _value.fontSize
            : fontSize // ignore: cast_nullable_to_non_nullable
                  as FontSizeOption,
      ),
    );
  }
}

/// @nodoc

class _$SettingsFontSizeChangedImpl implements SettingsFontSizeChanged {
  const _$SettingsFontSizeChangedImpl(this.fontSize);

  @override
  final FontSizeOption fontSize;

  @override
  String toString() {
    return 'SettingsEvent.fontSizeChanged(fontSize: $fontSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsFontSizeChangedImpl &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fontSize);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsFontSizeChangedImplCopyWith<_$SettingsFontSizeChangedImpl>
  get copyWith =>
      __$$SettingsFontSizeChangedImplCopyWithImpl<
        _$SettingsFontSizeChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return fontSizeChanged(fontSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return fontSizeChanged?.call(fontSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (fontSizeChanged != null) {
      return fontSizeChanged(fontSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return fontSizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return fontSizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (fontSizeChanged != null) {
      return fontSizeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsFontSizeChanged implements SettingsEvent {
  const factory SettingsFontSizeChanged(final FontSizeOption fontSize) =
      _$SettingsFontSizeChangedImpl;

  FontSizeOption get fontSize;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsFontSizeChangedImplCopyWith<_$SettingsFontSizeChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsLineSpacingChangedImplCopyWith<$Res> {
  factory _$$SettingsLineSpacingChangedImplCopyWith(
    _$SettingsLineSpacingChangedImpl value,
    $Res Function(_$SettingsLineSpacingChangedImpl) then,
  ) = __$$SettingsLineSpacingChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LineSpacingOption lineSpacing});
}

/// @nodoc
class __$$SettingsLineSpacingChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLineSpacingChangedImpl>
    implements _$$SettingsLineSpacingChangedImplCopyWith<$Res> {
  __$$SettingsLineSpacingChangedImplCopyWithImpl(
    _$SettingsLineSpacingChangedImpl _value,
    $Res Function(_$SettingsLineSpacingChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lineSpacing = null}) {
    return _then(
      _$SettingsLineSpacingChangedImpl(
        null == lineSpacing
            ? _value.lineSpacing
            : lineSpacing // ignore: cast_nullable_to_non_nullable
                  as LineSpacingOption,
      ),
    );
  }
}

/// @nodoc

class _$SettingsLineSpacingChangedImpl implements SettingsLineSpacingChanged {
  const _$SettingsLineSpacingChangedImpl(this.lineSpacing);

  @override
  final LineSpacingOption lineSpacing;

  @override
  String toString() {
    return 'SettingsEvent.lineSpacingChanged(lineSpacing: $lineSpacing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLineSpacingChangedImpl &&
            (identical(other.lineSpacing, lineSpacing) ||
                other.lineSpacing == lineSpacing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lineSpacing);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLineSpacingChangedImplCopyWith<_$SettingsLineSpacingChangedImpl>
  get copyWith =>
      __$$SettingsLineSpacingChangedImplCopyWithImpl<
        _$SettingsLineSpacingChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return lineSpacingChanged(lineSpacing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return lineSpacingChanged?.call(lineSpacing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (lineSpacingChanged != null) {
      return lineSpacingChanged(lineSpacing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return lineSpacingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return lineSpacingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (lineSpacingChanged != null) {
      return lineSpacingChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsLineSpacingChanged implements SettingsEvent {
  const factory SettingsLineSpacingChanged(
    final LineSpacingOption lineSpacing,
  ) = _$SettingsLineSpacingChangedImpl;

  LineSpacingOption get lineSpacing;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsLineSpacingChangedImplCopyWith<_$SettingsLineSpacingChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsFontFamilyChangedImplCopyWith<$Res> {
  factory _$$SettingsFontFamilyChangedImplCopyWith(
    _$SettingsFontFamilyChangedImpl value,
    $Res Function(_$SettingsFontFamilyChangedImpl) then,
  ) = __$$SettingsFontFamilyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fontFamily});
}

/// @nodoc
class __$$SettingsFontFamilyChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsFontFamilyChangedImpl>
    implements _$$SettingsFontFamilyChangedImplCopyWith<$Res> {
  __$$SettingsFontFamilyChangedImplCopyWithImpl(
    _$SettingsFontFamilyChangedImpl _value,
    $Res Function(_$SettingsFontFamilyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fontFamily = null}) {
    return _then(
      _$SettingsFontFamilyChangedImpl(
        null == fontFamily
            ? _value.fontFamily
            : fontFamily // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SettingsFontFamilyChangedImpl implements SettingsFontFamilyChanged {
  const _$SettingsFontFamilyChangedImpl(this.fontFamily);

  @override
  final String fontFamily;

  @override
  String toString() {
    return 'SettingsEvent.fontFamilyChanged(fontFamily: $fontFamily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsFontFamilyChangedImpl &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fontFamily);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsFontFamilyChangedImplCopyWith<_$SettingsFontFamilyChangedImpl>
  get copyWith =>
      __$$SettingsFontFamilyChangedImplCopyWithImpl<
        _$SettingsFontFamilyChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return fontFamilyChanged(fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return fontFamilyChanged?.call(fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (fontFamilyChanged != null) {
      return fontFamilyChanged(fontFamily);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return fontFamilyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return fontFamilyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (fontFamilyChanged != null) {
      return fontFamilyChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsFontFamilyChanged implements SettingsEvent {
  const factory SettingsFontFamilyChanged(final String fontFamily) =
      _$SettingsFontFamilyChangedImpl;

  String get fontFamily;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsFontFamilyChangedImplCopyWith<_$SettingsFontFamilyChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsPrimaryLanguageChangedImplCopyWith<$Res> {
  factory _$$SettingsPrimaryLanguageChangedImplCopyWith(
    _$SettingsPrimaryLanguageChangedImpl value,
    $Res Function(_$SettingsPrimaryLanguageChangedImpl) then,
  ) = __$$SettingsPrimaryLanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String language});
}

/// @nodoc
class __$$SettingsPrimaryLanguageChangedImplCopyWithImpl<$Res>
    extends
        _$SettingsEventCopyWithImpl<$Res, _$SettingsPrimaryLanguageChangedImpl>
    implements _$$SettingsPrimaryLanguageChangedImplCopyWith<$Res> {
  __$$SettingsPrimaryLanguageChangedImplCopyWithImpl(
    _$SettingsPrimaryLanguageChangedImpl _value,
    $Res Function(_$SettingsPrimaryLanguageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? language = null}) {
    return _then(
      _$SettingsPrimaryLanguageChangedImpl(
        null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SettingsPrimaryLanguageChangedImpl
    implements SettingsPrimaryLanguageChanged {
  const _$SettingsPrimaryLanguageChangedImpl(this.language);

  @override
  final String language;

  @override
  String toString() {
    return 'SettingsEvent.primaryLanguageChanged(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsPrimaryLanguageChangedImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsPrimaryLanguageChangedImplCopyWith<
    _$SettingsPrimaryLanguageChangedImpl
  >
  get copyWith =>
      __$$SettingsPrimaryLanguageChangedImplCopyWithImpl<
        _$SettingsPrimaryLanguageChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(AppThemeMode themeMode) themeChanged,
    required TResult Function(FontSizeOption fontSize) fontSizeChanged,
    required TResult Function(LineSpacingOption lineSpacing) lineSpacingChanged,
    required TResult Function(String fontFamily) fontFamilyChanged,
    required TResult Function(String language) primaryLanguageChanged,
  }) {
    return primaryLanguageChanged(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
    TResult? Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult? Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult? Function(String fontFamily)? fontFamilyChanged,
    TResult? Function(String language)? primaryLanguageChanged,
  }) {
    return primaryLanguageChanged?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    TResult Function(FontSizeOption fontSize)? fontSizeChanged,
    TResult Function(LineSpacingOption lineSpacing)? lineSpacingChanged,
    TResult Function(String fontFamily)? fontFamilyChanged,
    TResult Function(String language)? primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (primaryLanguageChanged != null) {
      return primaryLanguageChanged(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoadRequested value) loadRequested,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsFontSizeChanged value) fontSizeChanged,
    required TResult Function(SettingsLineSpacingChanged value)
    lineSpacingChanged,
    required TResult Function(SettingsFontFamilyChanged value)
    fontFamilyChanged,
    required TResult Function(SettingsPrimaryLanguageChanged value)
    primaryLanguageChanged,
  }) {
    return primaryLanguageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoadRequested value)? loadRequested,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult? Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult? Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult? Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
  }) {
    return primaryLanguageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoadRequested value)? loadRequested,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsFontSizeChanged value)? fontSizeChanged,
    TResult Function(SettingsLineSpacingChanged value)? lineSpacingChanged,
    TResult Function(SettingsFontFamilyChanged value)? fontFamilyChanged,
    TResult Function(SettingsPrimaryLanguageChanged value)?
    primaryLanguageChanged,
    required TResult orElse(),
  }) {
    if (primaryLanguageChanged != null) {
      return primaryLanguageChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsPrimaryLanguageChanged implements SettingsEvent {
  const factory SettingsPrimaryLanguageChanged(final String language) =
      _$SettingsPrimaryLanguageChangedImpl;

  String get language;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsPrimaryLanguageChangedImplCopyWith<
    _$SettingsPrimaryLanguageChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )
    loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
    SettingsState value,
    $Res Function(SettingsState) then,
  ) = _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsInitialImplCopyWith<$Res> {
  factory _$$SettingsInitialImplCopyWith(
    _$SettingsInitialImpl value,
    $Res Function(_$SettingsInitialImpl) then,
  ) = __$$SettingsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsInitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialImpl>
    implements _$$SettingsInitialImplCopyWith<$Res> {
  __$$SettingsInitialImplCopyWithImpl(
    _$SettingsInitialImpl _value,
    $Res Function(_$SettingsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsInitialImpl implements SettingsInitial {
  const _$SettingsInitialImpl();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )
    loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
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
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial() = _$SettingsInitialImpl;
}

/// @nodoc
abstract class _$$SettingsLoadedImplCopyWith<$Res> {
  factory _$$SettingsLoadedImplCopyWith(
    _$SettingsLoadedImpl value,
    $Res Function(_$SettingsLoadedImpl) then,
  ) = __$$SettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    AppThemeMode themeMode,
    FontSizeOption fontSize,
    LineSpacingOption lineSpacing,
    String fontFamily,
    String primaryLanguage,
  });
}

/// @nodoc
class __$$SettingsLoadedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadedImpl>
    implements _$$SettingsLoadedImplCopyWith<$Res> {
  __$$SettingsLoadedImplCopyWithImpl(
    _$SettingsLoadedImpl _value,
    $Res Function(_$SettingsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? fontSize = null,
    Object? lineSpacing = null,
    Object? fontFamily = null,
    Object? primaryLanguage = null,
  }) {
    return _then(
      _$SettingsLoadedImpl(
        themeMode: null == themeMode
            ? _value.themeMode
            : themeMode // ignore: cast_nullable_to_non_nullable
                  as AppThemeMode,
        fontSize: null == fontSize
            ? _value.fontSize
            : fontSize // ignore: cast_nullable_to_non_nullable
                  as FontSizeOption,
        lineSpacing: null == lineSpacing
            ? _value.lineSpacing
            : lineSpacing // ignore: cast_nullable_to_non_nullable
                  as LineSpacingOption,
        fontFamily: null == fontFamily
            ? _value.fontFamily
            : fontFamily // ignore: cast_nullable_to_non_nullable
                  as String,
        primaryLanguage: null == primaryLanguage
            ? _value.primaryLanguage
            : primaryLanguage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SettingsLoadedImpl implements SettingsLoaded {
  const _$SettingsLoadedImpl({
    required this.themeMode,
    required this.fontSize,
    required this.lineSpacing,
    required this.fontFamily,
    required this.primaryLanguage,
  });

  @override
  final AppThemeMode themeMode;
  @override
  final FontSizeOption fontSize;
  @override
  final LineSpacingOption lineSpacing;
  @override
  final String fontFamily;
  @override
  final String primaryLanguage;

  @override
  String toString() {
    return 'SettingsState.loaded(themeMode: $themeMode, fontSize: $fontSize, lineSpacing: $lineSpacing, fontFamily: $fontFamily, primaryLanguage: $primaryLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.lineSpacing, lineSpacing) ||
                other.lineSpacing == lineSpacing) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.primaryLanguage, primaryLanguage) ||
                other.primaryLanguage == primaryLanguage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    themeMode,
    fontSize,
    lineSpacing,
    fontFamily,
    primaryLanguage,
  );

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      __$$SettingsLoadedImplCopyWithImpl<_$SettingsLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )
    loaded,
  }) {
    return loaded(
      themeMode,
      fontSize,
      lineSpacing,
      fontFamily,
      primaryLanguage,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
  }) {
    return loaded?.call(
      themeMode,
      fontSize,
      lineSpacing,
      fontFamily,
      primaryLanguage,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      AppThemeMode themeMode,
      FontSizeOption fontSize,
      LineSpacingOption lineSpacing,
      String fontFamily,
      String primaryLanguage,
    )?
    loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        themeMode,
        fontSize,
        lineSpacing,
        fontFamily,
        primaryLanguage,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsLoaded implements SettingsState {
  const factory SettingsLoaded({
    required final AppThemeMode themeMode,
    required final FontSizeOption fontSize,
    required final LineSpacingOption lineSpacing,
    required final String fontFamily,
    required final String primaryLanguage,
  }) = _$SettingsLoadedImpl;

  AppThemeMode get themeMode;
  FontSizeOption get fontSize;
  LineSpacingOption get lineSpacing;
  String get fontFamily;
  String get primaryLanguage;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
