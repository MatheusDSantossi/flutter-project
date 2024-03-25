import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Helper extends GetxController {
  // Helper._();

  /* -- ================= VALIDATIONS ================ -- */

  static String? validateEmail(value) {}

  static String? validatePassword(value) {}

  static successSnackBar({required title, message}) {
     Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: mWhiteColor,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 6),
      margin: const EdgeInsets.all(mDefaultSpace - 10),
      icon: const Icon(
        LineAwesomeIcons.check_circle,
        color: mWhiteColor,
      ),
    );
  }

  static warningSnackBar({required title, message}) {
     Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: mWhiteColor,
      backgroundColor: Colors.yellow,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 6),
      margin: const EdgeInsets.all(mDefaultSpace - 10),
      icon: const Icon(
        LineAwesomeIcons.check_circle,
        color: mWhiteColor,
      ),
    );
  }

  static void errorSnackBar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: mWhiteColor,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 6),
      margin: const EdgeInsets.all(mDefaultSpace - 10),
      icon: const Icon(
        LineAwesomeIcons.check_circle,
        color: mWhiteColor,
      ),
    );
  }

  static void modernSnackBar({required String title, required String message}) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 5));
  }
}
