import 'package:flutter/material.dart';

class Resuable_card extends StatelessWidget {
  Resuable_card({required this.colour,this.cardchild});
  Color colour;
  Widget? cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
    );
  }
}