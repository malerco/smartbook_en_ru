import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbook_en_ru/core/l10n/app_localizations.dart';
import '../../../../core/theme/theme.dart';

class SwipeableParagraph extends StatefulWidget {
  final String originalText;
  final String? translatedText;
  final bool isTranslating;
  final bool showTranslation;
  final bool isPendingTranslation;
  final bool isFailedTranslation;
  final VoidCallback? onRetryTranslation;
  final Widget child;
  final VoidCallback onSwipeLeft;
  final VoidCallback onSwipeRight;

  const SwipeableParagraph({
    super.key,
    required this.originalText,
    this.translatedText,
    this.isTranslating = false,
    this.showTranslation = false,
    this.isPendingTranslation = false,
    this.isFailedTranslation = false,
    this.onRetryTranslation,
    required this.child,
    required this.onSwipeLeft,
    required this.onSwipeRight,
  });

  @override
  State<SwipeableParagraph> createState() => _SwipeableParagraphState();
}

class _SwipeableParagraphState extends State<SwipeableParagraph> {
  double _dragExtent = 0;
  bool _showTranslated = false;
  bool _isDragging = false;

  @override
  void initState() {
    super.initState();
    _showTranslated = widget.showTranslation;
  }

  @override
  void didUpdateWidget(SwipeableParagraph oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showTranslation != oldWidget.showTranslation) {
      _showTranslated = widget.showTranslation;
    }
  }

  void _handleDragStart(DragStartDetails details) {
    _isDragging = true;
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (!_isDragging) return;
    setState(() {
      _dragExtent += details.delta.dx;
      _dragExtent = _dragExtent.clamp(-80.0, 80.0);
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (!_isDragging) return;
    _isDragging = false;
    
    final velocity = details.primaryVelocity ?? 0;
    
    if (_dragExtent < -40 || velocity < -400) {
      if (!_showTranslated) {
        widget.onSwipeLeft();
        _showTranslated = true;
      }
    } else if (_dragExtent > 40 || velocity > 400) {
      if (_showTranslated) {
        widget.onSwipeRight();
        _showTranslated = false;
      }
    }
    
    setState(() {
      _dragExtent = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;
    
    Widget content;
    if (_showTranslated) {
      content = _buildTranslatedContent(colors, appLocale);
    } else if (widget.isFailedTranslation) {
      content = _buildFailedContent(colors);
    } else if (widget.isPendingTranslation) {
      content = _buildPendingContent(colors);
    } else {
      content = widget.child;
    }
    
    return GestureDetector(
      onHorizontalDragStart: _handleDragStart,
      onHorizontalDragUpdate: _handleDragUpdate,
      onHorizontalDragEnd: _handleDragEnd,
      behavior: HitTestBehavior.opaque,
      child: RepaintBoundary(
        child: _dragExtent != 0
            ? Transform.translate(
                offset: Offset(_dragExtent, 0),
                child: content,
              )
            : content,
      ),
    );
  }
  
  Widget _buildPendingContent(AppColorScheme colors) {
    return Opacity(
      opacity: 0.4,
      child: Shimmer.fromColors(
        baseColor: colors.textPrimary,
        highlightColor: colors.textPrimary.withValues(alpha: 0.5),
        child: widget.child,
      ),
    );
  }
  
  Widget _buildFailedContent(AppColorScheme colors) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: widget.child,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: widget.onRetryTranslation,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: colors.error.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                Icons.refresh,
                size: 18,
                color: colors.error,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTranslatedContent(AppColorScheme colors, AppLocalizations appLocale) {
    if (widget.isTranslating) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: colors.primary,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${appLocale.translating}...',
              style: TextStyle(
                color: colors.textSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: colors.primary,
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          widget.translatedText ?? widget.originalText,
          style: TextStyle(
            color: colors.primary,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
