import 'package:flutter/material.dart';

class AppTheme {

  // PRIMARY COLOR
  static const Color primary = Color(0xFF5B6EF5);

  // LIGHT COLORS
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightForeground = Color(0xFF1F2937);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightSecondary = Color(0xFFF5F6FA);
  static const Color lightBorder = Color(0xFFE5E7EB);

  // DARK COLORS
  static const Color darkBackground = Color(0xFF111827);
  static const Color darkForeground = Color(0xFFF9FAFB);
  static const Color darkCard = Color(0xFF1F2937);
  static const Color darkSecondary = Color(0xFF374151);
  static const Color darkBorder = Color(0xFF374151);


  // LIGHT THEME
  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.light,

    primaryColor: primary,

    scaffoldBackgroundColor: lightBackground,

    cardColor: lightCard,

    dividerColor: lightBorder,

    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackground,
      foregroundColor: lightForeground,
      elevation: 0,
    ),

    textTheme: const TextTheme(

      titleLarge: TextStyle(
        color: lightForeground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),

      bodyMedium: TextStyle(
        color: lightForeground,
        fontSize: 16,
      ),

    ),

    colorScheme: const ColorScheme.light(
      primary: primary,
      secondary: lightSecondary,
      surface: lightBackground,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

  );


  // DARK THEME
  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,

    primaryColor: primary,

    scaffoldBackgroundColor: darkBackground,

    cardColor: darkCard,

    dividerColor: darkBorder,

    appBarTheme: const AppBarTheme(
      backgroundColor: darkBackground,
      foregroundColor: darkForeground,
      elevation: 0,
    ),

    textTheme: const TextTheme(

      titleLarge: TextStyle(
        color: darkForeground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),

      bodyMedium: TextStyle(
        color: darkForeground,
        fontSize: 16,
      ),

    ),

    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: darkSecondary,
      surface: darkBackground,
    ),

  );

}