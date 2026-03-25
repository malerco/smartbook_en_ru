part of 'reader_translation_bloc.dart';

@freezed
class ReaderTranslationEvent with _$ReaderTranslationEvent {
  const factory ReaderTranslationEvent.wordTapped({
    required String word,
    required TranslationDirection direction,
  }) = ReaderTranslationWordTapped;

  const factory ReaderTranslationEvent.textSelected({
    required String text,
    required TranslationDirection direction,
  }) = ReaderTranslationTextSelected;

  const factory ReaderTranslationEvent.paragraphSwiped({
    required int paragraphIndex,
    required String originalText,
    required TranslationDirection direction,
  }) = ReaderTranslationParagraphSwiped;

  const factory ReaderTranslationEvent.dismissed() = ReaderTranslationDismissed;

  const factory ReaderTranslationEvent.paragraphRestored({
    required int paragraphIndex,
  }) = ReaderTranslationParagraphRestored;
}
