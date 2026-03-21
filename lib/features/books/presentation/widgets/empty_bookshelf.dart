import 'package:flutter/material.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

class EmptyBookshelf extends StatelessWidget {
  const EmptyBookshelf({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colors = context.colors;
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEmptyBookPlaceholder(context, l10n, colors),
          const SizedBox(height: 24),
          Text(
            l10n.noBooks,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: colors.textPrimary,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.noBooksHint,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colors.textSecondary,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyBookPlaceholder(BuildContext context, AppLocalizations l10n, AppColorScheme colors) {
    return GestureDetector(
      onTap: () {
        _showAddBookDialog(context, colors);
      },
      child: Container(
        width: 120,
        height: 180,
        decoration: BoxDecoration(
          color: colors.surface.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colors.surfaceVariant.withOpacity(0.5),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: colors.primary.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: colors.primary,
                size: 28,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              l10n.addBook,
              style: TextStyle(
                color: colors.textSecondary,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _showAddBookDialog(BuildContext context, AppColorScheme colors) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.addBook),
        backgroundColor: colors.surface,
      ),
    );
  }
}
