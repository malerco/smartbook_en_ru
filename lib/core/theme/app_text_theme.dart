import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color_scheme.dart';

class AppTextTheme {
  final AppColorScheme colorScheme;

  const AppTextTheme(this.colorScheme);

  TextTheme get textTheme => GoogleFonts.merriweatherTextTheme(
    TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: colorScheme.textPrimary,
        letterSpacing: -0.5,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: colorScheme.textPrimary,
        letterSpacing: -0.25,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorScheme.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: colorScheme.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colorScheme.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: colorScheme.textPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: colorScheme.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: colorScheme.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: colorScheme.textSecondary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: colorScheme.textSecondary,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: colorScheme.textPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: colorScheme.textPrimary,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: colorScheme.textSecondary,
      ),
    ),
  );

  TextStyle get brandTitle => GoogleFonts.playfairDisplay(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: colorScheme.textPrimary,
    fontStyle: FontStyle.italic,
  );

  TextStyle get brandSubtitle => GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: colorScheme.textSecondary,
    letterSpacing: 1.5,
  );
}
