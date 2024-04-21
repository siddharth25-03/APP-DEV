import 'package:flutter/material.dart';
import 'package:medilocker/mainscreen.dart';
import 'constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Text(
              'LOGIN IN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFF014037),
              ),
            ),
            SizedBox(height: 20),
            Hero(
              tag: 'logo',
              child: Image(
                height: 150,
                image: AssetImage('images/translogo.png'),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: kinputdecor.copyWith(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(
                    Icons.email,
                    size: 26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
                onChanged: (value) {},
                decoration: kinputdecor.copyWith(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mainscreen(Email: email),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF02B272),
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
