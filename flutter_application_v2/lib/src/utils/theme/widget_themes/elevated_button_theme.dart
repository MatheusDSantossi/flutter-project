import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';

/** -- Light & Dark Elevated Button Themes -- */
class MElevatedButtonTheme {
  MElevatedButtonTheme._();

  /** -- Light Theme */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      foregroundColor: mWhiteColor,
      backgroundColor: mSecondaryColor,
      side: const BorderSide(color: mSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  /** -- Dark Theme */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      // elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      foregroundColor: mSecondaryColor,
      backgroundColor: mWhiteColor,
      side: const BorderSide(color: mWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}
