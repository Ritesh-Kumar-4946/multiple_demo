import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class MeToDoBody extends StatelessWidget {
  String? email = 'ruben';
  String? password = '1';

  MeToDoBody({Key? key, this.email, this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 12, left: 12, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 100,
                      child: Image.asset(AppAssets.ls06_loginLOGO),
                    ),
                    Card(
                      color: Colors.white.withOpacity(0.9),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (text) {
                                email = text;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "email",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            Container(
                              height: 20,
                            ),
                            TextField(
                              onChanged: (text) {
                                password = text;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            Container(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                if (email == 'ruben' && password == '1') {
                                  print('login correto');
                                } else {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                }
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "Enter",
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
