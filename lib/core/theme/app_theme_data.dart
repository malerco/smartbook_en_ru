import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color_scheme.dart';
import 'app_text_theme.dart';

class AppThemeData {
  final AppColorScheme colorScheme;
  late final AppTextTheme _textTheme;

  AppThemeData(this.colorScheme) {
    _textTheme = AppTextTheme(colorScheme);
  }

  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.background,
    colorScheme: ColorScheme(
      brightness: colorScheme.brightness,
      primary: colorScheme.primary,
      onPrimary: colorScheme.onPrimary,
      secondary: colorScheme.secondary,
      onSecondary: colorScheme.onSecondary,
      error: colorScheme.error,
      onError: Colors.white,
      surface: colorScheme.surface,
      onSurface: colorScheme.onSurface,
    ),
    textTheme: _textTheme.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.background,
      foregroundColor: colorScheme.textPrimary,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: colorScheme.brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      titleTextStyle: _textTheme.textTheme.titleLarge,
      iconTheme: IconThemeData(color: colorScheme.textPrimary),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorScheme.navBarBackground,
      selectedItemColor: colorScheme.navBarSelected,
      unselectedItemColor: colorScheme.navBarUnselected,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
    cardTheme: CardThemeData(
      color: colorScheme.cardBackground,
      elevation: 2,
      shadowColor: colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.primary, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.divider, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error, width: 1),
      ),
      hintStyle: TextStyle(color: colorScheme.textHint),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
    dividerTheme: DividerThemeData(
      color: colorScheme.divider,
      thickness: 1,
      space: 1,
    ),
    iconTheme: IconThemeData(
      color: colorScheme.textSecondary,
      size: 24,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: colorScheme.surfaceVariant,
      selectedColor: colorScheme.primary,
      labelStyle: TextStyle(color: colorScheme.textPrimary),
      secondaryLabelStyle: TextStyle(color: colorScheme.onPrimary),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colorScheme.surface,
      contentTextStyle: TextStyle(color: colorScheme.textPrimary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      behavior: SnackBarBehavior.floating,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: _textTheme.textTheme.titleLarge,
      contentTextStyle: _textTheme.textTheme.bodyMedium,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.textSecondary,
      indicatorColor: colorScheme.primary,
      dividerColor: Colors.transparent,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return colorScheme.textHint;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary.withOpacity(0.5);
        }
        return colorScheme.surfaceVariant;
      }),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colorScheme.primary,
      linearTrackColor: colorScheme.surfaceVariant,
    ),
  );

  AppTextTheme get textTheme => _textTheme;
}
