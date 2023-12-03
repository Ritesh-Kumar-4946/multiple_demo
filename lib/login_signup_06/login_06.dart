import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/login_signup_06/widget_metobody.dart';

// https://flutterawesome.com/simple-login-form-implementation-with-dark-mode-in-flutter/
// https://flutterawesome.com/a-replacement-for-flutters-default-safearea-widget/
class Login06 extends StatefulWidget {
  const Login06({super.key, required this.title});

  final String title;

  @override
  State<Login06> createState() => _Login06State();
}

class _Login06State extends State<Login06> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: ColorfulSafeArea(
        color: Colors.red.withOpacity(0.7),
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                AppAssets.ls06_loginBG,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1),
            ),
            MeToDoBody(email: "ruben", password: "1")
          ],
        ),
      ),
    );
  }
}
