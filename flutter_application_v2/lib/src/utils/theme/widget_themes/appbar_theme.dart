import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';

/** -- Light & Dark Outlined Button Themes -- */
class MAppBarTheme {
  MAppBarTheme._();

  /** -- Light Theme */
  static const lightAppBarTheme = AppBarTheme(
    // backgroundColor: mDarkColor,
    backgroundColor: mWhiteColor,
  );

  /** -- Dark Theme */
  static const darkAppBarTheme = AppBarTheme(
    backgroundColor: mAccentColor,
  );
}
