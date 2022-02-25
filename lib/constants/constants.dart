import 'package:flutter/material.dart';

Color kTextColor = Colors.black;
Color kTextLightColor = Colors.black54;
const kDefaultPadding = 20.0;


const kTextFieldDecoration = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kTextStylewhite = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400);
const kTextStyleBlack = TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400);