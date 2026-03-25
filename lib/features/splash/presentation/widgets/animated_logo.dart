import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.4),
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildOrbitingDot(0, 60),
          _buildOrbitingDot(120, 60),
          _buildOrbitingDot(240, 60),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.background.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.translate_rounded,
              size: 50,
              color: Colors.white,
            ),
          )
              .animate(onPlay: (controller) => controller.repeat())
              .scale(
                begin: const Offset(1, 1),
                end: const Offset(1.05, 1.05),
                duration: 1500.ms,
              )
              .then()
              .scale(
                begin: const Offset(1.05, 1.05),
                end: const Offset(1, 1),
                duration: 1500.ms,
              ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 600.ms)
        .scale(begin: const Offset(0.5, 0.5), end: const Offset(1, 1));
  }

  Widget _buildOrbitingDot(double startAngle, double radius) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 3),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: startAngle * 3.14159 / 180,
          child: child,
        );
      },
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              blurRadius: 8,
            ),
          ],
        ),
      )
          .animate(onPlay: (controller) => controller.repeat())
          .rotate(duration: 3000.ms)
          .moveX(begin: 0, end: radius, duration: 0.ms),
    );
  }
}
