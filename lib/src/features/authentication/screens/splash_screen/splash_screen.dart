import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_project_mobile/src/constants/images_strings.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import 'package:get/get.dart';
// I stopped onat 9:49

class SplashScreen extends StatelessWidget {
  //StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  // final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animateIn();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
                topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
            child: const Image(image: AssetImage(tSplashTopIcon)),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftBefore: -80,
                leftAfter: tDefaultSize),
            // child: Column(
            //   TAnimatePosition(
            //     duration: const Duration(milliseconds: 1600),
            //     top: 160,
            //     left: controller.animate.value ? tDefaultSize : -80,
            //     child: AnimatedOpacity(
            //       duration: const Duration(milliseconds: 1600),
            //       opacity: controller.animate.value ? 1 : 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.displayMedium ??
                      TextStyle(
                          fontSize:
                              16), // Replace '16' with your default font size.
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.headlineMedium ??
                      TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight
                              .bold), // Replace '24' with your default font size.
                ),
              ],
            ),
            //     ),
            //   ),
            // ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: const Image(image: AssetImage(tSplashImage)),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: tDefaultSize,
                rightAfter: tDefaultSize),
            // child: TAnimatePosition(
            //   duration: const Duration(milliseconds: 2400),
            //   bottom: controller.animate.value ? 60 : 0,
            //   right: tDefaultSize,
            //   child: AnimatedOpacity(
            //     duration: const Duration(milliseconds: 2000),
            //     opacity: controller.animate.value ? 1 : 0,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
