import 'package:flutter/material.dart';
import'dart:math';
void main() {
  runApp(
    Myapp()
  );
}


class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int leftdicenumber=2;
  int rightdicenumber=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red.shade900,
            title: Center(
              child: Text(
                'DICEEEEE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Center(
            child: Row(
              children: [
                Expanded(
                    child:TextButton(
                      onPressed: (){
                        setState(() {
                          leftdicenumber=Random().nextInt(6)+1;
                          rightdicenumber=Random().nextInt(6)+1;
                        });
                      }
                      ,
                        child: Image.asset('images/dice$leftdicenumber.png')
                    )
                ),
                Expanded(
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          rightdicenumber=Random().nextInt(6)+1;
                          leftdicenumber=Random().nextInt(6)+1;
                        });
                      },
                        child: Image.asset('images/dice$rightdicenumber.png'))
                ),
              ],
            ),
          )
      ),
    );
  }
}

