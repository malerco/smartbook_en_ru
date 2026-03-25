import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    final textStyles = context.appTextTheme.textTheme;

    return Scaffold(
      backgroundColor: colors.settingsBackground,
      appBar: AppBar(
        backgroundColor: colors.settingsBackground,
        elevation: 0,
        title: Text(
          appLocale.settingsTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colors.textPrimary,
            fontSize: 24,
          ),
        ),
        centerTitle: false,
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(
              child: CircularProgressIndicator(color: colors.primary),
            ),
            loaded: (themeMode, fontSize, lineSpacing, fontFamily, primaryLanguage, appLanguage, appVersion) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                children: [
                  _SettingsSection(
                    title: appLocale.appTheme,
                    isMultipleRows: false,
                    child: Expanded(
                      child: _ThemeToggle(
                        currentTheme: themeMode,
                        appLocale: appLocale,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _SettingsSection(
                    title: appLocale.appLanguage,
                    isMultipleRows: false,
                    child: Expanded(
                      child: _LanguageToggle(
                        currentLanguage: appLanguage,
                        isAppLanguage: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _SettingsSection(
                    title: appLocale.fontSize,
                    child: _FontSizeSelector(currentSize: fontSize, appLocale: appLocale),
                  ),
                  const SizedBox(height: 20),
                  _SettingsSection(
                    title: appLocale.lineSpacing,
                    child: _LineSpacingSelector(currentSpacing: lineSpacing, appLocale: appLocale),
                  ),
                  const SizedBox(height: 20),
                  _SettingsSection(
                    title: appLocale.appVersion,
                    isMultipleRows: false,
                    child: Text(
                      appVersion,
                      style: textStyles.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isMultipleRows;

  const _SettingsSection({
    required this.title,
    required this.child,
    this.isMultipleRows = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.appTextTheme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: textStyles.bodyMedium,
              ),
            ),
            if (!isMultipleRows)...[
              const SizedBox(width: 30,),
              child
            ],
          ],
        ),
        if (isMultipleRows) ...[
          const SizedBox(height: 10),
          child,
        ],
      ],
    );
  }
}

class _ThemeToggle extends StatelessWidget {
  final AppThemeMode currentTheme;
  final AppLocalizations appLocale;

  const _ThemeToggle({
    required this.currentTheme,
    required this.appLocale,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: colors.settingsSectionBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.divider, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: _ThemeOption(
              label: appLocale.themeLight,
              isSelected: currentTheme == AppThemeMode.light,
              onTap: () {
                context.read<SettingsBloc>().add(
                  const SettingsEvent.themeChanged(AppThemeMode.light),
                );
              },
              isLeft: true,
            ),
          ),
          Expanded(
            child: _ThemeOption(
              label: appLocale.themeDark,
              isSelected: currentTheme == AppThemeMode.dark,
              onTap: () {
                context.read<SettingsBloc>().add(
                  const SettingsEvent.themeChanged(AppThemeMode.dark),
                );
              },
              isLeft: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isLeft;

  const _ThemeOption({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : Colors.transparent,
          borderRadius: BorderRadius.horizontal(
            left: isLeft ? const Radius.circular(11) : Radius.zero,
            right: !isLeft ? const Radius.circular(11) : Radius.zero,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? colors.onPrimary : colors.textSecondary,
              fontSize: 15,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class _LanguageToggle extends StatelessWidget {
  final String currentLanguage;
  final bool isAppLanguage;

  const _LanguageToggle({
    required this.currentLanguage,
    required this.isAppLanguage,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: colors.settingsSectionBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.divider, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: _LanguageOption(
              label: '🇬🇧',
              isSelected: currentLanguage == 'en',
              onTap: () {
                if (isAppLanguage) {
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.appLanguageChanged('en'),
                  );
                } else {
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.primaryLanguageChanged('en'),
                  );
                }
              },
              isLeft: true,
            ),
          ),
          Expanded(
            child: _LanguageOption(
              label: '🇷🇺',
              isSelected: currentLanguage == 'ru',
              onTap: () {
                if (isAppLanguage) {
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.appLanguageChanged('ru'),
                  );
                } else {
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.primaryLanguageChanged('ru'),
                  );
                }
              },
              isLeft: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isLeft;

  const _LanguageOption({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? colors.primary : Colors.transparent,
          borderRadius: BorderRadius.horizontal(
            left: isLeft ? const Radius.circular(11) : Radius.zero,
            right: !isLeft ? const Radius.circular(11) : Radius.zero,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? colors.onPrimary : colors.textSecondary,
              fontSize: 15,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}



class _FontSizeSelector extends StatelessWidget {
  final FontSizeOption currentSize;
  final AppLocalizations appLocale;

  const _FontSizeSelector({
    required this.currentSize,
    required this.appLocale,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final options = [
      (FontSizeOption.small, appLocale.fontSizeSmall),
      (FontSizeOption.medium, appLocale.fontSizeMedium),
      (FontSizeOption.large, appLocale.fontSizeLarge),
    ];

    return Container(
      decoration: BoxDecoration(
        color: colors.settingsSectionBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.divider, width: 1),
      ),
      child: Row(
        children: options.asMap().entries.map((entry) {
          final index = entry.key;
          final (option, label) = entry.value;
          final isSelected = currentSize == option;
          final isFirst = index == 0;
          final isLast = index == options.length - 1;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<SettingsBloc>().add(
                  SettingsEvent.fontSizeChanged(option),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: isSelected ? colors.primary : Colors.transparent,
                  borderRadius: BorderRadius.horizontal(
                    left: isFirst ? const Radius.circular(11) : Radius.zero,
                    right: isLast ? const Radius.circular(11) : Radius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: isSelected ? colors.onPrimary : colors.textSecondary,
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _LineSpacingSelector extends StatelessWidget {
  final LineSpacingOption currentSpacing;
  final AppLocalizations appLocale;

  const _LineSpacingSelector({
    required this.currentSpacing,
    required this.appLocale,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final options = [
      (LineSpacingOption.compact, appLocale.lineSpacingNormal),
      (LineSpacingOption.normal, appLocale.fontSizeMedium),
      (LineSpacingOption.relaxed, appLocale.lineSpacingWide),
    ];

    return Container(
      decoration: BoxDecoration(
        color: colors.settingsSectionBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.divider, width: 1),
      ),
      child: Row(
        children: options.asMap().entries.map((entry) {
          final index = entry.key;
          final (option, label) = entry.value;
          final isSelected = currentSpacing == option;
          final isFirst = index == 0;
          final isLast = index == options.length - 1;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<SettingsBloc>().add(
                  SettingsEvent.lineSpacingChanged(option),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: isSelected ? colors.primary : Colors.transparent,
                  borderRadius: BorderRadius.horizontal(
                    left: isFirst ? const Radius.circular(11) : Radius.zero,
                    right: isLast ? const Radius.circular(11) : Radius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: isSelected ? colors.onPrimary : colors.textSecondary,
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
