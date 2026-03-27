import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/language_detector.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/domain/entities/book_content.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/theme/theme.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/book_reader_bloc.dart';
import '../bloc/chapter_translation_bloc.dart';
import '../bloc/reader_translation_bloc.dart';
import '../widgets/chapter_loading_overlay.dart';
import '../widgets/chapters_bottom_sheet.dart';
import '../widgets/reader_app_bar.dart';
import '../widgets/reader_text_content.dart';

class BookReaderPage extends StatelessWidget {
  final String bookId;

  const BookReaderPage({super.key, required this.bookId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<BookReaderBloc>()
            ..add(BookReaderEvent.loadRequested(bookId: bookId)),
        ),
        BlocProvider(
          create: (_) => getIt<ReaderTranslationBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ChapterTranslationBloc>(),
        ),
      ],
      child: BookReaderView(bookId: bookId),
    );
  }
}

class BookReaderView extends StatefulWidget {
  final String bookId;
  
  const BookReaderView({super.key, required this.bookId});

  @override
  State<BookReaderView> createState() => _BookReaderViewState();
}

class _BookReaderViewState extends State<BookReaderView> with WidgetsBindingObserver {
  final ScrollController _scrollController = ScrollController();
  bool _showControls = true;
  bool _initialScrollRestored = false;
  int _lastSavedChapterIndex = -1;
  int _lastTranslationChapterIndex = -1;
  bool _translationSkipped = false;
  TranslationDirection? _detectedDirection;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _scrollController.addListener(_onScroll);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused || 
        state == AppLifecycleState.inactive) {
      _saveScrollPosition();
    }
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      _saveScrollPositionDebounced();
    }
  }

  DateTime? _lastSaveTime;
  void _saveScrollPositionDebounced() {
    final now = DateTime.now();
    if (_lastSaveTime == null || 
        now.difference(_lastSaveTime!).inMilliseconds > 500) {
      _lastSaveTime = now;
      _saveScrollPosition();
    }
  }

  void _saveScrollPosition() {
    if (_scrollController.hasClients) {
      final bloc = context.read<BookReaderBloc>();
      final state = bloc.state;
      if (state is BookReaderLoaded) {
        bloc.add(BookReaderEvent.scrollPositionChanged(
          scrollPosition: _scrollController.offset,
        ));
      }
    }
  }

  void _restoreScrollPosition(double scrollPosition) {
    if (!_initialScrollRestored && scrollPosition > 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(scrollPosition);
          _initialScrollRestored = true;
        }
      });
    }
  }

  @override
  void dispose() {
    _saveScrollPosition();
    WidgetsBinding.instance.removeObserver(this);
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        double fontSize = 16.0;
        double lineSpacing = 1.5;
        String fontFamily = 'Inter';

        if (settingsState is SettingsLoaded) {
          fontSize = _getFontSizeValue(settingsState.fontSize);
          lineSpacing = _getLineSpacingValue(settingsState.lineSpacing);
          fontFamily = settingsState.fontFamily;
        }

        return BlocBuilder<BookReaderBloc, BookReaderState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildLoading(colors),
              loading: () => _buildLoading(colors),
              loaded: (book, content, currentChapterIndex) {
                final currentChapter = content.chapters[currentChapterIndex];

                if (_lastSavedChapterIndex != currentChapterIndex) {
                  _lastSavedChapterIndex = currentChapterIndex;
                  if (_lastSavedChapterIndex == book.currentPage) {
                    _restoreScrollPosition(book.scrollPosition);
                  } else {
                    _initialScrollRestored = true;
                  }
                }

                _detectedDirection ??= LanguageDetector.detectDirection(currentChapter.content);

                if (_lastTranslationChapterIndex != currentChapterIndex && !_translationSkipped) {
                  _lastTranslationChapterIndex = currentChapterIndex;
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.read<ChapterTranslationBloc>().add(
                      ChapterTranslationEvent.started(
                        bookId: widget.bookId,
                        chapterIndex: currentChapterIndex,
                        chapterContent: currentChapter.content,
                        direction: _detectedDirection!,
                      ),
                    );
                  });
                }

                return Scaffold(
                  backgroundColor: colors.background,
                  body: GestureDetector(
                    onTap: () {},
                    child: BlocListener<ChapterTranslationBloc, ChapterTranslationState>(
                      listener: (context, chapterTranslationState) {
                        chapterTranslationState.maybeWhen(
                          loaded: (translations, failedIndices) {
                            context.read<ReaderTranslationBloc>().setCachedTranslations(translations, failedIndices);
                          },
                          partial: (translations, failedIndices, progress, totalParagraphs, isLoading) {
                            context.read<ReaderTranslationBloc>().setCachedTranslations(translations, failedIndices);
                          },
                          skipped: () {
                            setState(() {
                              _translationSkipped = true;
                            });
                            context.read<ReaderTranslationBloc>().setCachedTranslations(null);
                          },
                          orElse: () {},
                        );
                      },
                      child: Stack(
                        children: [
                          SafeArea(
                            child: Column(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: _showControls ? 56 : 0,
                                  child: _showControls
                                      ? ReaderAppBar(
                                          bookTitle: book.title,
                                          chapterTitle: currentChapter.title,
                                          onChaptersPressed: () => _showChaptersDialog(
                                            context,
                                            content.chapters,
                                            currentChapterIndex,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 16,
                                    ),
                                    child: ReaderTextContent(
                                      content: currentChapter.content,
                                      textStyle: context.appTextTheme.textTheme.bodyLarge!.copyWith(
                                        fontSize: fontSize,
                                        height: lineSpacing,
                                        fontFamily: fontFamily,
                                      ),
                                      scrollController: _scrollController,
                                      translationDirection: _detectedDirection ?? TranslationDirection.enToRu,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                          ChapterLoadingOverlay(
                            bookId: widget.bookId,
                            chapterIndex: currentChapterIndex,
                            chapterContent: currentChapter.content,
                            direction: _detectedDirection ?? TranslationDirection.enToRu,
                            onSkip: () {
                              context.read<ChapterTranslationBloc>().add(
                                const ChapterTranslationEvent.skipped(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              error: (message) => _buildError(context, colors, message),
            );
          },
        );
      },
    );
  }

  Widget _buildLoading(AppColorScheme colors) {
    return Scaffold(
      backgroundColor: colors.background,
      body: Center(
        child: CircularProgressIndicator(color: colors.primary),
      ),
    );
  }

  Widget _buildError(BuildContext context, AppColorScheme colors, String message) {
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.textPrimary),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: colors.error, size: 48),
            const SizedBox(height: 16),
            Text(
              message,
              style: context.appTextTheme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _showChaptersDialog(
    BuildContext context,
    List<BookChapter> chapters,
    int currentChapterIndex,
  ) {
    final bloc = context.read<BookReaderBloc>();

    ChaptersBottomSheet.show(
      context: context,
      chapters: chapters,
      currentChapterIndex: currentChapterIndex,
      onChapterSelected: (index) {
        _initialScrollRestored = true;
        _scrollController.jumpTo(0);
        setState(() {
          _translationSkipped = false;
        });
        bloc.add(BookReaderEvent.chapterChanged(chapterIndex: index));
      },
    );
  }

  double _getFontSizeValue(FontSizeOption option) {
    switch (option) {
      case FontSizeOption.small:
        return 14.0;
      case FontSizeOption.medium:
        return 16.0;
      case FontSizeOption.large:
        return 18.0;
      case FontSizeOption.extraLarge:
        return 22.0;
    }
  }

  double _getLineSpacingValue(LineSpacingOption option) {
    switch (option) {
      case LineSpacingOption.compact:
        return 1.2;
      case LineSpacingOption.normal:
        return 1.5;
      case LineSpacingOption.relaxed:
        return 1.8;
    }
  }
}
