import 'package:flutter/material.dart';
import 'firstpage.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';
import 'mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'loginscreen': (context) => Loginscreen(),
        'registrationscreen': (context) => Registrationscreen(),
        'mainscreen': (context) => Mainscreen(),
      },
      theme: ThemeData.light(),
        home: Homescreen(),
    );
  }
}
