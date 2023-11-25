import 'package:flutter_project_mobile/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  // or the name can be AnimateIn()
  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    // Get.to(
    //   () => const WelcomeScreen(),
    //   // duration: const Duration(milliseconds: 1000),
    //   // transition: Transition.fadeIn,
    // );
    // Get.offAll(() => const WelcomeScreen());
    // Get.to(const OnBoardingScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    Get.offAll(
      // Get.off Instead of Get.offAll()
      () => const WelcomeScreen(),
      duration: const Duration(milliseconds: 1000), //Transition Time
      transition: Transition.fadeIn, //Screen Switch Transition
    );
  }

  // and AnimateOut()
  // Future startAnimation() async {
  //   await Future.delayed(const Duration(milliseconds: 500));
  //   animate.value = true;
  // }

  //Can be used to animate In after calling the next screen.
  Future animationIn() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }

//Can be used to animate Out before calling the next screen.
  Future animationOut() async {
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
