import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login19 extends StatefulWidget {
  const Login19({super.key, required this.title});

  final String title;

  @override
  State<Login19> createState() => _Login19State();
}

class _Login19State extends State<Login19> {
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
