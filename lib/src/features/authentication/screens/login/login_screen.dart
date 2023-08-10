import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/common_widgets/fade_in_animation/form/form_header_widget.dart';
import 'package:flutter_project_mobile/src/constants/images_strings.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';

import 'package:flutter_project_mobile/src/features/authentication/screens/login/widgets/login_header_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/login/widgets/login_footer_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section 1 -- */
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                /* -- end -- */

                /* -- Section 2 -- */
                LoginFormWidget(),
                /* -- end -- */
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }

//   Form LoginForm() {
//     return Form(
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.person_outline_outlined),
//                   labelText: tEmail,
//                   hintText: tEmail,
//                   border: OutlineInputBorder()),
//             ),
//             const SizedBox(height: tFormHeight - 20),
//             TextFormField(
//               decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.fingerprint),
//                   labelText: tPassword,
//                   hintText: tPassword,
//                   border: OutlineInputBorder(),
//                   suffixIcon: IconButton(
//                     onPressed: null,
//                     icon: Icon(Icons.remove_red_eye_sharp),
//                   )),
//             ),
//             const SizedBox(height: tFormHeight - 20),
//             Align(
//               alignment: Alignment.center,
//               child: TextButton(onPressed: () {}, child: Text(tForgetPassword)),
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(onPressed: () {}, child: Text(tLogin)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
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
//         const Text("OR"),
//         SizedBox(
//           width: double.infinity,
//           child: OutlinedButton.icon(
//             icon: Image(
//               image: AssetImage(tGoogleLogoImage),
//               width: 20.0,
//             ),
//             onPressed: () {},
//             label: Text(tSignWithGoogle),
//           ),
//         ),
//         const SizedBox(
//           height: tFormHeight - 20.0,
//         ),
//         TextButton(
//           onPressed: () {},
//           child: Text.rich(
//             TextSpan(
//               text: tDontHaveAnAccount,
//               style: Theme.of(context).textTheme.bodyLarge,
//               children: const [
//                 TextSpan(
//                   text: tSignup,
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
//           image: AssetImage(tWelcomeScreenImage),
//           height: size.height * 0.2,
//         ),
//         Text(
//           tLoginTitle,
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//         Text(
//           tLoginSubTitle,
//           style: Theme.of(context).textTheme.bodyLarge,
//         ),
//       ],
//     );
//   }
// }
