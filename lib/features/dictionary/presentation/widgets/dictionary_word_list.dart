import 'package:flutter/material.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
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
    
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: entries.length,
      separatorBuilder: (context, index) => Divider(
        color: colors.divider,
        height: 1,
      ),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return _WordListItem(
          entry: entry,
          onDelete: () => onDelete(entry.id),
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
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: entry.word,
                        style: TextStyle(
                          color: colors.textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' — ',
                        style: TextStyle(
                          color: colors.textSecondary,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: entry.translation,
                        style: TextStyle(
                          color: colors.textSecondary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: colors.textSecondary,
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
                      'Delete',
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
