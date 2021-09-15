import 'package:billing_system/customers/customers.dart';
import 'package:billing_system/homescreen/homescreen.dart';
import 'package:billing_system/loginpage.dart';
import 'package:billing_system/products/addproduct.dart';
import 'package:billing_system/products/product.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:billing_system/staffs/addstaff.dart';
import 'package:billing_system/staffs/staff.dart';
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
        theme: ThemeData(
            fontFamily: 'Konnect',
            primaryIconTheme:
                IconThemeData(color: Color(0xff009b63), size: 900)),
        home: Loginpage(
          master: true,
        ));
  }
}
