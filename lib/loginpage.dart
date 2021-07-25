import 'package:billing_system/field.dart';
import 'package:billing_system/submit.dart';
import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Color(0xffe2e2e2),
      child: Center(
        child: Container(
            height: height * 0.5,
            width: width * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    bottomLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: Column(
              children: [
                SizedBox(height: 30),
                text(),
                SizedBox(height: 60),
                Field(),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Submit(),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
