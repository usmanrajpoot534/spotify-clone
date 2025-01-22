import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:spotify_clone/core/config/theme/app.colors.dart';

abstract class AppTheme {
  ///## Light Theme
  ///
  ///Custom designed theme for light mode.
  static final lightTheme = ThemeData(
    fontFamily: 'Satoshi',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: 28.padAll,
      hintStyle: const TextStyle(
        color: Color(0xFF383838),
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.black, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.black, width: 0.5),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.black, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.black, width: 0.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
      ),
    ),
  );

  ///## Dark Theme
  ///
  ///Custom designed theme for dark mode.
  static final darkTheme = ThemeData(
    fontFamily: 'Satoshi',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: 28.padAll,
      hintStyle: const TextStyle(
        color: Color(0xFFA7A7A7),
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.white, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.white, width: 0.5),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.white, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.white, width: 0.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: 30.circularRadius,
        borderSide: const BorderSide(color: Colors.red, width: 0.5),
      ),
    ),
  );
}
