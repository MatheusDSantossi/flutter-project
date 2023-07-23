import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_project_mobile/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // brightness: Brightness.light, primarySwatch: Colors.deepPurple
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   // useMaterial3: true,
      // ),
      theme: MobileProjectAppTheme.lightTheme,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      darkTheme: MobileProjectAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   // final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
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
//     return Scaffold(
//       // backgroundColor: Theme.of(context).focusColor,
//       appBar: AppBar(title: const Text(".appable/")),
//       body: const Center(child: Text("Home Page")),

//       // appBar: AppBar(
//       //   title: const Text('.appable/'),
//       //   leading: const Icon(Icons.ondemand_video),
//       // ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {},
//       //   child: const Icon(Icons.add_shopping_cart_outlined),
//       // ),

//       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//       // // Here we take the value from the MyHomePage object that was created by
//       // // the App.build method, and use it to set our appbar title.

//       // title: Text(widget.title),

//       // body: Padding(
//       //   // Center is a layout widget. It takes a single child and positions it
//       //   // in the middle of the parent.
//       //   padding: const EdgeInsets.all(20.0),
//       //   child: ListView(
//       //     children: [
//       //       Text(
//       //         "Heading",
//       //         style: Theme.of(context).textTheme.displayMedium,
//       //       ),
//       //       Text(
//       //         "Sub-heading",
//       //         style: Theme.of(context).textTheme.headlineMedium,
//       //       ),
//       //       Text(
//       //         "Paragraph",
//       //         style: Theme.of(context).textTheme.bodyLarge,
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {},
//       //         child: const Text("Elevated Button"),
//       //       ),
//       //       OutlinedButton(
//       //         onPressed: () {},
//       //         child: const Text("Outlined Button"),
//       //       ),
//       //       const Padding(
//       //         padding: EdgeInsets.all(20.0),
//       //         child: Image(image: AssetImage("assets/images/books.png")),
//       //       ),
//       //     ],
//       //     // mainAxisAlignment: MainAxisAlignment.center,
//       //     // children: <Widget>[
//       //     //   const Text(
//       //     //     'You have pushed the button this many times:',
//       //     //   ),
//       //     //   Text(
//       //     //     '$_counter',
//       //     //     style: Theme.of(context).textTheme.headlineMedium,
//       //   ),
//       // ),
//     );
//   }
// }
