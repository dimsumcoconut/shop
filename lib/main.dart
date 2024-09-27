import 'package:flutter/material.dart';
import 'package:shop/Screen/LogIn_Screen.dart';
import 'package:shop/Screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vivi Shop',
        theme: ThemeData(),
        home: const Splashscreen());
  }
}