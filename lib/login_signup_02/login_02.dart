import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login02 extends StatefulWidget {
  const Login02({super.key, required this.title});

  final String title;

  @override
  State<Login02> createState() => _Login02State();
}

class _Login02State extends State<Login02> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // UI for background
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.ls02_loginBG_1),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width + 20,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.ls02_loginBG_2),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  // Login Text UI
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromRGBO(49, 39, 79, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),

                  // Margin from top
                  SizedBox(
                    height: 30,
                  ),

                  // UI for email & password
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      // border: Border.all(
                      //   color: const Color.fromRGBO(143, 148, 251, 1),
                      // ),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .2),
                          blurRadius: 20.0,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(143, 148, 251, 1),
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Margin from top
                  SizedBox(
                    height: 20,
                  ),

                  // UI text view for forgot password
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),
                      ),
                    ),
                  ),

                  // Margin from top
                  SizedBox(
                    height: 20,
                  ),

                  // UI button for login
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color.fromRGBO(49, 39, 79, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  // Margin from top
                  SizedBox(
                    height: 50,
                  ),

                  // UI text view for forgot password
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style:
                            TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),
                      ),
                    ),
                  ),

                  // Margin from top
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
