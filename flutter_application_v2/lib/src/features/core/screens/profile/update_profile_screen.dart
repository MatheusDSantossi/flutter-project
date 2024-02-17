import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          mEditProfile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(mDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage(mProfileImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mPrimaryColor),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                child: Column(
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
                          // prefixIcon: Icon(LineAwesomeIcons.email)),
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    const SizedBox(height: mFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(mPhoneNo),
                          // prefixIcon: Icon(LineAwesomeIcons.phone)),
                          prefixIcon: Icon(Icons.phone)),
                    ),
                    const SizedBox(height: mFormHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(mPassword),
                          prefixIcon: Icon(Icons.fingerprint_rounded)),
                    ),
                    const SizedBox(height: mFormHeight),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const UpdateProfileScreen()),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mPrimaryColor,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          mEditProfile,
                          style: TextStyle(color: mDarkColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: mFormHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: mJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: mJoinedAt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text(mDelete),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
