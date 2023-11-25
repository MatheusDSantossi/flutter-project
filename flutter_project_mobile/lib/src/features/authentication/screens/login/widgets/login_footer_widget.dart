import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/image_strings.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';

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
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(mGoogleLogoImage),
              width: 30.0,
            ),
            onPressed: () {},
            label: const Text(mSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
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
