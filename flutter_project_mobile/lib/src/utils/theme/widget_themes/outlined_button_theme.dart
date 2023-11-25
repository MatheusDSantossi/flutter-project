import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';

/** -- Light & Dark Outlined Button Themes -- */
class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  /** -- Light Theme */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: mSecondaryColor,
      side: BorderSide(color: mSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  /** -- Dark Theme */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: mWhiteColor,
      side: BorderSide(color: mWhiteColor),
      padding: EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}
