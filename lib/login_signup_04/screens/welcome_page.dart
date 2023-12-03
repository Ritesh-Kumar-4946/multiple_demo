import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_colors.dart';
import 'package:punon_demo/login_signup_04/screens/login_page.dart';
import 'package:punon_demo/login_signup_04/widgets/welcome_widget.dart';

// 欢迎页面
class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBgColor,
      body: Column(
        children: [
          WelcomeHeaderWidget(),
          GradientBtnWidget(
            width: 208,
            child: BtnTextWhiteWidget(
              text: 'Sign up',
            ),
            onTap: () {},
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
          SizedBox(height: 54),
          Row(
            children: [
              Spacer(),
              LineWidget(),
              LoginTypeIconWidget(icon: 'assets/login_signup_04/logo_ins.png'),
              LoginTypeIconWidget(icon: 'assets/login_signup_04/logo_fb.png'),
              LoginTypeIconWidget(icon: 'assets/login_signup_04/logo_twitter.png'),
              LineWidget(),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
