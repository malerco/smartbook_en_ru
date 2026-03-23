import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/domain/repositories/chapter_translation_repository.dart';

part 'chapter_translation_bloc.freezed.dart';
part 'chapter_translation_event.dart';
part 'chapter_translation_state.dart';

/// Minimum paragraphs to load before showing content
const int _minParagraphsBeforeReading = 5;

@injectable
class ChapterTranslationBloc extends Bloc<ChapterTranslationEvent, ChapterTranslationState> {
  final ChapterTranslationRepository _repository;
  StreamSubscription? _translationSubscription;

  ChapterTranslationBloc(this._repository) 
      : super(const ChapterTranslationState.initial()) {
    on<ChapterTranslationStarted>(_onStarted);
    on<ChapterTranslationRetryFailed>(_onRetryFailed);
    on<ChapterTranslationSkipped>(_onSkipped);
  }

  @override
  Future<void> close() {
    _translationSubscription?.cancel();
    return super.close();
  }

  Future<void> _onStarted(
    ChapterTranslationStarted event,
    Emitter<ChapterTranslationState> emit,
  ) async {
    _translationSubscription?.cancel();
    
    emit(const ChapterTranslationState.loading());

    final sourceLanguage = event.direction == TranslationDirection.enToRu ? 'en' : 'ru';
    final targetLanguage = event.direction == TranslationDirection.enToRu ? 'ru' : 'en';

    bool hasShownPartial = false;

    await emit.forEach(
      _repository.translateChapterStream(
        bookId: event.bookId,
        chapterIndex: event.chapterIndex,
        chapterContent: event.chapterContent,
        sourceLanguage: sourceLanguage,
        targetLanguage: targetLanguage,
      ),
      onData: (progress) {
        // Show loading progress until we have enough paragraphs
        if (progress.translations.length < _minParagraphsBeforeReading && !progress.isComplete) {
          return ChapterTranslationState.loading(
            progress: progress.progress,
            completedParagraphs: progress.completedParagraphs,
            totalParagraphs: progress.totalParagraphs,
          );
        }
        
        hasShownPartial = true;
        
        // Complete
        if (progress.isComplete) {
          return ChapterTranslationState.loaded(
            translations: progress.translations,
            failedIndices: progress.failedIndices,
          );
        }
        
        // Partial - allow reading while loading continues
        return ChapterTranslationState.partial(
          translations: progress.translations,
          failedIndices: progress.failedIndices,
          progress: progress.progress,
          totalParagraphs: progress.totalParagraphs,
          isLoading: true,
        );
      },
      onError: (error, stackTrace) {
        return ChapterTranslationState.error(
          message: error.toString(),
          errorType: ChapterTranslationErrorType.serverError,
        );
      },
    );
  }

  Future<void> _onRetryFailed(
    ChapterTranslationRetryFailed event,
    Emitter<ChapterTranslationState> emit,
  ) async {
    final currentState = state;
    Map<int, String> existingTranslations = {};
    
    if (currentState is ChapterTranslationLoaded) {
      existingTranslations = currentState.translations;
    } else if (currentState is ChapterTranslationPartial) {
      existingTranslations = currentState.translations;
    }

    final sourceLanguage = event.direction == TranslationDirection.enToRu ? 'en' : 'ru';
    final targetLanguage = event.direction == TranslationDirection.enToRu ? 'ru' : 'en';

    await emit.forEach(
      _repository.retryFailedParagraphs(
        bookId: event.bookId,
        chapterIndex: event.chapterIndex,
        chapterContent: event.chapterContent,
        failedIndices: event.failedIndices,
        sourceLanguage: sourceLanguage,
        targetLanguage: targetLanguage,
      ),
      onData: (progress) {
        if (progress.isComplete) {
          return ChapterTranslationState.loaded(
            translations: progress.translations,
            failedIndices: progress.failedIndices,
          );
        }
        
        return ChapterTranslationState.partial(
          translations: progress.translations,
          failedIndices: progress.failedIndices,
          progress: progress.progress,
          totalParagraphs: progress.totalParagraphs,
          isLoading: true,
        );
      },
      onError: (error, stackTrace) {
        return ChapterTranslationState.loaded(
          translations: existingTranslations,
          failedIndices: event.failedIndices,
        );
      },
    );
  }

  void _onSkipped(
    ChapterTranslationSkipped event,
    Emitter<ChapterTranslationState> emit,
  ) {
    _translationSubscription?.cancel();
    emit(const ChapterTranslationState.skipped());
  }
}
