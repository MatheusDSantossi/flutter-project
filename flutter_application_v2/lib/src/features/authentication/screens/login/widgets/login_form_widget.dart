import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/dashboard.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: mFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: mEmail,
                hintText: mEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: mFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: mPassword,
                hintText: mPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: mFormHeight - 20),

            // -- FORGET PASSWORD BTN
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(mForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const Dashboard()),
                // onPressed: () {
                //   Get.to(const Dashboard());
                // },
                child: const Text(mLogin),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //                 context: context,
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(20.0)),
  //                 builder: (context) => Container(
  //                   padding: const EdgeInsets.all(mDefaultSize),
  //                   child: Column(
  //                     children: [
  //                       Text(mForgetPasswordTitle,
  //                           style:
  //                               Theme.of(context).textTheme.headlineMedium),
  //                       Text(mForgetPasswordSubTitle,
  //                           style: Theme.of(context).textTheme.bodyMedium),
  //                       const SizedBox(height: 20.0),
  //                       ForgetPasswordBtnWidget(
  //                         btnIcon: Icons.mail_outline_rounded,
  //                         title: mEmail,
  //                         subTitle: mResetViaEmail,
  //                         onTap: (){},
  //                       ),
  //                       ForgetPasswordBtnWidget(
  //                         btnIcon: Icons.mobile_friendly_rounded,
  //                         title: mPhoneNo,
  //                         subTitle: mResetViaPhone,
  //                         onTap: (){},
  //                       ),
  //                       const SizedBox(width: 10.0),
  //                     ],
  //                   ),
  //                 ),
  //               );
  // }
}

// class ForgetPasswordBtnWidget extends StatelessWidget {
//   const ForgetPasswordBtnWidget({
//     super.key,
//     required this.btnIcon,
//     required this.title,
//     required this.subTitle,
//     required this.onTap,
//   });

//   final IconData btnIcon;
//   final String title, subTitle;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap: () {},
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(20.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: Colors.grey.shade200,
//         ),
//         child: Row(
//           children: [
//             // const Icon(Icons.mail_outline_rounded, size: 60.0),
//             Icon(btnIcon, size: 60.0),
//             const SizedBox(width: 10.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: Theme.of(context).textTheme.headlineSmall),
//                 Text(subTitle, style: Theme.of(context).textTheme.bodySmall),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
