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
  final showPassword = false.obs;
  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Loader
  final isLoading = false.obs;
  final isGoogleLoading = false.obs;
  final isFacebookLoading = false.obs;

  final userRepo = Get.put(UserRepository());

  // As in the AuthenticationRepository we are calling _setScreen() Method
  // so, whenever there is change in the user state(), screen will be updated
  // Therefore, when new user is authenticated, AuthenticationRepository() detects
  // the change and call _setScreen() to switch screens

  /// Register new user using either [EmailAndPassword] OR [PhoneNumber] authentication
  // Future<void> createUser(UserModel user) async {
  Future<void> createUser() async {
    try {
      isLoading.value = true;
      if (!signupFormKey.currentState!.validate()) {
        isLoading.value = false;
        return;
      }

      /// For Phone Authentication
      // SignUpController.instance.phoneAuthentication(controller.phone.text.trim());
      // Get.to(() => const OTPScreen());

      // Get user and pass it to controller
      final user = UserModel(
          email: email.text.trim(),
          password: password.text.trim(),
          fullName: fullName.text.trim(),
          phoneNo: phoneNo.text.trim());

      // Authenticate user first

      final auth = AuthenticationRepository.instance;
      await auth.createUserWithEmailAndPassword(user.email, user.password);
      await UserRepository.instance.createUser(user);
      auth.setInitialScreen(auth.firebaseUser);
      Get.snackbar("Sucess", "You account has been created.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);

      // Get.snackbar("Error", e.toString(),
      //     snackPosition: SnackPosition.BOTTOM,
      //     duration: const Duration(seconds: 5));
    }

    // await userRepo.createUser(user);
    // registerUser(user.email, user.password);
    // phoneAuthentication(user.phoneNo);
    // Get.to(() => const OTPScreen());

    // Get.to(() => const Dashboard());
  }

  // Get phoneNo from user and pass it to Auth Repository for Firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  // call this Function from Design & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }
}
