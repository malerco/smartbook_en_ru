import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppThemeMode { dark, light, system }
enum FontSizeOption { small, medium, large, extraLarge }
enum LineSpacingOption { compact, normal, relaxed }

@lazySingleton
class SettingsService {
  static const String _themeKey = 'app_theme';
  static const String _fontSizeKey = 'font_size';
  static const String _lineSpacingKey = 'line_spacing';
  static const String _fontFamilyKey = 'font_family';
  static const String _primaryLanguageKey = 'primary_language';

  final SharedPreferences _prefs;

  SettingsService(this._prefs);

  AppThemeMode get themeMode {
    final value = _prefs.getString(_themeKey);
    return AppThemeMode.values.firstWhere(
      (e) => e.name == value,
      orElse: () => AppThemeMode.dark,
    );
  }

  Future<void> setThemeMode(AppThemeMode mode) async {
    await _prefs.setString(_themeKey, mode.name);
  }

  FontSizeOption get fontSize {
    final value = _prefs.getString(_fontSizeKey);
    return FontSizeOption.values.firstWhere(
      (e) => e.name == value,
      orElse: () => FontSizeOption.medium,
    );
  }

  Future<void> setFontSize(FontSizeOption size) async {
    await _prefs.setString(_fontSizeKey, size.name);
  }

  LineSpacingOption get lineSpacing {
    final value = _prefs.getString(_lineSpacingKey);
    return LineSpacingOption.values.firstWhere(
      (e) => e.name == value,
      orElse: () => LineSpacingOption.normal,
    );
  }

  Future<void> setLineSpacing(LineSpacingOption spacing) async {
    await _prefs.setString(_lineSpacingKey, spacing.name);
  }

  String get fontFamily {
    return _prefs.getString(_fontFamilyKey) ?? 'Inter';
  }

  Future<void> setFontFamily(String family) async {
    await _prefs.setString(_fontFamilyKey, family);
  }

  String get primaryLanguage {
    return _prefs.getString(_primaryLanguageKey) ?? 'en';
  }

  Future<void> setPrimaryLanguage(String language) async {
    await _prefs.setString(_primaryLanguageKey, language);
  }

  double getFontSizeValue(FontSizeOption option) {
    switch (option) {
      case FontSizeOption.small:
        return 14.0;
      case FontSizeOption.medium:
        return 16.0;
      case FontSizeOption.large:
        return 18.0;
      case FontSizeOption.extraLarge:
        return 22.0;
    }
  }

  double getLineSpacingValue(LineSpacingOption option) {
    switch (option) {
      case LineSpacingOption.compact:
        return 1.2;
      case LineSpacingOption.normal:
        return 1.5;
      case LineSpacingOption.relaxed:
        return 1.8;
    }
  }

  ThemeMode getFlutterThemeMode(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.dark:
        return ThemeMode.dark;
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.system:
        return ThemeMode.system;
    }
  }
}
