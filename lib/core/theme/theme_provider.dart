import 'package:flutter/material.dart';
import 'app_color_scheme.dart';
import 'app_theme_data.dart';
import 'app_text_theme.dart';

class ThemeProvider {
  static final ThemeProvider _instance = ThemeProvider._internal();
  factory ThemeProvider() => _instance;
  ThemeProvider._internal();

  static const AppColorScheme _darkScheme = DarkColorScheme();
  static const AppColorScheme _lightScheme = LightColorScheme();

  static final AppThemeData _darkThemeData = AppThemeData(_darkScheme);
  static final AppThemeData _lightThemeData = AppThemeData(_lightScheme);

  static ThemeData get darkTheme => _darkThemeData.themeData;

  static ThemeData get lightTheme => _lightThemeData.themeData;

  static AppColorScheme getColorScheme(Brightness brightness) {
    return brightness == Brightness.dark ? _darkScheme : _lightScheme;
  }

  static AppColorScheme getColorSchemeForMode(ThemeMode mode, BuildContext context) {
    switch (mode) {
      case ThemeMode.dark:
        return _darkScheme;
      case ThemeMode.light:
        return _lightScheme;
      case ThemeMode.system:
        return MediaQuery.platformBrightnessOf(context) == Brightness.dark
            ? _darkScheme
            : _lightScheme;
    }
  }

  static AppTextTheme getTextTheme(Brightness brightness) {
    return brightness == Brightness.dark
        ? _darkThemeData.textTheme
        : _lightThemeData.textTheme;
  }
}

extension ThemeExtension on BuildContext {
  AppColorScheme get colors {
    final brightness = Theme.of(this).brightness;
    return ThemeProvider.getColorScheme(brightness);
  }

  AppTextTheme get appTextTheme {
    final brightness = Theme.of(this).brightness;
    return ThemeProvider.getTextTheme(brightness);
  }

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
