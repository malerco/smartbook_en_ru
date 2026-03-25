import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryDark = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFF818CF8);
  
  static const Color secondary = Color(0xFF10B981);
  static const Color secondaryDark = Color(0xFF059669);
  
  static const Color background = Color(0xFF0F172A);
  static const Color surface = Color(0xFF1E293B);
  static const Color surfaceLight = Color(0xFF334155);
  
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textHint = Color(0xFF64748B);
  
  static const Color error = Color(0xFFEF4444);
  static const Color success = Color(0xFF22C55E);
  
  static const Color cardGradientStart = Color(0xFF1E293B);
  static const Color cardGradientEnd = Color(0xFF0F172A);
  
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  
  static const Color splashBackground = Color(0xFF4F52FF);
}
