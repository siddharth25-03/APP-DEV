import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  Profilepage({this.email});
  final String? email;

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CircleAvatar(
          maxRadius: 80,
          backgroundColor: Color(0xFF00BE78),
          child: Icon(
            Icons.person,
            size: 80,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          '${widget.email}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 150,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Color(0xFF00BE78),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF00BE78).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Log Out',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
