import 'package:fashion_new/loginscreen.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Loginscreen(),
    );
  }
}
