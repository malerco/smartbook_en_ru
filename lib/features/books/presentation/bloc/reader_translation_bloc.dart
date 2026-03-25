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
      final wordLower = event.word.toLowerCase();
      
      
      final isRegularVerbForm = wordLower.endsWith('ed') || 
                                wordLower.endsWith('ing') || 
                                wordLower.endsWith('es');
      
      const irregularVerbs = {
        'spoke', 'spoken', 'went', 'gone', 'saw', 'seen', 'came', 'come',
        'took', 'taken', 'gave', 'given', 'knew', 'known', 'thought',
        'told', 'said', 'made', 'found', 'felt', 'left', 'brought',
        'bought', 'caught', 'taught', 'sought', 'fought', 'got', 'gotten',
        'sat', 'stood', 'understood', 'heard', 'held', 'kept', 'led',
        'met', 'paid', 'read', 'ran', 'sent', 'spent', 'lost', 'won',
        'wore', 'worn', 'wrote', 'written', 'broke', 'broken', 'chose',
        'chosen', 'drove', 'driven', 'ate', 'eaten', 'fell', 'fallen',
        'flew', 'flown', 'grew', 'grown', 'hid', 'hidden', 'rode', 'ridden',
        'rose', 'risen', 'sang', 'sung', 'sank', 'sunk', 'shook', 'shaken',
        'slept', 'stole', 'stolen', 'swam', 'swum', 'threw', 'thrown',
        'woke', 'woken', 'began', 'begun', 'bit', 'bitten', 'blew', 'blown',
        'drew', 'drawn', 'drank', 'drunk', 'forgave', 'forgiven', 'forgot',
        'forgotten', 'froze', 'frozen', 'lay', 'lain', 'rang', 'rung',
        'showed', 'shown', 'shrank', 'shrunk', 'snarled', 'snapped',
      };
      
      final isVerbForm = isRegularVerbForm || irregularVerbs.contains(wordLower);
      
      String displayWord = event.word;
      String translatedText;
      List<String> variants = [];
      String transcription = '';
      
      final lookupResult = isVerbForm 
          ? null 
          : dictionary.translateWithStemming(event.word, isEnToRu: isEnToRu);
      
      if (lookupResult != null) {
        displayWord = lookupResult.matchedWord;
        translatedText = lookupResult.translations.first;
        variants = lookupResult.translations;
        if (isEnToRu) {
          transcription = _pronunciationService.getTranscription(displayWord) ?? '';
        }
      } else {
        translatedText = await _mlKitModel.translate(
          event.word,
          isEnToRu: isEnToRu,
        );

        final dictResult = dictionary.translateWithStemming(event.word, isEnToRu: isEnToRu);
        
        if (translatedText.toLowerCase() == event.word.toLowerCase()) {
          if (dictResult != null) {
            displayWord = dictResult.matchedWord;
            translatedText = dictResult.translations.first;
            variants = dictResult.translations;
          }
        } else {
          variants = [translatedText];
          if (dictResult != null) {
            for (final v in dictResult.translations) {
              if (!variants.contains(v)) {
                variants.add(v);
              }
            }
          }
        }
        
        if (isEnToRu) {
          transcription = _pronunciationService.getTranscription(displayWord) ?? '';
        }
      }

      final result = TranslationResult(
        originalText: displayWord,
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
    if (_cachedTranslations != null && _cachedTranslations!.containsKey(event.paragraphIndex)) {
      emit(ReaderTranslationState.paragraphTranslated(
        paragraphIndex: event.paragraphIndex,
        originalText: event.originalText,
        translatedText: _cachedTranslations![event.paragraphIndex]!,
      ));
    } else {
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
