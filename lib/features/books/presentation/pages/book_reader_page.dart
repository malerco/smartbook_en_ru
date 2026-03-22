import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/book_reader_bloc.dart';

class BookReaderPage extends StatelessWidget {
  final String bookId;

  const BookReaderPage({super.key, required this.bookId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BookReaderBloc>()
        ..add(BookReaderEvent.loadRequested(bookId: bookId)),
      child: const BookReaderView(),
    );
  }
}

class BookReaderView extends StatefulWidget {
  const BookReaderView({super.key});

  @override
  State<BookReaderView> createState() => _BookReaderViewState();
}

class _BookReaderViewState extends State<BookReaderView> with WidgetsBindingObserver {
  final ScrollController _scrollController = ScrollController();
  bool _showControls = true;
  bool _initialScrollRestored = false;
  int _lastSavedChapterIndex = -1;

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
    final appLocale = AppLocalizations.of(context)!;

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
                final totalChapters = content.chapters.length;

                if (_lastSavedChapterIndex != currentChapterIndex) {
                  _lastSavedChapterIndex = currentChapterIndex;
                  if (_lastSavedChapterIndex == book.currentPage) {
                    _restoreScrollPosition(book.scrollPosition);
                  } else {
                    _initialScrollRestored = true;
                  }
                }

                return Scaffold(
                  backgroundColor: colors.background,
                  body: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showControls = !_showControls;
                      });
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
                                    ? _buildAppBar(
                                        context,
                                        colors,
                                        book.title,
                                        currentChapter.title,
                                      )
                                    : const SizedBox.shrink(),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                  child: SingleChildScrollView(
                                    controller: _scrollController,
                                    child: SelectableText(
                                      currentChapter.content,
                                      style: TextStyle(
                                        fontSize: fontSize,
                                        height: lineSpacing,
                                        fontFamily: fontFamily,
                                        color: colors.textPrimary,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // AnimatedContainer(
                              //   duration: const Duration(milliseconds: 200),
                              //   height: _showControls ? 80 : 0,
                              //   child: _showControls
                              //       ? _buildBottomControls(
                              //           context,
                              //           colors,
                              //           currentChapterIndex,
                              //           totalChapters,
                              //           content.chapters
                              //               .map((c) => c.title)
                              //               .toList(),
                              //         )
                              //       : const SizedBox.shrink(),
                              // ),
                            ],
                          ),
                        ),
                      ],
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
              style: TextStyle(color: colors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(
    BuildContext context,
    AppColorScheme colors,
    String bookTitle,
    String chapterTitle,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: colors.background,
        border: Border(
          bottom: BorderSide(
            color: colors.surfaceVariant.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: colors.textPrimary),
            onPressed: () => context.pop(),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookTitle,
                  style: TextStyle(
                    color: colors.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  chapterTitle,
                  style: TextStyle(
                    color: colors.textSecondary,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.list, color: colors.textPrimary),
            onPressed: () => _showChaptersDialog(context, colors),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomControls(
    BuildContext context,
    AppColorScheme colors,
    int currentChapterIndex,
    int totalChapters,
    List<String> chapterTitles,
  ) {
    final canGoPrevious = currentChapterIndex > 0;
    final canGoNext = currentChapterIndex < totalChapters - 1;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colors.background,
        border: Border(
          top: BorderSide(
            color: colors.surfaceVariant.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: canGoPrevious ? colors.primary : colors.textSecondary.withOpacity(0.3),
            ),
            onPressed: canGoPrevious
                ? () {
                    _scrollController.jumpTo(0);
                    context.read<BookReaderBloc>().add(
                          BookReaderEvent.chapterChanged(
                            chapterIndex: currentChapterIndex - 1,
                          ),
                        );
                  }
                : null,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${currentChapterIndex + 1} / $totalChapters',
                  style: TextStyle(
                    color: colors.textSecondary,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                LinearProgressIndicator(
                  value: (currentChapterIndex + 1) / totalChapters,
                  backgroundColor: colors.surfaceVariant,
                  valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: canGoNext ? colors.primary : colors.textSecondary.withOpacity(0.3),
            ),
            onPressed: canGoNext
                ? () {
                    _scrollController.jumpTo(0);
                    context.read<BookReaderBloc>().add(
                          BookReaderEvent.chapterChanged(
                            chapterIndex: currentChapterIndex + 1,
                          ),
                        );
                  }
                : null,
          ),
        ],
      ),
    );
  }

  void _showChaptersDialog(BuildContext context, AppColorScheme colors) {
    final bloc = context.read<BookReaderBloc>();
    final state = bloc.state;

    if (state is! BookReaderLoaded) return;

    showModalBottomSheet(
      context: context,
      backgroundColor: colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (dialogContext) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Chapters',
                  style: TextStyle(
                    color: colors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: colors.surfaceVariant),
              Expanded(
                child: ListView.builder(
                  itemCount: state.content.chapters.length,
                  itemBuilder: (context, index) {
                    final chapter = state.content.chapters[index];
                    final isCurrentChapter = index == state.currentChapterIndex;

                    return ListTile(
                      leading: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: isCurrentChapter
                              ? colors.primary
                              : colors.textSecondary,
                          fontWeight: isCurrentChapter
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      title: Text(
                        chapter.title,
                        style: TextStyle(
                          color: isCurrentChapter
                              ? colors.primary
                              : colors.textPrimary,
                          fontWeight: isCurrentChapter
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      selected: isCurrentChapter,
                      onTap: () {
                        Navigator.of(dialogContext).pop();
                        _initialScrollRestored = true;
                        _scrollController.jumpTo(0);
                        bloc.add(
                          BookReaderEvent.chapterChanged(chapterIndex: index),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
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
