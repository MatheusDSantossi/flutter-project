import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manegement Time',
      themeMode: ThemeMode.system,

      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const SplashScreen(),
      home: const CircularProgressIndicator(),
      // home: const LoginScreen(),
    );
  }
}
