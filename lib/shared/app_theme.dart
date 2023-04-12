import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const baseColor = Color(0xff0084ff);
  static const onBackgroundColor = Color(0xffacacac);
  static const secondaryColor = Color(0xff00376b);
  static const surfaceColor = Color(0xff363636);

  static final ThemeData themeData = ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(
      primary: baseColor,
      background: Colors.white,
      onBackground: onBackgroundColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    textTheme: _textTheme,
    iconTheme: const IconThemeData(
      color: onBackgroundColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      actionsIconTheme: IconThemeData(
        color: surfaceColor,
      ),
      iconTheme: IconThemeData(
        color: surfaceColor,
      ),
      elevation: 0,
    ),
  );

  static final TextTheme _textTheme = ThemeData.light().textTheme.copyWith(
        titleSmall: GoogleFonts.workSans(
          fontSize: 12,
          letterSpacing: -0.24,
          fontWeight: FontWeight.w500,
          color: onBackgroundColor,
        ),
        titleMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.24,
          color: const Color(0xffffffff),
        ),
        titleLarge: GoogleFonts.workSans(
          fontSize: 28,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.24,
          color: const Color(0xff006ed4),
        ),
        headlineLarge: GoogleFonts.workSans(
          fontSize: 40,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.24,
          color: secondaryColor,
        ),
        headlineMedium: GoogleFonts.workSans(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.24,
          color: surfaceColor,
        ),
        bodySmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.24,
          color: surfaceColor,
        ),
        bodyMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.24,
          color: onBackgroundColor,
        ),
        bodyLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.24,
          color: onBackgroundColor,
        ),
      );
}
