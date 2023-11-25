import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/login/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(mDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /** -- Section 1 -- */
                LoginHeaderWidget(),
                /** -- /.end -- */

                /** -- Section 2 [Form] -- */
                LoginForm(),
                /** -- /.end -- */
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class LoginFooterWidget extends StatelessWidget {
//   const LoginFooterWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const Text("Or"),
//         SizedBox(
//           width: double.infinity,
//           child: OutlinedButton.icon(
//             icon: const Image(
//               image: AssetImage(mGoogleLogoImage),
//               width: 20.0,
//             ),
//             onPressed: () {},
//             label: Text(mSignInWithGoogle),
//           ),
//         ),
//         const SizedBox(
//           height: mFormHeight - 20,
//         ),
//         TextButton(
//           onPressed: () {},
//           child: Text.rich(
//             TextSpan(
//               text: mDontHaveAnAccount,
//               style: Theme.of(context).textTheme.bodyLarge,
//               children: const [
//                 TextSpan(
//                   text: mSignup,
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LoginHeaderWidget extends StatelessWidget {
//   const LoginHeaderWidget({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image(
//           image: AssetImage(mWelcomeScreenImage),
//           height: size.height * 0.3,
//         ),
//         Text(mLoginTitle,
//             style: Theme.of(context).textTheme.headlineLarge),
//         Text(mLoginSubTitle,
//             style: Theme.of(context).textTheme.bodyLarge),
//       ],
//     );
//   }
// }

// class LoginForm extends StatelessWidget {
//   const LoginForm({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Container(
//         padding:
//             const EdgeInsets.symmetric(vertical: mFormHeight - 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.person_outline_outlined),
//                 labelText: mEmail,
//                 hintText: mEmail,
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: mFormHeight),
//             TextFormField(
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.fingerprint),
//                 labelText: mPassword,
//                 hintText: mPassword,
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   onPressed: null,
//                   icon: Icon(Icons.remove_red_eye_sharp),
//                 ),
//               ),
//             ),
//             const SizedBox(height: mFormHeight - 20),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: const Text(mForgetPassword),
//               ),
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text(mLogin),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
