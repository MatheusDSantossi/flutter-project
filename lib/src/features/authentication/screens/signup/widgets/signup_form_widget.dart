import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/sizes.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
              // decoration: InputDecoration(
              //   label: Text(tFullName),
              //   border: OutlineInputBorder(),
              //   prefixIcon: Icon(
              //     Icons.person_outline_rounded,
              //     color: tSecondaryColor,
              //   ),
              //   labelStyle: TextStyle(color: tSecondaryColor),
              //   focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(
              //         width: 2.0, color: tSecondaryColor),
              //   ),
              // ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.phone_android_rounded)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: tFormHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(tSignup),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
