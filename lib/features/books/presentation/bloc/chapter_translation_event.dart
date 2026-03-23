part of 'chapter_translation_bloc.dart';

@freezed
class ChapterTranslationEvent with _$ChapterTranslationEvent {
  const factory ChapterTranslationEvent.started({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required TranslationDirection direction,
  }) = ChapterTranslationStarted;

  const factory ChapterTranslationEvent.retryFailed({
    required String bookId,
    required int chapterIndex,
    required String chapterContent,
    required Set<int> failedIndices,
    required TranslationDirection direction,
  }) = ChapterTranslationRetryFailed;

  const factory ChapterTranslationEvent.skipped() = ChapterTranslationSkipped;
}
