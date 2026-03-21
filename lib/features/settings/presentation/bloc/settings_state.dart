part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = SettingsInitial;
  const factory SettingsState.loaded({
    required AppThemeMode themeMode,
    required FontSizeOption fontSize,
    required LineSpacingOption lineSpacing,
    required String fontFamily,
    required String primaryLanguage,
    required String appLanguage,
    required String appVersion,
  }) = SettingsLoaded;
}
