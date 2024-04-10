import 'package:flutter/material.dart';
import 'constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Text(
              'LOGIN IN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Color(0xFF014037),
              ),
            ),
          ),
          Hero(
            tag: 'logo',
            child: Image(
              height: 150,
              image: AssetImage('images/logo1.jpg'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
              onChanged: (value) {},
              decoration: kinputdecor,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
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
                    Icons.password_sharp,
                    size: 26,
                  )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Container(
              height: 60,
              child: Material(
                elevation: 10.0,
                color: Color(0xFF02B272),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'mainscreen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
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
          ),
        ],
      ),
    );
  }
}
