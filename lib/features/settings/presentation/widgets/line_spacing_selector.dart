import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/settings_bloc.dart';

class LineSpacingSelector extends StatelessWidget {
  final LineSpacingOption currentSpacing;

  const LineSpacingSelector({
    super.key,
    required this.currentSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;

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
