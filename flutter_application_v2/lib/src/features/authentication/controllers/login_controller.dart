import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_project_mobile_v2/src/utils/helper/helper.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final showPassword = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // Loader
  final isLoading = false.obs;
  final isGoogleLoading = false.obs;
  final isFacebookLoading = false.obs;

  /// [EmailAndPasswordLogin]
  Future<void> login() async {
    try {
      isLoading.value = true;
      if (!loginFormKey.currentState!.validate()) {
        Helper.errorSnackBar(title: mOhSnap, message: "No validated form key");
        isLoading.value = false;
        return;
      }
      final auth = AuthenticationRepository.instance;
      await auth.loginWithEmailAndPassword(
          email.text.trim(), password.text.trim());
      auth.setInitialScreen(auth.firebaseUser);
    } catch (e) {
      isLoading.value = false;
      Helper.errorSnackBar(title: mOhSnap, message: e.toString());
    }
  }

  /// [GoogleSignInAuthentication]
  Future<void> googleSignIn() async {
    try {
      final auth = AuthenticationRepository.instance;

      isGoogleLoading.value = true;
      await auth.signInWithGoogle();
      isGoogleLoading.value = false;
      auth.setInitialScreen(auth.firebaseUser);
    } catch (e) {
      isGoogleLoading.value = false;
      Helper.errorSnackBar(title: mOhSnap, message: e.toString());
    }
  }

  // Call this Function from Design & it will do the rest
  Future<void> loginUser(String email, String password) async {
    await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);

    // String? error = await AuthenticationRepository.instance
    //     .loginWithEmailAndPassword(email, password);
    // if (error != null) {
    //   Get.showSnackbar(GetSnackBar(message: error.toString()));
    // }
    // else {
    //   // Get.showSnackbar(const GetSnackBar(message: "error.toString()"));
    //   Get.showSnackbar(const GetSnackBar(message: error.toString()));
    // }
  }
}
