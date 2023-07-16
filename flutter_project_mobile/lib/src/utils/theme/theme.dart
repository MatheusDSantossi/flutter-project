import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/utils/theme/widget_themes/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileProjectAppTheme {
  MobileProjectAppTheme._(); // this make the constructor private
  // the _ means private

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MobileProjectAppTextTheme.lightTextTheme,
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    // displayMedium: TextStyle.montserrat(
    //   color: Colors.black87,
    // ),
    //   primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
    //     50: Color(0x1AFFE200),
    //     100: Color(0x33FFE200),
    //     200: Color(0x4DFFE200),
    //     300: Color(0x66FFE200),
    //     400: Color(0x80FFE200),
    //     500: Color(0xFFFFE200),
    //     600: Color(0x99FFE200),
    //     700: Color(0xB3FFE200),
    //     800: Color(0xCCFFE200),
    //     900: Color(0xE6FFE200),
    //   }),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: MobileProjectAppTextTheme.darkTextTheme);
}
