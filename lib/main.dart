import 'package:billing_system/homescreen/homescreen.dart';

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
        primaryIconTheme: IconThemeData(color: Color(0xff009b63), size: 24),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homescreen(),
    );
  }
}
