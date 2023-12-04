import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login20 extends StatefulWidget {
  const Login20({super.key, required this.title});

  final String title;

  @override
  State<Login20> createState() => _Login20State();
}

class _Login20State extends State<Login20> {
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
