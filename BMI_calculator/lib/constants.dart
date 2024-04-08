import 'package:flutter/material.dart';


const kboxbackcolour = Color(0xFF1D1E33);
const kinactivecardcolour= Color(0xFF111328);
const kactivecardcolour= Color(0xFF1D1E33);
enum Gender{
  male,
  female
}

Text ktxt(String data){
  return Text(
    data,
    style: TextStyle(color: Color(0xFF535462), fontSize: 20),
  );
}

const ktextstyle =TextStyle(
fontSize: 50,
fontWeight: FontWeight.w900,
);

const kresultpagestyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
);