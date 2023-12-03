import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login09 extends StatefulWidget {
  const Login09({super.key, required this.title});

  final String title;

  @override
  State<Login09> createState() => _Login09State();
}

class _Login09State extends State<Login09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
        ),
      ),
    );
  }
}
