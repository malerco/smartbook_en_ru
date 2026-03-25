import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/settings_repository.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  static const String _themeKey = 'app_theme';
  static const String _fontSizeKey = 'font_size';
  static const String _lineSpacingKey = 'line_spacing';
  static const String _fontFamilyKey = 'font_family';
  static const String _primaryLanguageKey = 'primary_language';
  static const String _appLanguageKey = 'app_language';
  static const String _onboardingCompletedKey = 'onboarding_completed';

  final SharedPreferences _prefs;

  SettingsRepositoryImpl(this._prefs);

  @override
  AppThemeMode getThemeMode() {
    final value = _prefs.getString(_themeKey);
    return AppThemeMode.values.firstWhere(
      (e) => e.name == value,
      orElse: () => AppThemeMode.dark,
    );
  }

  @override
  Future<void> setThemeMode(AppThemeMode mode) async {
    await _prefs.setString(_themeKey, mode.name);
  }

  @override
  FontSizeOption getFontSize() {
    final value = _prefs.getString(_fontSizeKey);
    return FontSizeOption.values.firstWhere(
      (e) => e.name == value,
      orElse: () => FontSizeOption.medium,
    );
  }

  @override
  Future<void> setFontSize(FontSizeOption size) async {
    await _prefs.setString(_fontSizeKey, size.name);
  }

  @override
  LineSpacingOption getLineSpacing() {
    final value = _prefs.getString(_lineSpacingKey);
    return LineSpacingOption.values.firstWhere(
      (e) => e.name == value,
      orElse: () => LineSpacingOption.normal,
    );
  }

  @override
  Future<void> setLineSpacing(LineSpacingOption spacing) async {
    await _prefs.setString(_lineSpacingKey, spacing.name);
  }

  @override
  String getFontFamily() {
    return _prefs.getString(_fontFamilyKey) ?? 'Inter';
  }

  @override
  Future<void> setFontFamily(String family) async {
    await _prefs.setString(_fontFamilyKey, family);
  }

  @override
  String getPrimaryLanguage() {
    return _prefs.getString(_primaryLanguageKey) ?? 'en';
  }

  @override
  Future<void> setPrimaryLanguage(String language) async {
    await _prefs.setString(_primaryLanguageKey, language);
  }

  @override
  String getAppLanguage() {
    return _prefs.getString(_appLanguageKey) ?? PlatformDispatcher.instance.locale.languageCode;
  }

  @override
  Future<void> setAppLanguage(String language) async {
    await _prefs.setString(_appLanguageKey, language);
  }

  @override
  bool isOnboardingCompleted() {
    return _prefs.getBool(_onboardingCompletedKey) ?? false;
  }

  @override
  Future<void> setOnboardingCompleted(bool completed) async {
    await _prefs.setBool(_onboardingCompletedKey, completed);
  }

  @override
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

  @override
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

  @override
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
