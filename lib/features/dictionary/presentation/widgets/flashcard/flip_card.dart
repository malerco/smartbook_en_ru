import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../../core/domain/entities/dictionary_entry.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../../core/theme/theme.dart';

class FlipCard extends StatefulWidget {
  final DictionaryEntry entry;
  final bool isFlipped;

  const FlipCard({
    super.key,
    required this.entry,
    required this.isFlipped,
  });

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
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
  void didUpdateWidget(FlipCard oldWidget) {
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
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;

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
              ? _buildFrontCard(colors, appLocale)
              : Transform(
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: _buildBackCard(colors),
                ),
        );
      },
    );
  }

  Widget _buildFrontCard(AppColorScheme colors, AppLocalizations appLocale) {
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
            Icons.touch_app_outlined,
            color: colors.primary.withOpacity(0.3),
            size: 32,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              widget.entry.word,
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            appLocale.tapToFlip,
            style: TextStyle(
              color: colors.textHint,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackCard(AppColorScheme colors) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colors.primary, width: 2),
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
          Text(
            widget.entry.word,
            style: TextStyle(
              color: colors.textPrimary,
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
                color: colors.textHint,
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
              color: colors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              widget.entry.translation,
              style: TextStyle(
                color: colors.onPrimary,
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
