import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login17 extends StatefulWidget {
  const Login17({super.key, required this.title});

  final String title;

  @override
  State<Login17> createState() => _Login17State();
}

class _Login17State extends State<Login17> {
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
