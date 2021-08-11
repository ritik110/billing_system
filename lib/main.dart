import 'package:billing_system/loginpage.dart';
import 'package:billing_system/models/user.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSheetsApi.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SNS IMS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Konnect'),
        home: Loginpage());
  }
}
