import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/theme.dart';

/// Define theme data for light
ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Mulish',
    bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
    dialogTheme: DialogTheme(
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    primaryColor: TwitterColor.cerulean,
    colorScheme: ColorScheme.fromSwatch(accentColor: TwitterColor.cerulean),
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.white24, elevation: 0),
    textTheme: GoogleFonts.mulishTextTheme(TextTheme(
      // displayLarge: GoogleFonts.mulish(textStyle: textTheme.displayLarge),
      // displayMedium: GoogleFonts.mulish(textStyle: textTheme.displayMedium),
      // displaySmall: GoogleFonts.mulish(textStyle: textTheme.displaySmall),
      headlineLarge: GoogleFonts.mulish(
          textStyle: const TextStyle(
              fontSize: 32, fontWeight: FontWeight.w800, color: Colors.black)),
      // headlineMedium: GoogleFonts.mulish(textStyle: textTheme.headlineMedium),
      // headlineSmall: GoogleFonts.mulish(textStyle: textTheme.headlineSmall),
      // titleLarge: GoogleFonts.mulish(textStyle: textTheme.titleLarge),
      // titleMedium: GoogleFonts.mulish(textStyle: textTheme.titleMedium),
      // titleSmall: GoogleFonts.mulish(textStyle: textTheme.titleSmall),
      bodyLarge: GoogleFonts.mulish(textStyle: const TextStyle(fontSize: 18)),
      bodyMedium: GoogleFonts.mulish(textStyle: const TextStyle(fontSize: 16)),
      bodySmall: GoogleFonts.mulish(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      labelLarge: GoogleFonts.mulish(
          textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87)),
      // labelMedium: GoogleFonts.mulish(textStyle: textTheme.labelMedium),
      // labelSmall: GoogleFonts.mulish(textStyle: textTheme.labelSmall),
    )),
    cardTheme: const CardTheme(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
    chipTheme: ChipThemeData.fromDefaults(
        secondaryColor: TwitterColor.cerulean,
        labelStyle: const TextStyle(),
        brightness: Brightness.light));
