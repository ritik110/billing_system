import 'package:billing_system/field.dart';
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
      title: 'Billing System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Loginpage(),
    );
  }
}
