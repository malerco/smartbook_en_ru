import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/settings_bloc.dart';

class LanguageToggle extends StatelessWidget {
  final String currentLanguage;
  final bool isAppLanguage;

  const LanguageToggle({
    super.key,
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
