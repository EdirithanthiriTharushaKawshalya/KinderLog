import 'package:flutter/material.dart';

class AppTheme {
  // Brand & Status Colors
  static const Color primaryTeal = Color(0xFF7F56D9); // Lavender Purple - Main Brand / Present
  static const Color secondaryCoral = Color(0xFFFB7185); // Rose 400 - Absent
  static const Color alertAmber = Color(0xFFFBBF24); // Amber 400 - Tardy
  static const Color excusedIndigo = Color(0xFF60A5FA); // Sky Blue 400 - Excused
  static const Color bgGrey = Color(0xFFF8F9FE); // Warm Lavender scaffold background

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryTeal,
        primary: primaryTeal,
        secondary: secondaryCoral,
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: bgGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Color(0xFF1D2939), // Charcoal text
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: primaryTeal),
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: Color(0xFFF4EBFF), width: 1.5), // Soft lavender border
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE9D7FE)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFF4EBFF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primaryTeal, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryTeal,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28), // Fully rounded buttons
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}

// Custom text styling helpers
const TextStyle kTitleLarge = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Color(0xFF1D2939), // Charcoal
  letterSpacing: -0.5,
);

const TextStyle kTitleMedium = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color(0xFF1D2939), // Charcoal
  letterSpacing: -0.2,
);

const TextStyle kBodyMedium = TextStyle(
  fontSize: 14,
  color: Colors.black54,
);
