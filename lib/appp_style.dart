import 'package:flutter/material.dart';

const Color kPrimarycolor = Color(0xffFDEa39);
const Color kSecondaryColor = Color(0xffFFFFFF);

const kInputDecorationss = InputDecoration(
    hintText: "Email",
    focusColor: kPrimarycolor,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0))));

const kInputDecorationss2 = InputDecoration(
    focusColor: kPrimarycolor,
    fillColor: kPrimarycolor,
    hintText: "password",
    suffixIcon: Icon(Icons.remove_red_eye),
    hoverColor: kPrimarycolor,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0))));

const kCartDividerTExt = TextStyle(
    fontSize: 21.0,
    color: Color.fromARGB(255, 45, 48, 65),
    fontWeight: FontWeight.bold);

const kCartDividerTExt1 = TextStyle(
    fontSize: 25.0,
    color: Color.fromARGB(255, 45, 48, 65),
    fontWeight: FontWeight.bold);
