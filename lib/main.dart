import 'package:billing_system/field.dart';
import 'package:billing_system/homescreen/homescreen.dart';
import 'package:billing_system/loginpage.dart';
import 'package:billing_system/submit.dart';
import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNS IMS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Konnect',
          primaryIconTheme: IconThemeData(color: Color(0xff009b63), size: 900)),
      home: Homescreen(),
    );
  }
}
