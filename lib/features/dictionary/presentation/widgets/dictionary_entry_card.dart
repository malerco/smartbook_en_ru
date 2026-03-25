import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';

class DictionaryEntryCard extends StatelessWidget {
  final DictionaryEntry entry;
  final VoidCallback onDelete;

  const DictionaryEntryCard({
    super.key,
    required this.entry,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(entry.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppColors.error,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.delete_outline,
          color: Colors.white,
        ),
      ),
      onDismissed: (_) => onDelete(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    entry.word,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (entry.transcription != null)
                  Text(
                    '[${entry.transcription}]',
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              entry.translation,
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 16,
              ),
            ),
            if (entry.example != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.format_quote,
                      color: AppColors.textSecondary,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        entry.example!,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
