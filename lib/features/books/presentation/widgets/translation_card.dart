import 'package:flutter/material.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/domain/entities/translation_result.dart';
import '../../../../core/theme/theme.dart';

class TranslationCard extends StatelessWidget {
  final TranslationResult? result;
  final bool isLoading;
  final bool isWord;
  final bool isInDictionary;
  final VoidCallback? onDismiss;
  final VoidCallback? onSaveToVocabulary;
  final VoidCallback? onRemoveFromVocabulary;

  const TranslationCard({
    super.key,
    this.result,
    this.isLoading = false,
    this.isWord = true,
    this.isInDictionary = false,
    this.onDismiss,
    this.onSaveToVocabulary,
    this.onRemoveFromVocabulary,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
        border: Border.all(
          color: colors.primary.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: isLoading ? _buildLoading(context, colors) : _buildContent(context, colors),
    );
  }

  Widget _buildLoading(BuildContext context, AppColorScheme colors) {
    final appLocale = AppLocalizations.of(context)!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: colors.primary,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          appLocale.translating,
          style: TextStyle(
            color: colors.textSecondary,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, AppColorScheme colors) {
    if (result == null) return const SizedBox.shrink();
    final appLocale = AppLocalizations.of(context)!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                result!.originalText,
                style: TextStyle(
                  color: colors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (onDismiss != null)
              GestureDetector(
                onTap: onDismiss,
                child: Icon(
                  Icons.close,
                  color: colors.textSecondary,
                  size: 20,
                ),
              ),
          ],
        ),
        if (result!.transcription.isNotEmpty && isWord) ...[
          const SizedBox(height: 4),
          Text(
            '[${result!.transcription}]',
            style: TextStyle(
              color: colors.textSecondary,
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: result!.variants.length > 1
              ? _buildVariants(colors)
              : Text(
                  result!.translatedText,
                  style: TextStyle(
                    color: colors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
        if (isWord) ...[
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              onPressed: isInDictionary ? onRemoveFromVocabulary : onSaveToVocabulary,
              icon: Icon(
                isInDictionary ? Icons.bookmark_remove_outlined : Icons.bookmark_add_outlined,
                color: isInDictionary ? colors.error : colors.primary,
              ),
              label: Text(
                isInDictionary ? appLocale.removeFromVocabulary : appLocale.saveToVocabulary,
                style: TextStyle(color: isInDictionary ? colors.error : colors.primary),
              ),
              style: TextButton.styleFrom(
                backgroundColor: isInDictionary 
                    ? colors.error.withValues(alpha: 0.1) 
                    : colors.primary.withValues(alpha: 0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildVariants(AppColorScheme colors) {
    return Wrap(
      spacing: 8,
      runSpacing: 6,
      children: result!.variants.asMap().entries.map((entry) {
        final index = entry.key;
        final variant = entry.value;
        final isFirst = index == 0;
        
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: isFirst 
                ? colors.primary.withValues(alpha: 0.2)
                : colors.primary.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(6),
            border: isFirst 
                ? Border.all(color: colors.primary.withValues(alpha: 0.5))
                : null,
          ),
          child: Text(
            variant,
            style: TextStyle(
              color: colors.primary,
              fontSize: isFirst ? 16 : 14,
              fontWeight: isFirst ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        );
      }).toList(),
    );
  }
}
