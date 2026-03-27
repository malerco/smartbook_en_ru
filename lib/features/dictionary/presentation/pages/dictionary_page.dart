import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/dictionary_bloc.dart';
import '../widgets/dictionary_word_list.dart';
import '../widgets/dictionary_flashcards.dart';
import '../widgets/empty_dictionary.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DictionaryView();
  }
}

class DictionaryView extends StatefulWidget {
  const DictionaryView({super.key});

  @override
  State<DictionaryView> createState() => _DictionaryViewState();
}

class _DictionaryViewState extends State<DictionaryView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    
    return Scaffold(
      backgroundColor: colors.dictionaryBackground,
      appBar: AppBar(
        backgroundColor: colors.dictionaryBackground,
        elevation: 0,
        title: Text(
          appLocale.dictionaryTitle,
          style: context.appTextTheme.textTheme.headlineMedium,
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          _buildTabBar(appLocale, colors),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildWordListTab(colors),
                _buildFlashcardsTab(colors),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar(AppLocalizations appLocale, AppColorScheme colors) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(25),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: colors.onPrimary,
        unselectedLabelColor: colors.textSecondary,
        labelStyle: context.appTextTheme.textTheme.labelLarge,
        unselectedLabelStyle: context.appTextTheme.textTheme.titleSmall,
        tabs: [
          Tab(text: appLocale.wordList),
          Tab(text: appLocale.flashcards),
        ],
      ),
    );
  }

  Widget _buildWordListTab(AppColorScheme colors) {
    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(
            child: CircularProgressIndicator(color: colors.primary),
          ),
          loading: () => Center(
            child: CircularProgressIndicator(color: colors.primary),
          ),
          loaded: (entries, searchQuery) {
            if (entries.isEmpty) {
              return const EmptyDictionary();
            }
            return DictionaryWordList(
              entries: entries,
              onDelete: (id) {
                context.read<DictionaryBloc>().add(
                  DictionaryEvent.deleteRequested(id),
                );
              },
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  color: colors.error,
                  size: 48,
                ),
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
      },
    );
  }

  Widget _buildFlashcardsTab(AppColorScheme colors) {
    final appLocale = AppLocalizations.of(context)!;
    
    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(
            child: CircularProgressIndicator(color: colors.primary),
          ),
          loading: () => Center(
            child: CircularProgressIndicator(color: colors.primary),
          ),
          loaded: (entries, searchQuery) {
            if (entries.isEmpty) {
              return const EmptyDictionary();
            }
            return Column(
              children: [
                Expanded(
                  child: DictionaryFlashcards(entries: entries),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextButton.icon(
                    onPressed: () => _showResetProgressDialog(context, appLocale, colors),
                    icon: Icon(Icons.refresh, color: colors.textSecondary),
                    label: Text(
                      appLocale.resetProgress,
                      style: context.appTextTheme.textTheme.bodySmall!.copyWith(color: colors.textSecondary),
                    ),
                  ),
                ),
              ],
            );
          },
          error: (message) => Center(
            child: Text(
              message,
              style: context.appTextTheme.textTheme.bodyMedium,
            ),
          ),
        );
      },
    );
  }

  void _showResetProgressDialog(BuildContext context, AppLocalizations appLocale, AppColorScheme colors) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: colors.surface,
        title: Text(
          appLocale.resetProgress,
          style: context.appTextTheme.textTheme.titleLarge,
        ),
        content: Text(
          appLocale.resetProgressConfirm,
          style: context.appTextTheme.textTheme.bodyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(appLocale.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<DictionaryBloc>().add(
                const DictionaryEvent.resetProgressRequested(),
              );
            },
            child: Text(
              appLocale.confirm,
              style: context.appTextTheme.textTheme.labelLarge!.copyWith(color: colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
