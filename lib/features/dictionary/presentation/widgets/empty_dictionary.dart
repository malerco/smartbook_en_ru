import 'package:flutter/material.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

class EmptyDictionary extends StatelessWidget {
  const EmptyDictionary({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colors = context.colors;
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: colors.surface,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.menu_book_outlined,
                color: colors.textSecondary,
                size: 40,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.dictionaryEmpty,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: colors.textPrimary,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.dictionaryEmptyHint,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colors.textSecondary,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
