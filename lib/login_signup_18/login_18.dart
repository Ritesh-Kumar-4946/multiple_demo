import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login18 extends StatefulWidget {
  const Login18({super.key, required this.title});

  final String title;

  @override
  State<Login18> createState() => _Login18State();
}

class _Login18State extends State<Login18> {
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
