import 'package:flutter/material.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

class DictionaryWordList extends StatelessWidget {
  final List<DictionaryEntry> entries;
  final Function(String) onDelete;

  const DictionaryWordList({
    super.key,
    required this.entries,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: entries.length,
      separatorBuilder: (context, index) => Divider(
        color: colors.divider,
        height: 1,
      ),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return Dismissible(
          key: Key(entry.id),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            color: colors.error,
            child: Icon(
              Icons.delete_outline,
              color: colors.white,
            ),
          ),
          confirmDismiss: (direction) async {
            return await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: colors.surface,
                title: Text(
                  appLocale.deleteWord,
                  style: TextStyle(color: colors.textPrimary),
                ),
                content: Text(
                  '${appLocale.deleteWord} "${entry.word}"?',
                  style: TextStyle(color: colors.textSecondary),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(appLocale.cancel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text(
                      appLocale.confirm,
                      style: TextStyle(color: colors.error),
                    ),
                  ),
                ],
              ),
            ) ?? false;
          },
          onDismissed: (_) => onDelete(entry.id),
          child: _WordListItem(
            entry: entry,
            onDelete: () => onDelete(entry.id),
          ),
        );
      },
    );
  }
}

class _WordListItem extends StatelessWidget {
  final DictionaryEntry entry;
  final VoidCallback onDelete;

  const _WordListItem({
    required this.entry,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: entry.isLearned 
            ? colors.success.withOpacity(0.1) 
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (entry.isLearned)
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 4),
              child: Icon(
                Icons.check_circle,
                color: colors.success,
                size: 16,
              ),
            ),
          Expanded(
            flex: 3,
            child: Text(
              entry.word,
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (entry.transcription != null && entry.transcription!.isNotEmpty)
            Expanded(
              flex: 2,
              child: Text(
                entry.transcription!,
                style: TextStyle(
                  color: colors.textHint,
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          Expanded(
            flex: 3,
            child: Text(
              entry.translation,
              style: TextStyle(
                color: colors.textSecondary,
                fontSize: 14,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: colors.textSecondary,
              size: 20,
            ),
            onSelected: (value) {
              if (value == 'delete') {
                onDelete();
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(Icons.delete_outline, color: colors.error, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      appLocale.deleteWord,
                      style: TextStyle(color: colors.error),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
