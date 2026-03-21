import 'package:flutter/material.dart';

abstract class AppColorScheme {
  Color get white;
  Color get black;

  // Primary colors
  Color get primary;
  Color get primaryVariant;
  Color get onPrimary;

  // Secondary colors  
  Color get secondary;
  Color get secondaryVariant;
  Color get onSecondary;

  // Background colors
  Color get background;
  Color get surface;
  Color get surfaceVariant;
  Color get onBackground;
  Color get onSurface;

  // Text colors
  Color get textPrimary;
  Color get textSecondary;
  Color get textHint;
  Color get textDisabled;

  // Status colors
  Color get error;
  Color get success;
  Color get warning;

  // Special colors for app design
  Color get cardBackground;
  Color get divider;
  Color get shimmer;
  Color get shadow;
  
  // Navigation
  Color get navBarBackground;
  Color get navBarSelected;
  Color get navBarUnselected;

  // Settings page specific
  Color get settingsBackground;
  Color get settingsSectionBackground;
  Color get settingsItemBackground;

  // Library/Bookshelf specific
  Color get shelfWood;
  Color get shelfWoodDark;
  Color get bookshelfBackground;

  // Dictionary specific
  Color get dictionaryBackground;
  Color get wordCardBackground;

  // Gradients
  LinearGradient get backgroundGradient;
  LinearGradient get primaryGradient;
  LinearGradient get shelfGradient;

  Brightness get brightness;
}

class DarkColorScheme implements AppColorScheme {
  const DarkColorScheme();
  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get primary => const Color(0xFFD4A574);
  @override
  Color get primaryVariant => const Color(0xFFB8956A);
  @override
  Color get onPrimary => const Color(0xFF1A1A1A);

  @override
  Color get secondary => const Color(0xFF8B7355);
  @override
  Color get secondaryVariant => const Color(0xFF6B5344);
  @override
  Color get onSecondary => const Color(0xFFFFF8F0);

  @override
  Color get background => const Color(0xFF1C1410);
  @override
  Color get surface => const Color(0xFF2A2018);
  @override
  Color get surfaceVariant => const Color(0xFF3D3028);
  @override
  Color get onBackground => const Color(0xFFFFF8F0);
  @override
  Color get onSurface => const Color(0xFFFFF8F0);

  @override
  Color get textPrimary => const Color(0xFFFFF8F0);
  @override
  Color get textSecondary => const Color(0xFFB8A898);
  @override
  Color get textHint => const Color(0xFF8B7B6B);
  @override
  Color get textDisabled => const Color(0xFF5C5248);

  @override
  Color get error => const Color(0xFFCF6679);
  @override
  Color get success => const Color(0xFF4CAF50);
  @override
  Color get warning => const Color(0xFFFFB74D);

  @override
  Color get cardBackground => const Color(0xFF2A2018);
  @override
  Color get divider => const Color(0xFF3D3028);
  @override
  Color get shimmer => const Color(0xFF3D3028);
  @override
  Color get shadow => const Color(0x40000000);

  @override
  Color get navBarBackground => const Color(0xFF2A2018);
  @override
  Color get navBarSelected => const Color(0xFFD4A574);
  @override
  Color get navBarUnselected => const Color(0xFF8B7B6B);

  @override
  Color get settingsBackground => const Color(0xFF1C1410);
  @override
  Color get settingsSectionBackground => const Color(0xFF2A2018);
  @override
  Color get settingsItemBackground => const Color(0xFF3D3028);

  @override
  Color get shelfWood => const Color(0xFF5D4037);
  @override
  Color get shelfWoodDark => const Color(0xFF3E2723);
  @override
  Color get bookshelfBackground => const Color(0xFF1C1410);

  @override
  Color get dictionaryBackground => const Color(0xFF2A2018);
  @override
  Color get wordCardBackground => const Color(0xFF3D3028);

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF2A2018), Color(0xFF1C1410)],
  );

  @override
  LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFD4A574), Color(0xFFB8956A)],
  );

  @override
  LinearGradient get shelfGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF6D4C41), Color(0xFF4E342E)],
  );

  @override
  Brightness get brightness => Brightness.dark;
}

class LightColorScheme implements AppColorScheme {
  const LightColorScheme();
  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get primary => const Color(0xFF8B6914);
  @override
  Color get primaryVariant => const Color(0xFF6D5310);
  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  @override
  Color get secondary => const Color(0xFF5D4037);
  @override
  Color get secondaryVariant => const Color(0xFF4E342E);
  @override
  Color get onSecondary => const Color(0xFFFFFFFF);

  @override
  Color get background => const Color(0xFFF5EFE6);
  @override
  Color get surface => const Color(0xFFFFFFFF);
  @override
  Color get surfaceVariant => const Color(0xFFF0E8DC);
  @override
  Color get onBackground => const Color(0xFF2C2416);
  @override
  Color get onSurface => const Color(0xFF2C2416);

  @override
  Color get textPrimary => const Color(0xFF2C2416);
  @override
  Color get textSecondary => const Color(0xFF6B5D4D);
  @override
  Color get textHint => const Color(0xFF9E8E7E);
  @override
  Color get textDisabled => const Color(0xFFBDB0A0);

  @override
  Color get error => const Color(0xFFB00020);
  @override
  Color get success => const Color(0xFF2E7D32);
  @override
  Color get warning => const Color(0xFFFF8F00);

  @override
  Color get cardBackground => const Color(0xFFFFFFFF);
  @override
  Color get divider => const Color(0xFFE0D8CC);
  @override
  Color get shimmer => const Color(0xFFE8E0D4);
  @override
  Color get shadow => const Color(0x1A000000);

  @override
  Color get navBarBackground => const Color(0xFFFFFFFF);
  @override
  Color get navBarSelected => const Color(0xFF8B6914);
  @override
  Color get navBarUnselected => const Color(0xFF9E8E7E);

  @override
  Color get settingsBackground => const Color(0xFFF5EFE6);
  @override
  Color get settingsSectionBackground => const Color(0xFFFFFFFF);
  @override
  Color get settingsItemBackground => const Color(0xFFF8F4ED);

  @override
  Color get shelfWood => const Color(0xFF8D6E63);
  @override
  Color get shelfWoodDark => const Color(0xFF6D4C41);
  @override
  Color get bookshelfBackground => const Color(0xFFF5EFE6);

  @override
  Color get dictionaryBackground => const Color(0xFFF5EFE6);
  @override
  Color get wordCardBackground => const Color(0xFFFFFFFF);

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFAF6F0), Color(0xFFF5EFE6)],
  );

  @override
  LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF8B6914), Color(0xFF6D5310)],
  );

  @override
  LinearGradient get shelfGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFA1887F), Color(0xFF8D6E63)],
  );

  @override
  Brightness get brightness => Brightness.light;
}
