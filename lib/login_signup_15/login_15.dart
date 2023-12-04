import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login15 extends StatefulWidget {
  const Login15({super.key, required this.title});

  final String title;

  @override
  State<Login15> createState() => _Login15State();
}

class _Login15State extends State<Login15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(),
    );
  }
}
