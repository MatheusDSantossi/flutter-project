import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MFadeInAnimation(
              durationInMs: 1600,
              animate: MAnimatePosition(
                topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
              ),
              child: const Image(image: AssetImage(mSplashTopIcon)),
            ),
            MFadeInAnimation(
              durationInMs: 2000,
              animate: MAnimatePosition(
                  topBefore: 80,
                  topAfter: 80,
                  leftAfter: mDefaultSize,
                  leftBefore: -80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mAppName,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    mAppTagLine,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
            MFadeInAnimation(
              durationInMs: 2400,
              animate: MAnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: const Image(
                image: AssetImage(mSplashImage),
              ),
            ),
            MFadeInAnimation(
              durationInMs: 2400,
              animate: MAnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 60,
                  rightAfter: mDefaultSize,
                  rightBefore: mDefaultSize),
              child: Container(
                width: mSplashContainerSize,
                height: mSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: mPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// class SplashScreen extends StatelessWidget {
//   SplashScreen({Key? key}) : super(key: key);

//   // final splashScreenController = Get.put(SplashScreenController());

//   @override
//   Widget build(BuildContext context) {
//     FadeInAnimationController.find.startAnimation();
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             MFadeInAnimation(
//               durationInMs: 1600,
//               animate: MAnimatePosition(
//                 topAfter: 0,
//                 topBefore: -30,
//                 leftBefore: -30,
//                 leftAfter: 0,
//               ),
//               child: const Image(image: AssetImage(mSplashTopIcon)),
//             ),

//             MFadeInAnimation(
//               durationInMs: 2000,
//               animate: MAnimatePosition(
//                 topBefore: 80, topAfter: 80, leftAfter: mDefaultSize, leftBefore: -80
//               ),
//               child: Obx(
//                 () => AnimatedPositioned(
//                   duration: const Duration(milliseconds: 1600),
//                   top: 80,
//                   left: splashScreenController.animate.value ? mDefaultSize : -80,
//                   child: AnimatedOpacity(
//                     duration: const Duration(milliseconds: 1600),
//                     opacity: splashScreenController.animate.value ? 1 : 0,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           mAppName,
//                           style: Theme.of(context).textTheme.labelLarge,
//                         ),
//                         Text(
//                           mAppTagLine,
//                           style: Theme.of(context).textTheme.bodyMedium,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             MFadeInAnimation(
//               durationInMs: 2400,
//               animate: MAnimatePosition(
//                 bottomBefore: 0, bottomAfter: 100
//               ),
//               child: Obx(
//                 () => AnimatedPositioned(
//                   duration: const Duration(milliseconds: 1600),
//                   bottom: splashScreenController.animate.value ? 80 : 0,
//                   child: Image(
//                     image: AssetImage(mSplashImage),
//                   ),
//                 ),
//               ),
//             ),
//             MFadeInAnimation(
//               durationInMs: 2400,
//               animate: MAnimatePosition(
//                 bottomBefore: 0, bottomAfter: 60, rightAfter: mDefaultSize, rightBefore: mDefaultSize
//               ),
//               child: Obx(
//                 () => AnimatedPositioned(
//                   duration: const Duration(milliseconds: 1600),
//                   bottom: splashScreenController.animate.value ? 60 : 0,
//                   child: AnimatedOpacity(
//                     duration: const Duration(milliseconds: 1600),
//                     opacity: splashScreenController.animate.value ? 1 : 0,
//                     child: Container(
//                       width: mSplashContainerSize,
//                       height: mSplashContainerSize,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(100),
//                         color: mPrimaryColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   bool animate = false;

//   @override
//   void initState() {
//     startAnimation();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               top: animate ? 0 : -30,
//               left: animate ? 0 : -30,
//               child: Image(
//                 image: AssetImage(mSplashTopIcon),
//               ),
//             ),
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               top: 80,
//               left: animate ? mDefaultSize : -80,
//               child: AnimatedOpacity(
//                 duration: const Duration(milliseconds: 1600),
//                 opacity: animate ? 1 : 0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       mAppName,
//                       style: Theme.of(context).textTheme.labelLarge,
//                     ),
//                     Text(
//                       mAppTagLine,
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               bottom: animate ? 80 : 0,
//               child: Image(
//                 image: AssetImage(mSplashImage),
//               ),
//             ),
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 1600),
//               bottom: animate ? 60 : 0,
//               child: AnimatedOpacity(
//                 duration: const Duration(milliseconds: 1600),
//                 opacity: animate ? 1 : 0,
//                 child: Container(
//                   width: mSplashContainerSize,
//                   height: mSplashContainerSize,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(100),
//                     color: mPrimaryColor,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  // Future startAnimation() async {
  //   await Future.delayed(Duration(milliseconds: 500));
  //   setState(() => animate = true);
  //   await Future.delayed(Duration(milliseconds: 5000));
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  // }
}

// class MFadeInAnimation extends StatelessWidget {
//   const MFadeInAnimation({
//     super.key,
//     required this.splashScreenController,
//   });

//   final SplashScreenController splashScreenController;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 1600),
//       top: splashScreenController.animate.value ? 0 : -30,
//       left: splashScreenController.animate.value ? 0 : -30,
//       child: Image(
//         image: AssetImage(mSplashTopIcon),
//       ),
//     );
//   }
// }
