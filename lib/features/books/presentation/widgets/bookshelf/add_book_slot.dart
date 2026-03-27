import 'package:flutter/material.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../../core/theme/theme.dart';

class AddBookSlot extends StatelessWidget {
  final VoidCallback onTap;

  const AddBookSlot({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: colors.surface.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colors.primary.withOpacity(0.5),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_rounded,
              color: colors.primary,
              size: 32,
            ),
            const SizedBox(height: 4),
            Text(
              appLocale.addNewBook,
              style: TextStyle(
                color: colors.primary,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
