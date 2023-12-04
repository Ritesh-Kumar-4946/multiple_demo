import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login14 extends StatefulWidget {
  const Login14({super.key, required this.title});

  final String title;

  @override
  State<Login14> createState() => _Login14State();
}

class _Login14State extends State<Login14> {
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
