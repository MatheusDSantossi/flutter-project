import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/signup/widgets/primaryButton.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    // final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: mFormHeight - 10),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(mFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(mEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(mPhoneNo),
                  prefixIcon: Icon(LineAwesomeIcons.phone)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                // label: Text(mPassword), prefixIcon: Icon(Icons.fingerprint)),
                prefixIcon: Icon(Icons.fingerprint),
                labelText: mPassword,
                hintText: mPassword,
                // border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: mFormHeight - 20),
            Obx(
              () => MPrimaryButton(
                // isLoading: controller.isLoading.value,
                // text: mSignup.tr,
                // onPressed: () => controller.createUser(),
                isLoading: controller.isLoading.value ? true : false,
                text: mSignup.tr,
                onPressed: controller.isFacebookLoading.value ||
                        controller.isGoogleLoading.value
                    ? () {}
                    : () => controller.createUser(),
              ),
            ),

            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       if (_formKey.currentState!.validate()) {
            //         // Email authentication
            //         // SignUpController.instance.registerUser(
            //         //     controller.email.text.trim(),
            //         //     controller.password.text.trim());

            //         // Phone authentication (has an error)
            //         // Get.to(() => Dashboard());
            //         // SignUpController.instance
            //         //     .phoneAuthentication(controller.phoneNo.text.trim());
            //         // Get.to(() => const OTPScreen());

            //         /*
            //               ===========
            //               Todo: Step - 2 [User Repository to perform Database Operation]
            //               ===========
            //         */
            //         final user = UserModel(
            //           email: controller.email.text.trim(),
            //           password: controller.password.text.trim(),
            //           fullName: controller.fullName.text.trim(),
            //           phoneNo: controller.phoneNo.text.trim(),
            //         );
            //         SignUpController.instance.createUser(user);
            //         // CREATE AN EMAIL AUTHENTICATION
            //       }
            //     },
            //     child: const Text(mSignup),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
