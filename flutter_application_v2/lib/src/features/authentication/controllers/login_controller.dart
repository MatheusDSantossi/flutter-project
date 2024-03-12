import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  // Call this Function from Design & it will do the rest
  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
    // else {
    //   // Get.showSnackbar(const GetSnackBar(message: "error.toString()"));
    //   Get.showSnackbar(const GetSnackBar(message: error.toString()));
    // }
  }
}
