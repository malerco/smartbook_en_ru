part of 'chapter_translation_bloc.dart';

enum ChapterTranslationErrorType {
  noInternet,
  timeout,
  serverError,
}

@freezed
class ChapterTranslationState with _$ChapterTranslationState {
  const factory ChapterTranslationState.initial() = ChapterTranslationInitial;
  
  /// Initial loading with progress indicator
  const factory ChapterTranslationState.loading({
    @Default(0.0) double progress,
    @Default(0) int completedParagraphs,
    @Default(0) int totalParagraphs,
  }) = ChapterTranslationLoading;
  
  /// Partial load - user can read while loading continues in background
  const factory ChapterTranslationState.partial({
    required Map<int, String> translations,
    required Set<int> failedIndices,
    required double progress,
    required int totalParagraphs,
    required bool isLoading,
  }) = ChapterTranslationPartial;
  
  /// Fully loaded
  const factory ChapterTranslationState.loaded({
    required Map<int, String> translations,
    @Default({}) Set<int> failedIndices,
  }) = ChapterTranslationLoaded;
  
  const factory ChapterTranslationState.error({
    required String message,
    required ChapterTranslationErrorType errorType,
  }) = ChapterTranslationError;
  
  const factory ChapterTranslationState.skipped() = ChapterTranslationSkippedState;
}
