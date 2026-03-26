import 'package:flutter/material.dart';
import '../../../../../core/theme/theme.dart';

class WoodenShelf extends StatelessWidget {
  const WoodenShelf({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colors.shelfWood,
            colors.shelfWoodDark,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: CustomPaint(
                painter: _WoodGrainPainter(colors.shelfWoodDark),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.1),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.3, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WoodGrainPainter extends CustomPainter {
  final Color baseColor;

  _WoodGrainPainter(this.baseColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = baseColor.withOpacity(0.8)
      ..strokeWidth = 2;

    for (double y = 0; y < size.height; y += 6) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y + 5),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
