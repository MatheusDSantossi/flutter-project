import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animationIn();

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;

    var height = mediaQuery.size.height;

    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? mSecondaryColor : mPrimaryColor,
      body: Stack(
        children: [
          MFadeInAnimation(
            durationInMs: 1200,
            animate: MAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(mDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: AssetImage(mWelcomeScreenImage),
                      height: height * 0.6),
                  Column(
                    children: [
                      Text(
                        mWelcomeTitle,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        mWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            child: const Text(mLogin)),
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => const SignUpScreen()), child: Text(mSignup)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
