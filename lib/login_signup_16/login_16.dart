import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login16 extends StatefulWidget {
  const Login16({super.key, required this.title});

  final String title;

  @override
  State<Login16> createState() => _Login16State();
}

class _Login16State extends State<Login16> {
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
