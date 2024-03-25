import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/controllers/login_controller.dart';
import 'package:flutter_project_mobile_v2/src/utils/button_loading_widget.dart';
import 'package:flutter_project_mobile_v2/src/utils/social_button.dart';
import 'package:get/get.dart';

class MSocialFooter extends StatelessWidget {
  const MSocialFooter({
    Key? key,
    required this.text,
    required this.image,
    this.isLoading = false,
    required this.foreground,
    required this.background,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final String image;
  final Color foreground, background;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Container(
      padding: const EdgeInsets.only(
          top: mDefaultSpace * 1.5, bottom: mDefaultSpace),
      child: Column(
        children: [
          Obx(
            () => MSocialButton(
              text: '${mConnectWith.tr} ${mGoogle.tr}',
              image: mGoogleLogoImage,
              background: mGoogleColor,
              foreground: mGoogleForegroundColor,
              isLoading: controller.isGoogleLoading.value ? true : false,
              onPressed: controller.isFacebookLoading.value ||
                      controller.isLoading.value
                  ? () {}
                  : controller.isGoogleLoading.value
                      ? () {}
                      : () => controller.googleSignIn(),
            ),
          ),
          const SizedBox(height: 10),
          Obx(
            () => MSocialButton(
                text: '${mConnectWith.tr} ${mFacebook.tr}',
                image: mFacebookLogoImage,
                foreground: mWhiteColor,
                background: mFacebookColor,
                isLoading: controller.isFacebookLoading.value ? true : false,
                onPressed:
                    controller.isGoogleLoading.value 
                    // || controller.isLoading
                        ? () {}
                        : () {}
                // : controller.isFacebookLoading.value
                // ? (){}
                // : () => controller.facebookSignIn()
                ),
          ),
          const SizedBox(height: mDefaultSpace * 2),
        ],
      ),
    );
  }
}
