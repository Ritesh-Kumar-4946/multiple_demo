import 'package:flutter/material.dart';
import 'package:punon_demo/login_signup_10/constants/globals.dart' as globals;
import 'package:punon_demo/login_signup_10/components/dialogs/sign_up_success.dart';
import 'package:punon_demo/login_signup_10/screens/main_screen.dart';

class CustomButton extends StatelessWidget {
  final int _iD;
  final String _btnText;

  // final String _inputUsername;
  // final String _inputPassword;
  const CustomButton(this._iD, this._btnText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 5,
          padding: const EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: Text(
          _btnText,
          style: TextStyle(fontSize: 16, color: Colors.blueAccent),
        ),
        onPressed: () {
          if (_iD == 1)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainScreen(globals.inputEmail.toString(), globals.inputPassword.toString());
                },
              ),
            );
          else
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, _, __) => AlertSignIn(
                  'Successful',
                  'Sign Up was successful',
                  'Ok',
                ),
                opaque: false,
              ),
            );
        },
      ),
    );
  }
}
