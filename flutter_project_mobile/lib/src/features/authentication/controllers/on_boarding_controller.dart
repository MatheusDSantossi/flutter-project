import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/colors.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:flutter_project_mobile/src/constants/image_strings.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';
import 'package:flutter_project_mobile/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/on_boarding_screens/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage1,
        title: mOnBoardingTitle1,
        subTitle: mOnBoardingSubTitle1,
        counterText: mOnBoardingCounter1,
        bgColor: mOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage2,
        title: mOnBoardingTitle2,
        subTitle: mOnBoardingSubTitle2,
        counterText: mOnBoardingCounter2,
        bgColor: mOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoardingImage3,
        title: mOnBoardingTitle3,
        subTitle: mOnBoardingSubTitle3,
        counterText: mOnBoardingCounter3,
        bgColor: mOnBoardingPage3Color,
      ),
    ),
  ];



  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
