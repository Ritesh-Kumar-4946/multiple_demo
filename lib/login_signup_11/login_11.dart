import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/login_signup_11/widgets/back_button.dart';
import 'package:punon_demo/login_signup_11/widgets/background_screen.dart';
import 'package:punon_demo/login_signup_11/widgets/heading_text.dart';

// https://flutterawesome.com/firebase-login-app-with-flutter/
class Login11 extends StatefulWidget {
  const Login11({super.key, required this.title, this.email = ""});

  final String title;
  final String email;

  @override
  State<Login11> createState() => _Login11State();
}

class _Login11State extends State<Login11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      // resizeToAvoidBottomInset: false,  // If it will enable then this will protect the overflow error when keyboard is open & then no need to wrap padding widget in SingleChildScrollView.
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            const BackgroundScreen(),
            const BackButtonWidget(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: MainHeading(
                        title: "Log in",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 16,
                            sigmaY: 16,
                          ),
                          child: Container(
                            width: double.infinity,
                            // height: 300,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 35,
                                        backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1615358630075-ba2bbe783521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Anjoom",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            widget.email,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                        const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 13,
                                        ),
                                        hintText: "password",
                                        border: InputBorder.none,
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  235, 255, 123, 0),
                                              width: 3,
                                            )),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                              true
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: Colors.grey),
                                          onPressed: () {
                                            // ok
                                          },
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      obscuringCharacter: '●',
                                      obscureText: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // logIn(_scaffoldKey.currentContext);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 25,
                                        vertical: 15,
                                      ),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            235, 255, 123, 0),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Center(
                                          child: Text(
                                            "Continue",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    child: const Text(
                                      "Forgot your password?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                          Color.fromARGB(235, 255, 123, 0)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
