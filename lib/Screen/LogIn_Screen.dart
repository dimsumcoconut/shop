import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text("Welcome",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w100,
          ),),
          ),
      ),
    );
  }
}