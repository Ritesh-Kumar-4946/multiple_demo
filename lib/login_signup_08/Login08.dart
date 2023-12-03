import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/constants/app_log.dart';

class Login08 extends StatefulWidget {
  const Login08({super.key, required this.title});

  final String title;

  @override
  State<Login08> createState() => _Login08State();
}

class _Login08State extends State<Login08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purpleAccent,
                  Colors.amber,
                  Colors.blue,
                ],
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                SizedBox(
                  height: 200,
                  width: 300,
                  child:
                      LottieBuilder.asset("assets/login_signup_08/login2.json"),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 100.0),
                  // margin: EdgeInsets.symmetric(horizontal: 20.0),
                  // width: 350,
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Please Login to Your Account",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        // width: 260,
                        // height: 60,
                        child: const TextField(
                          decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.red,
                            ),
                            labelText: "Email Address",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        // width: 260,
                        // height: 60,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.eyeSlash,
                              color: Colors.red,
                            ),
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                click("Forget_Password");
                              },
                              child: const Text(
                                "Forget Password",
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          click("Login_Button");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          // width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF8A2387),
                                Color(0xFFE94057),
                                Color(0xFFF27121),
                              ],
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Or Login using Social Media Account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      IntrinsicHeight(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                click("Facebook_Button");
                              },
                              icon: const Icon(FontAwesomeIcons.facebook,
                                  size: 35, color: Colors.blue),
                            ),
                            Container(
                                height: 30,
                                child: VerticalDivider(color: Colors.grey)),
                            IconButton(
                              onPressed: () {
                                click("Google_Button");
                              },
                              icon: const Icon(FontAwesomeIcons.google,
                                  size: 35, color: Colors.redAccent),
                            ),
                            Container(
                                height: 30,
                                child: VerticalDivider(color: Colors.black)),
                            IconButton(
                              onPressed: () {
                                click("Twitter_Button");
                              },
                              icon: const Icon(FontAwesomeIcons.twitter,
                                  size: 35, color: Colors.orangeAccent),
                            ),
                            Container(
                                height: 30,
                                child: VerticalDivider(color: Colors.red)),
                            // VerticalDivider(color: Colors.black, thickness: 2),
                            IconButton(
                              onPressed: () {
                                click("LinkedIn_Button");
                              },
                              icon: const Icon(FontAwesomeIcons.linkedinIn,
                                  size: 35, color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void click(String? strClickEvent) {
    // print("Function_click");
    String TAG = "Click";
    // AppLog.e(tag: TAG, "Function_click");
    switch (strClickEvent) {
      case "Forget_Password":
        AppLog.e(tag: TAG, "Forget_Password");
        break;
      case "Login_Button":
        AppLog.e(tag: TAG, "Login_Button");
        break;
      case "Facebook_Button":
        AppLog.e(tag: TAG, "Facebook_Button");
        break;
      case "Google_Button":
        AppLog.e(tag: TAG, "Google_Button");
        break;
      case "Twitter_Button":
        AppLog.e(tag: TAG, "Twitter_Button");
        break;
      case "LinkedIn_Button":
        AppLog.e(tag: TAG, "LinkedIn_Button");
        break;
      default:
        AppLog.e(tag: TAG, "Invalid_Entry");
    }
  }
}
