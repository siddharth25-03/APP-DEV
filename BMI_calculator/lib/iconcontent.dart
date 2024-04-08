import 'package:flutter/material.dart';
import 'constants.dart';

class Iconcontent extends StatelessWidget {

  Iconcontent(this.ico,this.data);
  IconData? ico;
  String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 50,
        ),
        SizedBox(
          height: 20,
        ),
        ktxt(data),
      ],
    );
  }
}