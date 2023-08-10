import 'package:flutter_project_mobile/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  // void startSplashAnimation() async {
  void animateIn() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    // Get.to(WelcomeScreen());
    Get.offAll(() => const WelcomeScreen());
  }

  // Future startAnimation() async {
  Future animateOut() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
