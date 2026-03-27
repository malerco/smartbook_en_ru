import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/dictionary_bloc.dart';
import 'flashcard/flip_card.dart';
import 'flashcard/flashcard_action_button.dart';

class DictionaryFlashcards extends StatefulWidget {
  final List<DictionaryEntry> entries;

  const DictionaryFlashcards({
    super.key,
    required this.entries,
  });

  @override
  State<DictionaryFlashcards> createState() => _DictionaryFlashcardsState();
}

class _DictionaryFlashcardsState extends State<DictionaryFlashcards> {
  bool _isFlipped = false;
  List<DictionaryEntry> _unlearnedEntries = [];
  String? _currentWordId;
  String? _lastShownWordId;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _updateUnlearnedEntries();
    _pickRandomCard(excludeId: null);
  }

  @override
  void didUpdateWidget(DictionaryFlashcards oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.entries != widget.entries) {
      _updateUnlearnedEntries();
    }
  }

  void _updateUnlearnedEntries() {
    _unlearnedEntries = widget.entries.where((e) => !e.isLearned).toList();
    // If current word was removed or learned, pick a new one
    if (_currentWordId != null && !_unlearnedEntries.any((e) => e.id == _currentWordId)) {
      _pickRandomCard(excludeId: _lastShownWordId);
    }
  }

  void _pickRandomCard({String? excludeId}) {
    if (_unlearnedEntries.isEmpty) {
      _currentWordId = null;
      return;
    }
    
    if (_unlearnedEntries.length == 1) {
      _currentWordId = _unlearnedEntries[0].id;
      _lastShownWordId = _currentWordId;
      _isFlipped = false;
      return;
    }
    
    // Pick random card, excluding the specified one
    final availableEntries = excludeId != null 
        ? _unlearnedEntries.where((e) => e.id != excludeId).toList()
        : _unlearnedEntries;
    
    if (availableEntries.isEmpty) {
      _currentWordId = _unlearnedEntries[_random.nextInt(_unlearnedEntries.length)].id;
    } else {
      _currentWordId = availableEntries[_random.nextInt(availableEntries.length)].id;
    }
    _lastShownWordId = _currentWordId;
    _isFlipped = false;
  }

  DictionaryEntry? get _currentEntry {
    if (_currentWordId == null) return null;
    try {
      return _unlearnedEntries.firstWhere((e) => e.id == _currentWordId);
    } catch (_) {
      return _unlearnedEntries.isNotEmpty ? _unlearnedEntries.first : null;
    }
  }

  void _onRemember() {
    final entry = _currentEntry;
    if (entry == null) return;
    
    final newCount = entry.rememberCount + 1;
    final isLearned = newCount >= 3;
    
    final updatedEntry = entry.copyWith(
      rememberCount: newCount,
      isLearned: isLearned,
      lastReviewedAt: DateTime.now(),
    );
    
    context.read<DictionaryBloc>().add(DictionaryEvent.updateRequested(updatedEntry));
    _nextCard();
  }

  void _onDontRemember() {
    final entry = _currentEntry;
    if (entry == null) return;
    
    final updatedEntry = entry.copyWith(
      rememberCount: 0,
      lastReviewedAt: DateTime.now(),
    );
    
    context.read<DictionaryBloc>().add(DictionaryEvent.updateRequested(updatedEntry));
    _nextCard();
  }

  void _nextCard() {
    setState(() {
      _pickRandomCard(excludeId: _currentWordId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    
    if (_unlearnedEntries.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.celebration_outlined,
              size: 64,
              color: colors.success,
            ),
            const SizedBox(height: 16),
            Text(
              appLocale.allWordsLearned,
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              appLocale.resetProgressHint,
              style: TextStyle(
                color: colors.textSecondary,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    final entry = _currentEntry;
    if (entry == null) return const SizedBox.shrink();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${appLocale.wordsToLearn}: ${_unlearnedEntries.length}',
                style: TextStyle(
                  color: colors.textSecondary,
                  fontSize: 14,
                ),
              ),
              Row(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      index < entry.rememberCount 
                          ? Icons.star 
                          : Icons.star_border,
                      color: colors.primary,
                      size: 18,
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isFlipped = !_isFlipped;
                });
              },
              child: FlipCard(
                entry: entry,
                isFlipped: _isFlipped,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: FlashcardActionButton(
                  label: appLocale.dontRemember,
                  icon: Icons.close,
                  color: colors.error,
                  onPressed: _onDontRemember,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: FlashcardActionButton(
                  label: appLocale.remember,
                  icon: Icons.check,
                  color: colors.success,
                  onPressed: _onRemember,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
