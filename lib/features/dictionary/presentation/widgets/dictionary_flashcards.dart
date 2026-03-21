import 'package:flutter/material.dart';
import '../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../core/theme/theme.dart';

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
  int _currentIndex = 0;
  bool _showTranslation = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    
    if (widget.entries.isEmpty) {
      return const SizedBox.shrink();
    }

    final entry = widget.entries[_currentIndex];

    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showTranslation = !_showTranslation;
                });
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: _FlashCard(
                  key: ValueKey('$_currentIndex-$_showTranslation'),
                  word: _showTranslation ? entry.translation : entry.word,
                  isTranslation: _showTranslation,
                  colors: colors,
                ),
              ),
            ),
          ),
        ),
        // Progress indicator
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_currentIndex + 1} / ${widget.entries.length}',
                style: TextStyle(
                  color: colors.textSecondary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        // Navigation buttons
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _NavigationButton(
                icon: Icons.arrow_back_ios_rounded,
                onPressed: _currentIndex > 0
                    ? () {
                        setState(() {
                          _currentIndex--;
                          _showTranslation = false;
                        });
                      }
                    : null,
                colors: colors,
              ),
              _NavigationButton(
                icon: Icons.refresh_rounded,
                onPressed: () {
                  setState(() {
                    _showTranslation = !_showTranslation;
                  });
                },
                colors: colors,
                isPrimary: true,
              ),
              _NavigationButton(
                icon: Icons.arrow_forward_ios_rounded,
                onPressed: _currentIndex < widget.entries.length - 1
                    ? () {
                        setState(() {
                          _currentIndex++;
                          _showTranslation = false;
                        });
                      }
                    : null,
                colors: colors,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _FlashCard extends StatelessWidget {
  final String word;
  final bool isTranslation;
  final AppColorScheme colors;

  const _FlashCard({
    super.key,
    required this.word,
    required this.isTranslation,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.wordCardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colors.shadow,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isTranslation ? Icons.translate : Icons.text_fields,
            color: colors.primary.withOpacity(0.3),
            size: 48,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              word,
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            isTranslation ? 'Translation' : 'Tap to reveal',
            style: TextStyle(
              color: colors.textHint,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final AppColorScheme colors;
  final bool isPrimary;

  const _NavigationButton({
    required this.icon,
    required this.onPressed,
    required this.colors,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null;
    
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: isPrimary ? 64 : 48,
        height: isPrimary ? 64 : 48,
        decoration: BoxDecoration(
          color: isPrimary
              ? colors.primary
              : isEnabled
                  ? colors.surfaceVariant
                  : colors.surfaceVariant.withOpacity(0.5),
          shape: BoxShape.circle,
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: colors.primary.withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Icon(
          icon,
          color: isPrimary
              ? colors.onPrimary
              : isEnabled
                  ? colors.textPrimary
                  : colors.textDisabled,
          size: isPrimary ? 28 : 20,
        ),
      ),
    );
  }
}
