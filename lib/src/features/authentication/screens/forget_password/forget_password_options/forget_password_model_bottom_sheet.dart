import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalButtonSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {},
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     padding: const EdgeInsets.all(20.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.0),
            //       color: Colors.grey.shade200,
            //     ),
            //     child: Row(
            //       children: [
            //       const Icon(Icons.mail_outline_rounded,
            //           size: 60.0),
            //       const SizedBox(width: 10.0),
            //       Column(
            //         crossAxisAlignment:
            //             CrossAxisAlignment.start,
            //         children: [
            //           Text(tEmail,
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .headlineSmall),
            //           Text(tResetViaEmail,
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .bodySmall),
            //         ],
            //       )
            //     ],),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
