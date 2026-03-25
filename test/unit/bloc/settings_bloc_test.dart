import 'package:flutter_test/flutter_test.dart';
import 'package:smartbook_en_ru/core/domain/repositories/settings_repository.dart';

void main() {
  group('SettingsRepository Enums', () {
    test('AppThemeMode has correct values', () {
      expect(AppThemeMode.values.length, 3);
      expect(AppThemeMode.values, contains(AppThemeMode.dark));
      expect(AppThemeMode.values, contains(AppThemeMode.light));
      expect(AppThemeMode.values, contains(AppThemeMode.system));
    });

    test('FontSizeOption has correct values', () {
      expect(FontSizeOption.values.length, 4);
      expect(FontSizeOption.values, contains(FontSizeOption.small));
      expect(FontSizeOption.values, contains(FontSizeOption.medium));
      expect(FontSizeOption.values, contains(FontSizeOption.large));
      expect(FontSizeOption.values, contains(FontSizeOption.extraLarge));
    });

    test('LineSpacingOption has correct values', () {
      expect(LineSpacingOption.values.length, 3);
      expect(LineSpacingOption.values, contains(LineSpacingOption.compact));
      expect(LineSpacingOption.values, contains(LineSpacingOption.normal));
      expect(LineSpacingOption.values, contains(LineSpacingOption.relaxed));
    });
  });
}
