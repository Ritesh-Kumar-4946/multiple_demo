import 'package:flutter/material.dart';
import 'package:punon_demo/login_signup_06/app_controller.dart';

class WidgetCustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
