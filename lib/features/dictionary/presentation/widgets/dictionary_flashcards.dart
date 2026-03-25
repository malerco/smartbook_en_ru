import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';
import '../bloc/dictionary_bloc.dart';

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
              child: _FlipCard(
                entry: entry,
                isFlipped: _isFlipped,
                colors: colors,
                appLocale: appLocale,
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
                child: _ActionButton(
                  label: appLocale.dontRemember,
                  icon: Icons.close,
                  color: colors.error,
                  onPressed: _onDontRemember,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: _ActionButton(
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

class _FlipCard extends StatefulWidget {
  final DictionaryEntry entry;
  final bool isFlipped;
  final AppColorScheme colors;
  final AppLocalizations appLocale;

  const _FlipCard({
    required this.entry,
    required this.isFlipped,
    required this.colors,
    required this.appLocale,
  });

  @override
  State<_FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<_FlipCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _showFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.addListener(() {
      if (_controller.value >= 0.5 && _showFront) {
        setState(() => _showFront = false);
      } else if (_controller.value < 0.5 && !_showFront) {
        setState(() => _showFront = true);
      }
    });
  }

  @override
  void didUpdateWidget(_FlipCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isFlipped != oldWidget.isFlipped) {
      if (widget.isFlipped) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
    if (widget.entry.id != oldWidget.entry.id) {
      _controller.reset();
      _showFront = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        final angle = _animation.value * pi;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(angle);
        
        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: _showFront
              ? _buildFrontCard()
              : Transform(
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: _buildBackCard(),
                ),
        );
      },
    );
  }

  Widget _buildFrontCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.colors.wordCardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: widget.colors.shadow,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.touch_app_outlined,
            color: widget.colors.primary.withOpacity(0.3),
            size: 32,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              widget.entry.word,
              style: TextStyle(
                color: widget.colors.textPrimary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            widget.appLocale.tapToFlip,
            style: TextStyle(
              color: widget.colors.textHint,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.colors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: widget.colors.primary, width: 2),
        boxShadow: [
          BoxShadow(
            color: widget.colors.shadow,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.entry.word,
            style: TextStyle(
              color: widget.colors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          if (widget.entry.transcription != null && 
              widget.entry.transcription!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              widget.entry.transcription!,
              style: TextStyle(
                color: widget.colors.textHint,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: widget.colors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              widget.entry.translation,
              style: TextStyle(
                color: widget.colors.onPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color, width: 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
