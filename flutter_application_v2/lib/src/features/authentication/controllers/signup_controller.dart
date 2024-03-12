import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_project_mobile_v2/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  // call this Function from Design & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  // Get phoneNo from user and pass it to Auth Repository for Firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
    // phoneAuthentication(user.phoneNo);
    // Get.to(() => const OTPScreen());
    Get.to(() => const Dashboard());
  }
}
