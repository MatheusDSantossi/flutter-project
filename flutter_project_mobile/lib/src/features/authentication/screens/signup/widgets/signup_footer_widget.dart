import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/image_strings.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(mGoogleLogoImage),
              width: 30.0,
            ),
            label: const Text(mSignInWithGoogle),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: mAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const TextSpan(
                  text: mLogin,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
