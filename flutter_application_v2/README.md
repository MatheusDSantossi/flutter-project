# flutter_application_v2

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## UPDATE

    1. Updated Deprecated TextTheme Attributes [headline1], [headline2], [Link](https://codingwitht.com/how-to-use-theme-in-flutter-light-dark-theme)
    2. ElevatedButton Properties uptaded from [onPrimary] to [foregroundColor] & [primary] to [backgroundColor]
    3. Style Update from Staidum to Raidus [15]

## DOCS

    1. Show Splash Screen till data loads & when loaded call FlutterNativeSplash.remove(); In this case I'm removing it inside AuthenticationRepository() => OnReady() method.
    2. Before running App - Initialize Firebase and after initialization, call Authentication Repository so that it can check which screen to show.
    3. Solves the issue of Get.LazyPut() by defening all Controllers in initialBinding
    4. Screen Transition: Use these 2 properties in GetMaterialApp
        - defaultTransition: Transition.leftToRightWithFade,
        - transitionDuration: const Duration(milliseconds: 500),
    5. HOME SCREEN:
        -Show Progress Indicator OR SPLASH SCREEN until SCreen Loads all its data from cloud.
        - Let the AutheticationRepository decide which screen to appear as first.
    6. Authentication Repository:
        - We use this repository to autheticate the user and manage screen redirects.
        - This repo is being called from the main.dart on app launch.
        - It's onReady()  func set the firebaseUser state, remove the Splash Screen and redirect the user to relevant screen.
        - To use this repo in other classes we will call (final auth = AuthenticationRepository.instance;)

## OBSERVATIONS

I'm getting the error "════════ Exception caught by widgets library ═════════════════════
                Duplicate GlobalKey detected in widget tree.
════════════════════════════════════════════════════════════════════════════════"

ChatGPT recommended using the code below to fix that, but considering that the application is running just fine I'll make this modification later on.

import 'package:flutter_project_mobile_v2/src/utils/helper/helper.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final showPassword = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();

  // Loader
  final isLoading = false.obs;
  final isGoogleLoading = false.obs;
  final isFacebookLoading = false.obs;

  /// [EmailAndPasswordLogin]
  Future<void> login(GlobalKey<FormState> formKey) async {
    try {
      isLoading.value = true;
      if (!formKey.currentState!.validate()) {
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
}
