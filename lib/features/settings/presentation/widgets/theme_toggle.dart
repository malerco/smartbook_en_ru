import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/settings_bloc.dart';

class ThemeToggle extends StatelessWidget {
  final AppThemeMode currentTheme;

  const ThemeToggle({
    super.key,
    required this.currentTheme,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;

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
