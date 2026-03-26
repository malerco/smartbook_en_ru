import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/domain/entities/translation_result.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../../../dictionary/presentation/bloc/dictionary_bloc.dart';
import '../bloc/chapter_translation_bloc.dart';
import '../bloc/reader_translation_bloc.dart';
import 'swipeable_paragraph.dart';
import 'tappable_text.dart';
import 'translation_card.dart';

class ReaderTextContent extends StatefulWidget {
  final String content;
  final TextStyle textStyle;
  final ScrollController scrollController;
  final TranslationDirection translationDirection;

  const ReaderTextContent({
    super.key,
    required this.content,
    required this.textStyle,
    required this.scrollController,
    required this.translationDirection,
  });

  @override
  State<ReaderTextContent> createState() => _ReaderTextContentState();
}

class _ReaderTextContentState extends State<ReaderTextContent> {
  final Map<int, String> _translatedParagraphs = {};
  final Map<int, bool> _showTranslated = {};
  final Map<int, bool> _isTranslating = {};
  
  late List<String> _paragraphs;

  @override
  void initState() {
    super.initState();
    _parseParagraphs();
  }

  @override
  void didUpdateWidget(ReaderTextContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content != widget.content) {
      _parseParagraphs();
    }
  }

  void _parseParagraphs() {
    _paragraphs = widget.content
        .split(RegExp(r'\n\s*\n'))
        .where((p) => p.trim().isNotEmpty)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReaderTranslationBloc, ReaderTranslationState>(
      listener: (context, state) {
        state.maybeWhen(
          paragraphTranslated: (index, original, translated) {
            setState(() {
              _translatedParagraphs[index] = translated;
              _showTranslated[index] = true;
              _isTranslating[index] = false;
            });
          },
          paragraphTranslating: (index, original) {
            setState(() {
              _isTranslating[index] = true;
            });
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          BlocBuilder<DictionaryBloc, DictionaryState>(
            builder: (context, dictState) {
              return BlocBuilder<ChapterTranslationBloc, ChapterTranslationState>(
                buildWhen: (previous, current) {
                  return current is ChapterTranslationPartial || 
                         current is ChapterTranslationLoaded;
                },
                builder: (context, chapterState) {
                  return ListView.builder(
                    controller: widget.scrollController,
                    padding: const EdgeInsets.only(bottom: 120),
                    itemCount: _paragraphs.length,
                    cacheExtent: 500,
                    addAutomaticKeepAlives: false,
                    addRepaintBoundaries: true,
                    itemBuilder: (context, index) => _buildParagraphItem(index),
                  );
                },
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildTranslationOverlay(),
          ),
        ],
      ),
    );
  }

  Widget _buildParagraphItem(int index) {
    final paragraph = _paragraphs[index];
    final bloc = context.read<ReaderTranslationBloc>();
    final blocCachedTranslations = bloc.cachedTranslations;
    final failedIndices = bloc.failedIndices;
    
    final hasCachedTranslation = _translatedParagraphs.containsKey(index) || 
        (blocCachedTranslations?.containsKey(index) ?? false);
    final isTranslationModeActive = bloc.isTranslationAvailable;
    final isPending = isTranslationModeActive && !hasCachedTranslation && !failedIndices.contains(index);
    final isFailed = failedIndices.contains(index);
    
    final dictState = context.read<DictionaryBloc>().state;
    final dictionaryWords = dictState.maybeWhen(
      loaded: (entries, _) => entries.map((e) => e.word.toLowerCase()).toSet(),
      orElse: () => <String>{},
    );
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SwipeableParagraph(
        key: ValueKey('p_$index'),
        originalText: paragraph,
        translatedText: _translatedParagraphs[index],
        isTranslating: _isTranslating[index] ?? false,
        showTranslation: _showTranslated[index] ?? false,
        isPendingTranslation: isPending,
        isFailedTranslation: isFailed,
        onRetryTranslation: isFailed ? () => _onRetryParagraph(index) : null,
        onSwipeLeft: () => _onParagraphSwipeLeft(index, paragraph),
        onSwipeRight: () => _onParagraphSwipeRight(index),
        textStyle: widget.textStyle,
        child: TappableText(
          text: paragraph,
          style: widget.textStyle,
          onWordTap: _onWordTap,
          onTextSelected: _onTextSelected,
          dictionaryWords: dictionaryWords,
          dictionaryWordColor: context.colors.success,
        ),
      ),
    );
  }

  void _onRetryParagraph(int index) {
  }

  void _onWordTap(String word) {
    context.read<ReaderTranslationBloc>().add(
      ReaderTranslationEvent.wordTapped(
        word: word,
        direction: widget.translationDirection,
      ),
    );
  }

  void _onTextSelected(String text) {
    context.read<ReaderTranslationBloc>().add(
      ReaderTranslationEvent.textSelected(
        text: text,
        direction: widget.translationDirection,
      ),
    );
  }

  void _onParagraphSwipeLeft(int index, String paragraph) {
    if (_translatedParagraphs.containsKey(index)) {
      setState(() {
        _showTranslated[index] = true;
      });
    } else {
      context.read<ReaderTranslationBloc>().add(
        ReaderTranslationEvent.paragraphSwiped(
          paragraphIndex: index,
          originalText: paragraph,
          direction: widget.translationDirection,
        ),
      );
    }
  }

  void _onParagraphSwipeRight(int index) {
    setState(() {
      _showTranslated[index] = false;
    });
    context.read<ReaderTranslationBloc>().add(
      ReaderTranslationEvent.paragraphRestored(paragraphIndex: index),
    );
  }

  Widget _buildTranslationOverlay() {
    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, dictState) {
        final dictionaryWords = dictState.maybeWhen(
          loaded: (entries, _) => entries.map((e) => e.word.toLowerCase()).toSet(),
          orElse: () => <String>{},
        );
        
        return BlocBuilder<ReaderTranslationBloc, ReaderTranslationState>(
          builder: (context, state) {
            return state.maybeWhen(
              translating: (text, isWord) => TranslationCard(
                isLoading: true,
                isWord: isWord,
              ),
              translated: (result, isWord) {
                final isInDictionary = dictionaryWords.contains(result.originalText.toLowerCase());
                return TranslationCard(
                  result: result,
                  isWord: isWord,
                  isInDictionary: isInDictionary,
                  onDismiss: () {
                    context.read<ReaderTranslationBloc>().add(
                      const ReaderTranslationEvent.dismissed(),
                    );
                  },
                  onSaveToVocabulary: isWord ? () => _saveToVocabulary(context, result) : null,
                  onRemoveFromVocabulary: isWord ? () => _removeFromVocabulary(context, result) : null,
                );
              },
              error: (message, errorType) => _buildErrorCard(context, message, errorType),
              orElse: () => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }

  void _saveToVocabulary(BuildContext context, TranslationResult result) {
    final appLocale = AppLocalizations.of(context)!;
    final isEnToRu = widget.translationDirection == TranslationDirection.enToRu;
    
    final entry = DictionaryEntry(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      word: result.originalText,
      translation: result.variants.length > 1 ? result.variants.join(', ') : result.translatedText,
      transcription: result.transcription.isNotEmpty ? result.transcription : null,
      sourceLanguage: isEnToRu ? 'en' : 'ru',
      targetLanguage: isEnToRu ? 'ru' : 'en',
      addedAt: DateTime.now(),
    );

    context.read<DictionaryBloc>().add(DictionaryEvent.addRequested(entry));
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(appLocale.wordSaved),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );

    context.read<ReaderTranslationBloc>().add(
      const ReaderTranslationEvent.dismissed(),
    );
  }

  void _removeFromVocabulary(BuildContext context, TranslationResult result) {
    final appLocale = AppLocalizations.of(context)!;
    final dictState = context.read<DictionaryBloc>().state;
    
    dictState.maybeWhen(
      loaded: (entries, _) {
        final entry = entries.firstWhere(
          (e) => e.word.toLowerCase() == result.originalText.toLowerCase(),
          orElse: () => entries.first,
        );
        context.read<DictionaryBloc>().add(DictionaryEvent.deleteRequested(entry.id));
      },
      orElse: () {},
    );
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(appLocale.wordRemoved),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );

    context.read<ReaderTranslationBloc>().add(
      const ReaderTranslationEvent.dismissed(),
    );
  }

  Widget _buildErrorCard(BuildContext context, String message, TranslationErrorType? errorType) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    
    String displayMessage = message;
    String? hint;
    
    if (errorType == TranslationErrorType.noInternet) {
      displayMessage = appLocale.noInternetConnection;
      hint = appLocale.noInternetHint;
    } else if (errorType == TranslationErrorType.timeout) {
      displayMessage = appLocale.translationTimeout;
    }
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.error),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.error_outline, color: colors.error, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  displayMessage,
                  style: TextStyle(color: colors.error, fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<ReaderTranslationBloc>().add(
                    const ReaderTranslationEvent.dismissed(),
                  );
                },
                child: Icon(Icons.close, color: colors.error, size: 18),
              ),
            ],
          ),
          if (hint != null) ...[
            const SizedBox(height: 8),
            Text(
              hint,
              style: TextStyle(color: colors.textSecondary, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}
