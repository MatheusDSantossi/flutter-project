import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/firebase_options.dart';
import 'package:flutter_project_mobile/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_project_mobile/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

// void main() => runApp(const App());

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


  /** I STOPPED AT FLUTTER OTP SCREEN VIDEO */

  /**
   * For flutter version I got this:

  Flutter 3.13.5 • channel stable • https://github.com/flutter/flutter.git
  Framework • revision 12fccda598 (3 weeks ago) • 2023-09-19 13:56:11 -0700
  Engine • revision bd986c5ed2
  Tools • Dart 3.1.2 • DevTools 2.25.0

  Dart version:

  Dart SDK version: 3.1.2 (stable) (Tue Sep 12 16:26:23 2023 +0000) on "windows_x64"

  ERROR
  */

  // class HomePage extends StatefulWidget {
  //   const HomePage({super.key, required this.title});

  //   final String title;

  //   @override
  //   State<HomePage> createState() => _HomePageState();
  // }

  // class _HomePageState extends State<HomePage> {
  //   int _counter = 0;

  //   void _incrementCounter() {
  //     setState(() {
  //       // This call to setState tells the Flutter framework that something has
  //       // changed in this State, which causes it to rerun the build method below
  //       // so that the display can reflect the updated values. If we changed
  //       // _counter without calling setState(), then the build method would not be
  //       // called again, and so nothing would appear to happen.
  //       _counter++;
  //     });
  //   }

  //   @override
  //   Widget build(BuildContext context) {
  //     // This method is rerun every time setState is called, for instance as done
  //     // by the _incrementCounter method above.
  //     //
  //     // The Flutter framework has been optimized to make rerunning build methods
  //     // fast, so that you can just rebuild anything that needs updating rather
  //     // than having to individually change instances of widgets.
  //     return Scaffold(
  //       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //       appBar: AppBar(
  //         // TRY THIS: Try changing the color here to a specific color (to
  //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
  //         // change color while the other colors stay the same.
  //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //         // Here we take the value from the MyHomePage object that was created by
  //         // the App.build method, and use it to set our appbar title.
  //         title: Text(widget.title),
  //         leading: const Icon(Icons.ondemand_video_rounded),
  //       ),
  //       body: Center(
  //         // Center is a layout widget. It takes a single child and positions it
  //         // in the middle of the parent.
  //         child: Column(
  //           // Column is also a layout widget. It takes a list of children and
  //           // arranges them vertically. By default, it sizes itself to fit its
  //           // children horizontally, and tries to be as tall as its parent.
  //           //
  //           // Column has various properties to control how it sizes itself and
  //           // how it positions its children. Here we use mainAxisAlignment to
  //           // center the children vertically; the main axis here is the vertical
  //           // axis because Columns are vertical (the cross axis would be
  //           // horizontal).
  //           //
  //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
  //           // action in the IDE, or press "p" in the console), to see the
  //           // wireframe for each widget.
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               'You have pushed the button this many times:',
  //               style: Theme.of(context).textTheme.bodyMedium,
  //             ),
  //             Text(
  //               '$_counter',
  //               style: Theme.of(context).textTheme.headlineMedium,
  //             ),
  //           ],
  //         ),
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: _incrementCounter,
  //         tooltip: 'Increment',
  //         child: const Icon(Icons.add),
  //       ), // This trailing comma makes auto-formatting nicer for build methods.
  //     );
  //   }
  // }
