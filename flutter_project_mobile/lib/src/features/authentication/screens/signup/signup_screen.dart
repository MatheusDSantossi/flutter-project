import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_project_mobile/src/constants/image_strings.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(mDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: mWelcomeScreenImage,
                    title: mSignUpTitle,
                    subTitle: mSignUpSubTitle),
                SignUpFormWidget(),
                SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class SignUpFooterWidget extends StatelessWidget {
//   const SignUpFooterWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text("OR"),
//         SizedBox(
//           width: double.infinity,
//           child: OutlinedButton.icon(
//             onPressed: () {},
//             icon: const Image(
//               image: AssetImage(mGoogleLogoImage),
//               width: 30.0,
//             ),
//             label: const Text(mSignInWithGoogle),
//           ),
//         ),
//         TextButton(
//           onPressed: () {},
//           child: Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                   text: mAlreadyHaveAnAccount,
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//                 const TextSpan(
//                   text: mLogin,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SignUpFormWidget extends StatelessWidget {
//   const SignUpFormWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding:
//           const EdgeInsets.symmetric(vertical: mFormHeight - 10),
//       child: Form(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(
//                   label: Text(mFullName),
//                   prefixIcon: Icon(Icons.person_outline_rounded)),
//             ),
//             const SizedBox(height: mFormHeight - 20),
//             TextFormField(
//               decoration: const InputDecoration(
//                   label: Text(mEmail),
//                   prefixIcon: Icon(Icons.email_outlined)),
//             ),
//             const SizedBox(height: mFormHeight - 20),
//             TextFormField(
//               decoration: const InputDecoration(
//                   label: Text(mPhoneNo),
//                   prefixIcon: Icon(Icons.numbers)),
//             ),
//             const SizedBox(height: mFormHeight - 20),
//             TextFormField(
//               decoration: const InputDecoration(
//                   label: Text(mPassword),
//                   prefixIcon: Icon(Icons.fingerprint)),
//             ),
//             const SizedBox(height: mFormHeight - 20),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text(mSignup),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
