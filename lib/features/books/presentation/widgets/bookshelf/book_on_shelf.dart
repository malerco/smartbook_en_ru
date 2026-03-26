import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../core/domain/entities/book.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../../core/theme/theme.dart';

class BookOnShelf extends StatelessWidget {
  final Book book;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const BookOnShelf({
    super.key,
    required this.book,
    this.onTap,
    this.onDelete,
  });

  void _showContextMenu(BuildContext context, Offset position) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(position.dx, position.dy, 0, 0),
        Offset.zero & overlay.size,
      ),
      color: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colors.surfaceVariant,
          width: 1,
        ),
      ),
      elevation: 8,
      items: [
        PopupMenuItem<String>(
          value: 'delete',
          child: Row(
            children: [
              Icon(
                Icons.delete_outline,
                color: colors.error,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                appLocale.deleteBook,
                style: TextStyle(
                  color: colors.error,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'delete' && onDelete != null && context.mounted) {
        _showDeleteConfirmation(context, colors, appLocale);
      }
    });
  }

  void _showDeleteConfirmation(BuildContext context, AppColorScheme colors, AppLocalizations appLocale) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          appLocale.deleteBook,
          style: TextStyle(
            color: colors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          book.title,
          style: TextStyle(
            color: colors.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(
              appLocale.cancel,
              style: TextStyle(color: colors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              onDelete?.call();
            },
            child: Text(
              appLocale.confirm,
              style: TextStyle(
                color: colors.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final bookColor = _getBookColor(book.title.hashCode);

    return GestureDetector(
      onTap: onTap,
      onLongPressStart: (details) => _showContextMenu(context, details.globalPosition),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    bookColor.withOpacity(0.9),
                    bookColor,
                    bookColor.withOpacity(0.8),
                  ],
                  stops: const [0.0, 0.1, 1.0],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(3, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.transparent,
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  if (book.coverPath != null)
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(2),
                      ),
                      child: Image.file(
                        File(book.coverPath!),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (_, __, ___) => _buildTitleOnSpine(book.title),
                      ),
                    )
                  else
                    _buildTitleOnSpine(book.title),
                ],
              ),
            ),
          ),
          if (book.progress > 0)
            Container(
              height: 3,
              margin: const EdgeInsets.only(top: 2),
              child: LinearProgressIndicator(
                value: book.progress,
                backgroundColor: colors.surfaceVariant,
                valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTitleOnSpine(String title) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: RotatedBox(
        quarterTurns: 3,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  color: Colors.black54,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Color _getBookColor(int hash) {
    final colors = [
      const Color(0xFF8B4513),
      const Color(0xFF2F4F4F),
      const Color(0xFF800020),
      const Color(0xFF1B4D3E),
      const Color(0xFF483D8B),
      const Color(0xFF704214),
      const Color(0xFF355E3B),
      const Color(0xFF722F37),
    ];
    return colors[hash.abs() % colors.length];
  }
}
