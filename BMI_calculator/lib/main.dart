import 'package:flutter/material.dart';
import 'calc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0D101F),
        scaffoldBackgroundColor: Color(0xFF0D101F),
      ),
      home: Calc(),
    );
  }
}



