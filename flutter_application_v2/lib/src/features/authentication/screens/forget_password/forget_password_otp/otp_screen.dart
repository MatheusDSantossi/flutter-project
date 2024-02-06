import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/controllers/otp_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(mDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(mOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 40.0),
            const Text(
              "$mOtpMessage support@timeManager.com",
              textAlign: TextAlign.center,
            ),
            // Text(mOtpMessage + "support@timeManager.com", textAlign: TextAlign.center,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              // keyboardType: TextInputType,
              onSubmit: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
                // print("OTP IS ==> $code");
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(mNext)),
            ),
          ],
        ),
      ),
    );
  }
}
