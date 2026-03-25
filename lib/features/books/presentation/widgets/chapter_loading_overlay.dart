import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/chapter_translation_bloc.dart';

class ChapterLoadingOverlay extends StatelessWidget {
  final String bookId;
  final int chapterIndex;
  final String chapterContent;
  final TranslationDirection direction;
  final VoidCallback onSkip;

  const ChapterLoadingOverlay({
    super.key,
    required this.bookId,
    required this.chapterIndex,
    required this.chapterContent,
    required this.direction,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;

    return BlocBuilder<ChapterTranslationBloc, ChapterTranslationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: (progress, completed, total) => _buildLoadingContent(
            context, appLocale, colors, progress, completed, total,
          ),
          error: (message, errorType) => _buildErrorContent(
            context, appLocale, colors, errorType, {},
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoadingContent(
    BuildContext context,
    AppLocalizations appLocale,
    AppColorScheme colors,
    double progress,
    int completed,
    int total,
  ) {
    return Container(
      color: colors.background.withValues(alpha: 0.95),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 64,
                height: 64,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: progress > 0 ? progress : null,
                      strokeWidth: 4,
                      color: colors.primary,
                      backgroundColor: colors.primary.withValues(alpha: 0.2),
                    ),
                    if (total > 0)
                      Text(
                        '${(progress * 100).toInt()}%',
                        style: TextStyle(
                          color: colors.textPrimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                appLocale.loadingTranslation,
                style: TextStyle(
                  color: colors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              if (total > 0)
                Text(
                  '$completed / $total',
                  style: TextStyle(
                    color: colors.textSecondary,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  appLocale.loadingTranslationHint,
                  style: TextStyle(
                    color: colors.textSecondary,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: onSkip,
                child: Text(
                  appLocale.skipTranslation,
                  style: TextStyle(color: colors.textSecondary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildErrorContent(
    BuildContext context,
    AppLocalizations appLocale,
    AppColorScheme colors,
    ChapterTranslationErrorType errorType,
    Set<int> failedIndices,
  ) {
    return Container(
      color: colors.background.withValues(alpha: 0.95),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.cloud_off_outlined,
                size: 64,
                color: colors.error,
              ),
              const SizedBox(height: 24),
              Text(
                appLocale.translationFailed,
                style: TextStyle(
                  color: colors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                appLocale.translationFailedHint,
                style: TextStyle(
                  color: colors.textSecondary,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: onSkip,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: colors.textSecondary,
                        side: BorderSide(color: colors.textSecondary),
                      ),
                      child: Text(appLocale.skipTranslation),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ChapterTranslationBloc>().add(
                          ChapterTranslationEvent.started(
                            bookId: bookId,
                            chapterIndex: chapterIndex,
                            chapterContent: chapterContent,
                            direction: direction,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        foregroundColor: colors.white,
                      ),
                      child: Text(appLocale.retryTranslation),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
