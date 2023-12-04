import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/constants/app_functions.dart';

// https://flutterawesome.com/sign-in-and-sign-up-ui-for-flutter/
class Login09HomePage extends StatefulWidget {
  const Login09HomePage({super.key, required this.title});

  final String title;

  @override
  State<Login09HomePage> createState() => _Login09HomePageState();
}

class _Login09HomePageState extends State<Login09HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppFunctions().CustomText(
                txt: "Welcome",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 8),
              AppFunctions().CustomText(
                txt: "Please login or sign up to continue using our app.",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 14),
              ),
              SizedBox(height: 30),
              Image.asset("assets/login_signup_09/img1.png"),
              SizedBox(height: 50),
              AppFunctions().CustomText(
                txt: "Enter via social networks",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: AppFunctions().InkwellButtons(
                      image: Image.asset("assets/login_signup_09/img3.png"),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(width: 37),
                  InkWell(
                    child: AppFunctions().InkwellButtons(
                      image: Image.asset("assets/login_signup_09/img4.png"),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 50),
              AppFunctions().CustomText(
                  txt: "or login with email",
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  )),
              SizedBox(height: 50),
              InkWell(
                child: AppFunctions().SignUpContainer(st: "Sign Up"),
                onTap: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupScreen()));*/
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: RichText(
                  text: AppFunctions().RichTextSpan(
                      one: "Don’t have an account ? ", two: "LogIn"),
                ),
                onTap: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));*/
                },
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 30, left: 30, bottom: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By logging in you are agree with our',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Terms & Conditions ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.cyan),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Hash tag #tag');
                            // fireToast2("Terms & Conditions Hash Tag");
                          },
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.cyan),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Hash tag #tag');
                            // fireToast2("Privacy Policy Hash Tag");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
