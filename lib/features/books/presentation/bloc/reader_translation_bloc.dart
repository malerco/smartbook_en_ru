import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/domain/entities/translation_result.dart';
import '../../../../core/ml/mlkit_translation_model.dart';
import '../../../../core/services/offline_dictionary_service.dart';
import '../../../../core/services/pronunciation_service.dart';

part 'reader_translation_bloc.freezed.dart';
part 'reader_translation_event.dart';
part 'reader_translation_state.dart';

@injectable
class ReaderTranslationBloc extends Bloc<ReaderTranslationEvent, ReaderTranslationState> {
  final MlKitTranslationModel _mlKitModel;
  final PronunciationService _pronunciationService;
  
  Map<int, String>? _cachedTranslations;
  bool _translationAvailable = false;

  ReaderTranslationBloc(
    this._mlKitModel,
    this._pronunciationService,
  ) : super(const ReaderTranslationState.initial()) {
    on<ReaderTranslationWordTapped>(_onWordTapped);
    on<ReaderTranslationTextSelected>(_onTextSelected);
    on<ReaderTranslationParagraphSwiped>(_onParagraphSwiped);
    on<ReaderTranslationDismissed>(_onDismissed);
    on<ReaderTranslationParagraphRestored>(_onParagraphRestored);
  }

  Set<int> _failedIndices = {};

  void setCachedTranslations(Map<int, String>? translations, [Set<int>? failedIndices]) {
    _cachedTranslations = translations;
    _failedIndices = failedIndices ?? {};
    _translationAvailable = translations != null && translations.isNotEmpty;
  }

  bool get isTranslationAvailable => _translationAvailable;
  Set<int> get failedIndices => _failedIndices;
  Map<int, String>? get cachedTranslations => _cachedTranslations;

  Future<void> _onWordTapped(
    ReaderTranslationWordTapped event,
    Emitter<ReaderTranslationState> emit,
  ) async {
    emit(ReaderTranslationState.translating(
      text: event.word,
      isWord: true,
    ));

    try {
      final isEnToRu = event.direction == TranslationDirection.enToRu;
      final dictionary = OfflineDictionaryService();
      
      String transcription = '';
      if (isEnToRu) {
        transcription = _pronunciationService.getTranscription(event.word) ?? '';
      }

      final dictVariants = dictionary.translate(event.word, isEnToRu: isEnToRu);
      
      String translatedText;
      List<String> variants = [];
      
      if (dictVariants != null && dictVariants.isNotEmpty) {
        translatedText = dictVariants.first;
        variants = dictVariants;
      } else {
        translatedText = await _mlKitModel.translate(
          event.word,
          isEnToRu: isEnToRu,
        );
      }

      final result = TranslationResult(
        originalText: event.word,
        translatedText: translatedText,
        transcription: transcription,
        direction: event.direction,
        wordPairs: const [],
        timestamp: DateTime.now(),
        variants: variants,
      );

      emit(ReaderTranslationState.translated(
        result: result,
        isWord: true,
      ));
    } catch (e) {
      emit(ReaderTranslationState.error(message: e.toString()));
    }
  }

  Future<void> _onTextSelected(
    ReaderTranslationTextSelected event,
    Emitter<ReaderTranslationState> emit,
  ) async {
    emit(ReaderTranslationState.translating(
      text: event.text,
      isWord: false,
    ));

    try {
      final isEnToRu = event.direction == TranslationDirection.enToRu;
      final translatedText = await _mlKitModel.translate(
        event.text,
        isEnToRu: isEnToRu,
      );

      final result = TranslationResult(
        originalText: event.text,
        translatedText: translatedText,
        transcription: '',
        direction: event.direction,
        wordPairs: const [],
        timestamp: DateTime.now(),
      );

      emit(ReaderTranslationState.translated(
        result: result,
        isWord: false,
      ));
    } catch (e) {
      emit(ReaderTranslationState.error(message: e.toString()));
    }
  }

  Future<void> _onParagraphSwiped(
    ReaderTranslationParagraphSwiped event,
    Emitter<ReaderTranslationState> emit,
  ) async {
    // Check if we have cached translation
    if (_cachedTranslations != null && _cachedTranslations!.containsKey(event.paragraphIndex)) {
      emit(ReaderTranslationState.paragraphTranslated(
        paragraphIndex: event.paragraphIndex,
        originalText: event.originalText,
        translatedText: _cachedTranslations![event.paragraphIndex]!,
      ));
    } else {
      // No cached translation available
      emit(const ReaderTranslationState.error(
        message: 'Translation not available',
        errorType: TranslationErrorType.noInternet,
      ));
    }
  }

  void _onDismissed(
    ReaderTranslationDismissed event,
    Emitter<ReaderTranslationState> emit,
  ) {
    emit(const ReaderTranslationState.initial());
  }

  void _onParagraphRestored(
    ReaderTranslationParagraphRestored event,
    Emitter<ReaderTranslationState> emit,
  ) {
    emit(const ReaderTranslationState.initial());
  }
}
