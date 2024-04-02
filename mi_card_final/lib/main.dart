import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.purple.shade900,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('images/img.png'),
                ),
                Text(
                  'Siddharth Thikekar',
                  style: TextStyle(
                    fontFamily: 'Gorditas',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 8,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.grey,

                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 20,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left:80,top: 20,right: 60),
                  child:ListTile(
                    leading: Icon(
                      Icons.call,
                      size:38,
                      color: Colors.purple.shade900,
                    ),
                    title: Text(
                      '+91 9372075870',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.purple.shade900
                      ),
                    ),
                  ),
                ),

                Card(
                    margin: EdgeInsets.only(left:80,top: 20,right:60),
                  child: ListTile(
                    leading: Icon(Icons.mail,
                      size:38,
                      color: Colors.purple.shade900,
                    ),
                    title: Text(
                      'siddharth@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.purple.shade900
                      ),
                    ),
                  ),
                ),
              ],
            ),
            )
          )
    );
  }
}


