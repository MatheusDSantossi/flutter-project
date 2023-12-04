import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MTextTheme {
  MTextTheme._(); // To avoid creating instances

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: mDarkColor),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w800, color: mDarkColor),
    displaySmall: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mDarkColor),
    headlineLarge: GoogleFonts.montserrat(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: mDarkColor),
    headlineMedium: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: mDarkColor),
    headlineSmall: GoogleFonts.montserrat(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: mDarkColor),
    bodyLarge: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mDarkColor),
    bodyMedium: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mDarkColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: mWhiteColor),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w800, color: mWhiteColor),
    displaySmall: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mWhiteColor),
    headlineLarge: GoogleFonts.montserrat(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: mWhiteColor),
    headlineMedium: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: mWhiteColor),
    headlineSmall: GoogleFonts.montserrat(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: mWhiteColor),
    bodyLarge: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mWhiteColor),
    bodyMedium: GoogleFonts.montserrat(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mWhiteColor),
  );
}
