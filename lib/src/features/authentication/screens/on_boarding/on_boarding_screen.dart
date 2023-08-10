import 'package:flutter/material.dart';

import 'package:flutter_project_mobile/src/features/authentication/controllers/on_boarding_controller.dart';

import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  // final controller = LiquidController();

  // int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    // final pages = [
    //   OnBoardingPageWidget(
    //     model: OnBoardingModel(
    //       image: tOnBoardingImage1,
    //       title: tOnBoardingTitle1,
    //       subTitle: tOnBoardingSubTitle1,
    //       counterText: tOnBoardingCounter1,
    //       height: size.height,
    //       bgColor: tOnBoardingPage1Color,
    //     ),
    //   ),
    //   OnBoardingPageWidget(
    //     model: OnBoardingModel(
    //       image: tOnBoardingImage2,
    //       title: tOnBoardingTitle2,
    //       subTitle: tOnBoardingSubTitle2,
    //       counterText: tOnBoardingCounter2,
    //       height: size.height,
    //       bgColor: tOnBoardingPage2Color,
    //     ),
    //   ),
    //   OnBoardingPageWidget(
    //     model: OnBoardingModel(
    //       image: tOnBoardingImage3,
    //       title: tOnBoardingTitle3,
    //       subTitle: tOnBoardingSubTitle3,
    //       counterText: tOnBoardingCounter3,
    //       height: size.height,
    //       bgColor: tOnBoardingPage3Color,
    //     ),
    //   ),
    // ];

    final obController = OnBoardingController();

    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: obController.pages,
          liquidController: obController.controller,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
          onPageChangeCallback: obController.onPageChangeCallback,
          // OnBoardingPage(size: size),
          // Container(color: tOnBoardingPage2Color),
          // Container(color: tOnBoardingPage3Color),
        ),
        Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: () => obController.animateToNextSlide(),
            // {
            // int nextPage = controller.currentPage + 1;
            // controller.animateToPage(page: nextPage);
            // },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xff272727), shape: BoxShape.circle),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () => obController.skip(),
            // onPressed: () => controller.jumpToPage(page: 2),
            // onPressed: () {
            //   controller.jumpToPage(page: 2);
            // },
            child: const Text("Skip", style: TextStyle(color: Colors.grey)),
          ),
        ),
        Obx(
          () => Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: obController.currentPage.value,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  // void onPageChangedCallback(int activePageIndex) {
  //   setState(() {
  //     currentPage = activePageIndex;
  //   });
  // }
}


// class OnBoardingPage extends StatelessWidget {
//   const OnBoardingPage({
//     super.key,
//     required this.model,
//   });

//   // final Size size;
//   final OnBoardingModel model;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(tDefaultSize),
//       color: model.bgColor,
//       child:
//           Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//         Image(
//           image: AssetImage(model.image),
//           height: model.height * 0.5,
//         ),
//         Column(
//           children: [
//             Text(model.title,
//                 style: Theme.of(context).textTheme.headlineMedium),
//             Text(
//               model.subTitle,
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//         Text(
//           model.counterText,
//           style: Theme.of(context).textTheme.headlineSmall,
//         ),
//         SizedBox(
//           height: 50.0,
//         )
//       ]),
//     );
//   }
// }
