import 'package:flutter/material.dart';
import '../../../../core/theme/theme.dart';

class SwipeLeftAnimation extends StatefulWidget {
  const SwipeLeftAnimation({super.key});

  @override
  State<SwipeLeftAnimation> createState() => _SwipeLeftAnimationState();
}

class _SwipeLeftAnimationState extends State<SwipeLeftAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.3, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
    ));

    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.0), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return SlideTransition(
              position: _slideAnimation,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colors.surface,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The quick brown fox jumps...',
                      style: TextStyle(
                        color: colors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    AnimatedBuilder(
                      animation: _opacityAnimation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: 1 - _opacityAnimation.value,
                          child: Text(
                            'Быстрая коричневая лиса...',
                            style: TextStyle(
                              color: colors.primary,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(
          right: 40,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final progress = _controller.value;
              final showHand = progress < 0.5;
              return Opacity(
                opacity: showHand ? 1.0 : 0.0,
                child: Transform.translate(
                  offset: Offset(-50 * progress, 0),
                  child: Icon(
                    Icons.swipe_left,
                    size: 40,
                    color: colors.primary,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
