import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  // final Size size;
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image(
          image: AssetImage(model.image),
          height: size.height * 0.4,
        ),
        Column(
          children: [
            Text(model.title,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(
              model.subTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(
          model.counterText,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: 50.0,
        )
      ]),
    );
  }
}
