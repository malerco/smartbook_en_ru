part of 'reader_translation_bloc.dart';

enum TranslationErrorType {
  noInternet,
  timeout,
  serverError,
  unknown,
}

@freezed
class ReaderTranslationState with _$ReaderTranslationState {
  const factory ReaderTranslationState.initial() = ReaderTranslationInitial;

  const factory ReaderTranslationState.translating({
    required String text,
    required bool isWord,
  }) = ReaderTranslationTranslating;

  const factory ReaderTranslationState.translated({
    required TranslationResult result,
    required bool isWord,
  }) = ReaderTranslationTranslated;

  const factory ReaderTranslationState.paragraphTranslating({
    required int paragraphIndex,
    required String originalText,
  }) = ReaderTranslationParagraphTranslating;

  const factory ReaderTranslationState.paragraphTranslated({
    required int paragraphIndex,
    required String originalText,
    required String translatedText,
  }) = ReaderTranslationParagraphTranslated;

  const factory ReaderTranslationState.error({
    required String message,
    TranslationErrorType? errorType,
  }) = ReaderTranslationError;
}
