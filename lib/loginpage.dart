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
    return Material(
      child: Container(
        height: height,
        width: width,
        color: Color(0xffe2e2e2),
        child: Center(
          child: Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  text(),
                  SizedBox(height: 60),
                  Field(),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(240, 0, 10, 0),
                            child: Submit(),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(140, 0, 10, 0),
                        child: Row(
                          children: [
                            Text(
                              "Did you forget\nyour Password?",
                              style: TextStyle(
                                  fontFamily: 'KonnectI',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff009b63),
                                  fontSize: 12
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                child: Container(
                                  child: Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                        color: Color(0xff009b63),
                                        width: 1,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white),
                                        width: width * 0.08,
                                        height: height * 0.05,
                                        child: Text("Reset\nPassword",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff009b63),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
