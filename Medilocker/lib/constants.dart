import 'package:flutter/material.dart';



const kinputdecor = InputDecoration(
  prefixIcon: Icon(Icons.email,size: 26,),
hintText: 'Enter your email',
contentPadding:
EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(32.0)),
),
enabledBorder: OutlineInputBorder(
borderSide:
BorderSide(color: Color(0xFF01B574), width: 1.0),
borderRadius: BorderRadius.all(Radius.circular(32.0)),
),
focusedBorder: OutlineInputBorder(
borderSide:
BorderSide(color: Color(0xFF01B574), width: 3.0),
borderRadius: BorderRadius.all(Radius.circular(32.0)),
),
);