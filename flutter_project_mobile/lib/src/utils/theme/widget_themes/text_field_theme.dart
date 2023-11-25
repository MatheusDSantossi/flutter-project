import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';

class MTextFormFieldTheme {
  MTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: mSecondaryColor,
          floatingLabelStyle: TextStyle(color: mSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: mSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: mPrimaryColor,
          floatingLabelStyle: TextStyle(color: mPrimaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: mPrimaryColor),
          ));
}
