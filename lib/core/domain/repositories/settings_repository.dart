import 'package:flutter/material.dart';

enum AppThemeMode { dark, light, system }
enum FontSizeOption { small, medium, large, extraLarge }
enum LineSpacingOption { compact, normal, relaxed }

abstract class SettingsRepository {
  AppThemeMode getThemeMode();
  Future<void> setThemeMode(AppThemeMode mode);

  FontSizeOption getFontSize();
  Future<void> setFontSize(FontSizeOption size);

  LineSpacingOption getLineSpacing();
  Future<void> setLineSpacing(LineSpacingOption spacing);

  String getFontFamily();
  Future<void> setFontFamily(String family);

  String getPrimaryLanguage();
  Future<void> setPrimaryLanguage(String language);

  String getAppLanguage();
  Future<void> setAppLanguage(String language);

  double getFontSizeValue(FontSizeOption option);
  double getLineSpacingValue(LineSpacingOption option);
  ThemeMode getFlutterThemeMode(AppThemeMode mode);
}
