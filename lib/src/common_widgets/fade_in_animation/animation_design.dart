import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_project_mobile/src/constants/images_strings.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs,
    this.animate,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        // top: controller.animate.value ? -50 : -80,
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        // left: controller.animate.value ? -50 : -80,
        // bottom: controller.animate.value ? -50 : -80,
        // right: controller.animate.value ? -50 : -80,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
          // child: Image(image: AssetImage(tSplashTopIcon)),
        ),
      ),
    );
  }
}
