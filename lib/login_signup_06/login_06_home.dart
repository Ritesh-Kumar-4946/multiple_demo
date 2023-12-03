import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/login_signup_05/login_05.dart';
import 'package:punon_demo/login_signup_06/widget_custom_switch.dart';

// https://flutterawesome.com/simple-login-form-implementation-with-dark-mode-in-flutter/
// https://flutterawesome.com/a-replacement-for-flutters-default-safearea-widget/
class Login06Home extends StatefulWidget {
  const Login06Home({super.key, required this.title});

  final String title;

  @override
  State<Login06Home> createState() => _Login06HomeState();
}

class _Login06HomeState extends State<Login06Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: SafeArea(
        child: Drawer(
          surfaceTintColor: Colors.amber,
          child: Column(
            children: <Widget>[
              /*UserAccountsDrawerHeader(
                accountEmail: Text('rubencfontes17@gmail.com'),
                accountName: Text('Ruben'),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/login_signup_06/user.png'),
                ),
                onDetailsPressed: () {
                  print('Drawer Detail Clicked');
                },
              ),*/
              Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Image.asset('assets/login_signup_06/user.png'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Text('user'),
                        onTap: () {
                          print('user Clicked');
                        },
                      ),
                      InkWell(
                        child: Text('@User'),
                        onTap: () {
                          print('@user Clicked');
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Text Clicked');
                        },
                        child: Text('Clickable Text'),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Início'),
                subtitle: Text('Tela de início'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Logout'),
                subtitle: Text('Finalizar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Divider(),
              ListTile(
                title: new Text("Home"),
                trailing: new Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Login05(title: 'Login05')));
                },
              ),
              ListTile(
                title: new Text("About"),
                trailing: new Icon(Icons.arrow_drop_down_circle),
                onTap: () {
                  Navigator.of(context).pop();
                  /*Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new NewPage("About Page")));*/
                },
              ),
              Divider(),
              ListTile(
                title: new Text("Search"),
                trailing: new Icon(Icons.search),
              ),
              ListTile(
                title: new Text("Close"),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter $counter'),
            // WidgetCustomSwitch(),   // enable mains.dart file code to see the light & dart theme change
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
