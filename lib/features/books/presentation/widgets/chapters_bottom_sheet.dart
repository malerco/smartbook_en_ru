import 'package:flutter/material.dart';
import '../../../../core/domain/entities/book_content.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

class ChaptersBottomSheet extends StatelessWidget {
  final List<BookChapter> chapters;
  final int currentChapterIndex;
  final Function(int index) onChapterSelected;

  const ChaptersBottomSheet({
    super.key,
    required this.chapters,
    required this.currentChapterIndex,
    required this.onChapterSelected,
  });

  static void show({
    required BuildContext context,
    required List<BookChapter> chapters,
    required int currentChapterIndex,
    required Function(int index) onChapterSelected,
  }) {
    final colors = context.colors;

    showModalBottomSheet(
      context: context,
      backgroundColor: colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (dialogContext) {
        return ChaptersBottomSheet(
          chapters: chapters,
          currentChapterIndex: currentChapterIndex,
          onChapterSelected: (index) {
            Navigator.of(dialogContext).pop();
            onChapterSelected(index);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              appLocale.chapters,
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(color: colors.surfaceVariant),
          Expanded(
            child: ListView.builder(
              itemCount: chapters.length,
              itemBuilder: (context, index) {
                final chapter = chapters[index];
                final isCurrentChapter = index == currentChapterIndex;

                return ListTile(
                  leading: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isCurrentChapter
                          ? colors.primary
                          : colors.textSecondary,
                      fontWeight: isCurrentChapter
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  title: Text(
                    chapter.title,
                    style: TextStyle(
                      color: isCurrentChapter
                          ? colors.primary
                          : colors.textPrimary,
                      fontWeight: isCurrentChapter
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  selected: isCurrentChapter,
                  onTap: () => onChapterSelected(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
