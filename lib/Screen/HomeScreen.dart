import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Welcome",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: false,
      ),
    );
  }
}
