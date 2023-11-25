import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/constants/size.dart';
import 'package:flutter_project_mobile/src/constants/text_strings.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: mFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mEmail),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mPhoneNo),
                  prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mPassword),
                  prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: mFormHeight - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(mSignup),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
