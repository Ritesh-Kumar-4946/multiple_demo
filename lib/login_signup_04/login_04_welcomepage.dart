import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_colors.dart';
import 'package:punon_demo/login_signup_04/screens/login_page.dart';
import 'package:punon_demo/login_signup_04/widgets/welcome_widget.dart';

// https://github.com/BytesZero/flutter_drink_login_app
class Login04WelcomePage extends StatefulWidget {
  const Login04WelcomePage({super.key, required this.title});

  final String title;

  @override
  State<Login04WelcomePage> createState() => _Login04WelcomePageState();
}

class _Login04WelcomePageState extends State<Login04WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColor.kBgColor,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            WelcomeHeaderWidget(),
            GradientBtnWidget(
              width: 208,
              onTap: () {},
              child: BtnTextWhiteWidget(
                text: 'Sign up',
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              child: LoginBtnWidget(),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
            ),
            SizedBox(height: 16),
            Text(
              'Forgot password?',
              style: TextStyle(
                fontSize: 18,
                color: AppColor.kTextColor,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Spacer(),
                // Expanded(child: SizedBox.shrink()),
                LineWidget(),
                LoginTypeIconWidget(
                    icon: 'assets/login_signup_04/logo_ins.png'),
                LoginTypeIconWidget(icon: 'assets/login_signup_04/logo_fb.png'),
                LoginTypeIconWidget(
                    icon: 'assets/login_signup_04/logo_twitter.png'),
                LineWidget(),
                Spacer(),
                // Expanded(child: SizedBox.shrink()),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
