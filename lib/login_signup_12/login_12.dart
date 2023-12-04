import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login12 extends StatefulWidget {
  const Login12({super.key, required this.title});

  final String title;

  @override
  State<Login12> createState() => _Login12State();
}

class _Login12State extends State<Login12> {
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
