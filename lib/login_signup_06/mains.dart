// import 'package:flutter/material.dart';
// import 'package:punon_demo/login_signup_01/login_01.dart';
// import 'package:punon_demo/login_signup_02/login_02.dart';
// import 'package:punon_demo/login_signup_03/login_03.dart';
// import 'package:punon_demo/login_signup_04/login_04_welcomepage.dart';
// import 'package:punon_demo/login_signup_05/login_05.dart';
// import 'package:punon_demo/login_signup_06/app_controller.dart';
// import 'package:punon_demo/login_signup_06/login_06.dart';
// import 'package:punon_demo/login_signup_06/login_06_home.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Future.delayed(const Duration(seconds: 3));  // this will add extra delay in splash screen
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: AppController.instance,
//         builder: (context, child) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // disable due to theme change implementation from "WidgetCustomSwitch"
//                 useMaterial3: true,
//                 brightness: AppController.instance.isDarkTheme
//                     ? Brightness.dark
//                     : Brightness.light
//             ),
//             // home: const Login01(title: 'Login01'),
//             // home: const Login02(title: 'Login02'),
//             // home: const Login03(title: 'Login03'),
//             // home: const Login04WelcomePage(title: 'Login04'),
//             // home: const Login05(title: 'Login05'),
//             // home: const Login06(title: 'Login06'),
//             home: const Login06Home(title: 'Login06Home'),
//             // routes: {
//             //   '/': (context) => const Login06(title: 'Login06'),
//             //   '/home': (context) => HomePage(),
//             // },
//           );
//         }
//     );
//   }
// }
