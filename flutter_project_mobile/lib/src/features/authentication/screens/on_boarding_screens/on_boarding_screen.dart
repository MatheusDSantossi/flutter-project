import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';
import 'package:flutter_project_mobile/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            // [
            // OnBoardingPage(size: size),
            // Container(color: mOnBoardingPage2Color),
            // Container(color: mOnBoardingPage3Color),
            // ]
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            waveType: WaveType.circularReveal,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide,
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.white),
              child: Container(
                // color: mDarkColor,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: mDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obController.currentPage.value,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff272727),
                  // dotHeight: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class OnBoardingPage extends StatelessWidget {
//   const OnBoardingPage({
//     super.key,
//     required this.model,
//   });

//   final OnBoardingModel model;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(mDefaultSize),
//       color: model.bgColor,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // mainAxisSize: MainAxisSize.max,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image(
//             image: AssetImage(model.image),
//             height: model.height * 0.5,
//           ),
//           Column(
//             children: [
//               Text(model.title, style: Theme.of(context).textTheme.bodyMedium),
//               Text(
//                 model.subTitle,
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//           Text(model.counterText, style: Theme.of(context).textTheme.bodySmall),
//           SizedBox(
//             height: 50.0,
//           )
//         ],
//       ),
//     );
//   }
// }

