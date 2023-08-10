import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileProjectAppTextTheme {
  MobileProjectAppTextTheme._();

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white70),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white70),
    headlineLarge: GoogleFonts.montserrat(
        fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white70),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white60),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white60),
    bodyMedium: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white54),
    bodySmall: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white54),
  );

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 38, fontWeight: FontWeight.bold, color: Colors.black87),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 32, fontWeight: FontWeight.w900, color: Colors.black87),
    headlineLarge: GoogleFonts.montserrat(
        fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black54),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black54),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
    bodyMedium: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black45),
    bodySmall: GoogleFonts.montserrat(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black45),
  );
}
