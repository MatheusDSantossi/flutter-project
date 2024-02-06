import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:flutter_project_mobile_v2/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter_project_mobile_v2/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter_project_mobile_v2/src/utils/theme/widget_themes/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: MTextTheme.lightTextTheme,
      outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme:MElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
      // primarySwatch: const MaterialColor(0xFFFFE2000, <int, Color>{
      //   50: Color(0x1AFFE200),
      //   100: Color(0x33FFE200),
      //   200: Color(0x4DFFE200),
      //   300: Color(0x66FFE200),
      //   400: Color(0x80FFE200),
      //   500: Color(0xFFFFE200),
      //   600: Color(0x99FFE200),
      //   700: Color(0xB3FFE200),
      //   800: Color(0xCCFFE200),
      //   900: Color(0xE6FFE200),
      // }),
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // useMaterial3: true,
      );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MTextTheme.darkTextTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme:MElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
  );
}
