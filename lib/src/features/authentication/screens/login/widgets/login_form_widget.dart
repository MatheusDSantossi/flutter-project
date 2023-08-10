import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(height: tFormHeight - 20),

            // -- FORGET PASSWORD BTN
            Align(
              alignment: Alignment.center,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalButtonSheet(context);
                  },
                  child: Text(tForgetPassword)),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(tLogin)),
            ),
          ],
        ),
      ),
    );
  }
}

// class ForgetPasswordBtnWidget extends StatelessWidget {
//   const ForgetPasswordBtnWidget({
//     required this.btnIcon,
//     required this.title,
//     required this.subTitle,
//     required this.onTap,
//     Key? key,
//   }) : super(key: key);

//   final IconData btnIcon;
//   final String title, subTitle;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(20.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: Colors.grey.shade200,
//         ),
//         child: Row(
//           children: [
//             const Icon(Icons.mail_outline_rounded, size: 60.0),
//             const SizedBox(width: 10.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: Theme.of(context).textTheme.headlineSmall),
//                 Text(subTitle, style: Theme.of(context).textTheme.bodySmall),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
