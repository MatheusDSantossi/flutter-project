import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(mWelcomeScreenImage),
          height: size.height * 0.3,
        ),
        Text(mLoginTitle,
            style: Theme.of(context).textTheme.headlineLarge),
        Text(mLoginSubTitle,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
