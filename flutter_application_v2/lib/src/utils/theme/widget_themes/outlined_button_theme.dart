import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';

/** -- Light & Dark Outlined Button Themes -- */
class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  /** -- Light Theme */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      foregroundColor: mSecondaryColor,
      side: const BorderSide(color: mSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  /** -- Dark Theme */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      foregroundColor: mWhiteColor,
      side: const BorderSide(color: mWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}
