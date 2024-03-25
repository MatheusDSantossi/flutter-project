import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_project_mobile_v2/src/utils/social_footer.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Or"),

        MSocialFooter(
          text: "Login with Google",
          image: mGoogleLogoImage,
          foreground: mGoogleForegroundColor,
          background: mGoogleColor,
          onPressed: () {
            AuthenticationRepository.instance.signInWithGoogle();
          },
        ),

        // SizedBox(
        //   width: double.infinity,
        //   child: OutlinedButton.icon(
        //     icon: const Image(
        //       image: AssetImage(mGoogleLogoImage),
        //       width: 30.0,
        //     ),
        //     onPressed: () {},
        //     label: const Text(mSignInWithGoogle),
        //   ),
        // ),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
              text: mDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: mSignup,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
