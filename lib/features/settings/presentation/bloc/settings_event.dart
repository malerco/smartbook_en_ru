part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadRequested() = SettingsLoadRequested;
  const factory SettingsEvent.themeChanged(AppThemeMode themeMode) = SettingsThemeChanged;
  const factory SettingsEvent.fontSizeChanged(FontSizeOption fontSize) = SettingsFontSizeChanged;
  const factory SettingsEvent.lineSpacingChanged(LineSpacingOption lineSpacing) = SettingsLineSpacingChanged;
  const factory SettingsEvent.fontFamilyChanged(String fontFamily) = SettingsFontFamilyChanged;
  const factory SettingsEvent.primaryLanguageChanged(String language) = SettingsPrimaryLanguageChanged;
  const factory SettingsEvent.appLanguageChanged(String language) = SettingsAppLanguageChanged;
}
