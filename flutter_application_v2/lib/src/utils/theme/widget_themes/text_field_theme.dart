import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';

class MTextFormFieldTheme {
  MTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: mSecondaryColor,
      floatingLabelStyle: const TextStyle(color: mSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(width: 2, color: mSecondaryColor),
      ));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: mPrimaryColor,
      floatingLabelStyle: const TextStyle(color: mPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(width: 2, color: mPrimaryColor),
      ));
}
