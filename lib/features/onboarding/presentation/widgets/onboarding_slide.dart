import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/theme.dart';

class OnboardingSlide extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Widget? animation;

  const OnboardingSlide({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.animation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (animation != null)
            SizedBox(
              height: 200,
              child: animation,
            )
          else
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: colors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 60,
                color: colors.primary,
              ),
            ),
          const SizedBox(height: 48),
          Text(
            title,
            style: GoogleFonts.playfairDisplay(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: colors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: colors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
