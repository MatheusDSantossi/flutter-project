import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter_project_mobile_v2/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_project_mobile_v2/src/constants/colors.dart';
import 'package:flutter_project_mobile_v2/src/constants/image_strings.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/on_boarding_screens/on_boarding_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:flutter_project_mobile_v2/src/features/core/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_project_mobile_v2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          mProfile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
          // IconButton(onPressed: () {}, icon: Icon(Icons.roundabout_left))
        ],
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
                        LineAwesomeIcons.alternate_pencil,
                        // Icons.person_pin_circle,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(mProfileHeading,
                  style: Theme.of(context).textTheme.headlineSmall),
              Text(mProfileSubHeading,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
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
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 30),

              // MENU
              ProfileMenuWidget(
                title: "Settings",
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ), //icon: LineAwesomeIcons.cog,),
              ProfileMenuWidget(
                title: "Billing Details",
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ), //icon: LineAwesomeIcons.cog,),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                title: "User Management",
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ), //icon: LineAwesomeIcons.cog,),
              ProfileMenuWidget(
                title: "Information",
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ), //icon: LineAwesomeIcons.cog,),
              ProfileMenuWidget(
                title: "Logout",
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {
                  AuthenticationRepository.instance.logout();
                  // Get.to(() => const OnBoardingScreen());
                  Get.to(() => const LoginScreen());
                },
              ), //icon: LineAwesomeIcons.cog,),
            ],
          ),
        ),
      ),
    );
  }
}
