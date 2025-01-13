import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      onPrimary: AppColors.primaryForeground,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondaryForeground,
      error: AppColors.destructive,
      onError: AppColors.destructiveForeground,
      surface: AppColors.background,
      onSurface: AppColors.foreground,
      onSurfaceVariant: AppColors.mutedForeground,
    ),
    cardTheme: CardTheme(
      color: AppColors.card,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.input,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.border),
      ),
    ),
    textTheme: GoogleFonts.exo2TextTheme(ThemeData.light().textTheme).copyWith(
      displayLarge: GoogleFonts.exo2(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.exo2(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.exo2(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.exo2(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.exo2(
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.exo2(
        fontSize: 14,
      ),
      bodySmall: GoogleFonts.exo2(
        fontSize: 12,
      ),
    ),
  );
}
