import 'package:flutter/material.dart';

class AppTheme {
  // Warna Utama & Aksesibilitas
  static const Color primary = Color(0xFF00897B);      // Teal Deep
  static const Color primaryDark = Color(0xFF004D40);  // Dark Teal
  static const Color background = Color(0xFFF0F4F8);   // Light Grey-Blue
  static const Color cardBg = Colors.white;
  static const Color textDark = Color(0xFF1E293B);     // Slate Dark
  static const Color textMuted = Color(0xFF64748B);    // Slate Muted

  // Linear Gradient untuk Latar Belakang & Tombol
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF00897B), Color(0xFF004D40)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient bgGradient = LinearGradient(
    colors: [Color(0xFFE0F2F1), Color(0xFFF0F4F8)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Definisi ThemeData Utama
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        surface: cardBg,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
      ),
      // Perbaikan: Gunakan CardThemeData di sini
      cardTheme: CardThemeData(
        color: cardBg,
        elevation: 6,
        shadowColor: Colors.black.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}