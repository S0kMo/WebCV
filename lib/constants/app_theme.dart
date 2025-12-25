import 'package:flutter/material.dart';

class AppTheme {
  // Palette chosen to match the Portfolite feel: soft off-white background,
  // deep slate text, and a fresh green accent for CTAs.
  static const Color scaffoldBg = Color(0xFFF8FAFC); // very light
  static const Color surface = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF22C55E); // lively green accent
  static const Color onPrimary = Colors.white;
  static const Color textPrimary = Color(0xFF0F172A); // slate-900
  static const Color textMuted = Color(0xFF64748B); // slate-500 / muted
  static const Color border = Color(0xFFE6EEF5);

  static ThemeData theme() {
    // Base text theme using the registered font family "Nerd Fonts"
    final base = ThemeData.dark();
    final textTheme = TextTheme(
      displayLarge: TextStyle(
        // large hero/title
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w800,
        fontSize: 48,
        height: 1.05,
        color: textPrimary,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w800,
        fontSize: 40,
        color: textPrimary,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w800,
        fontSize: 28,
        color: textPrimary,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w800,
        fontSize: 18,
        color: textPrimary,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textPrimary,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: textMuted,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Nerd Fonts',
        fontWeight: FontWeight.w800,
        fontSize: 14,
        color: textPrimary,
      ),
    );

    return base.copyWith(
      scaffoldBackgroundColor: scaffoldBg,
      primaryColor: primary,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: onPrimary,
        secondary: primary,
        onSecondary: onPrimary,
        error: Colors.red.shade700,
        onError: Colors.white,
        surface: surface,
        onSurface: textPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: scaffoldBg,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge,
        iconTheme: const IconThemeData(color: textPrimary),
        toolbarTextStyle: textTheme.bodyLarge,
      ),
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: const TextStyle(
            fontFamily: 'Nerd Fonts',
            fontWeight: FontWeight.w800,
            fontSize: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          textStyle: const TextStyle(
            fontFamily: 'Nerd Fonts',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          side: BorderSide(color: border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      dividerColor: border,
      iconTheme: const IconThemeData(color: textPrimary),
    );
  }
}
