import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:flutter_project_mobile_v2/src/features/core/controllers/profile_controller.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

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

          /// -- Future Builder to load cloud data
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel user = snapshot.data as UserModel;

                  final email = TextEditingController(text: user.email);
                  final password = TextEditingController(text: user.password);
                  final fullName = TextEditingController(text: user.fullName);
                  final phoneNo = TextEditingController(text: user.phoneNo);

                  /* Only shows the logged user */
                  return Column(
                    children: [
                      /*
                  ===========
                  Todo: Step 4 - Wrap this Widget with FutureBuilder
                  ===========
                  */
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
                      const SizedBox(height: 50),

                      // Form fields
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              // You only can use controller or initialValue
                              controller: fullName,
                              // initialValue: userData.fullName,
                              // initialValue: "userData.fullName",
                              decoration: const InputDecoration(
                                  label: Text(mFullName),
                                  prefixIcon:
                                      Icon(Icons.person_outline_rounded)),
                            ),
                            const SizedBox(height: mFormHeight - 20),
                            TextFormField(
                              controller: email,
                              // controller: controller.email,
                              // initialValue: userData.email,
                              decoration: const InputDecoration(
                                  label: Text(mEmail),
                                  // prefixIcon: Icon(LineAwesomeIcons.email)),
                                  prefixIcon: Icon(Icons.email_outlined)),
                            ),
                            const SizedBox(height: mFormHeight - 20),
                            TextFormField(
                              controller: phoneNo,
                              decoration: const InputDecoration(
                                  label: Text(mPhoneNo),
                                  // prefixIcon: Icon(LineAwesomeIcons.phone)),
                                  prefixIcon: Icon(Icons.phone)),
                            ),
                            const SizedBox(height: mFormHeight - 20),
                            TextFormField(
                              controller: password,
                              obscureText: true,
                              decoration: InputDecoration(
                                label: const Text(mPassword),
                                prefixIcon:
                                    const Icon(Icons.fingerprint_rounded),
                                suffixIcon: IconButton(
                                    icon:
                                        const Icon(LineAwesomeIcons.eye_slash),
                                    onPressed: () {}),
                              ),
                            ),
                            const SizedBox(height: mFormHeight),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final userData = UserModel(
                                    id: user.id,
                                    email: email.text.trim(),
                                    password: password.text.trim(),
                                    fullName: fullName.text.trim(),
                                    phoneNo: phoneNo.text.trim(),
                                  );

                                  await controller.updateRecord(userData);
                                },
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
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text('Something went wrong.'));
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            // Before the column data was here
          ),
        ),
      ),
    );
  }
}
