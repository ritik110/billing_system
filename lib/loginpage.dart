import 'package:billing_system/homescreen/homescreen.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:billing_system/submit.dart';
import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String? username;
  String? password;
  bool isHiddenPassword = true;
  //username/password "admin", "productManager", "humanResource"
  //note that username and password are same
  //replace the navigator with home page
  loginUser() async {
    if (username == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Enter a Username'),
        ),
      );
    } else {
      final user = await UserSheetsApi.getByUsername(username ?? "none");
      if (user == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('User does not exist'),
          ),
        );
      } else {
        if (password == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text('Enter a Password'),
            ),
          );
        } else if (user.password == password) {
          //navigate to next page
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Homescreen()));
        } else if (user.password != password) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text('Password does not match'),
            ),
          );
        }
      }
    }
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
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
                Container(
                  width: 350,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 350,
                        child: new TextFormField(
                          onChanged: (val) {
                            setState(() {
                              username = val;
                            });
                          },
                          cursorColor: Color(0xff009b63),
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff009b63),
                          ),
                          decoration: new InputDecoration(
                            enabledBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: new BorderSide(
                                color: Color(0xffe2e2e2),
                              ),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: new BorderSide(
                                color: Color(0xff009b63),
                              ),
                            ),
                            hintText: 'Enter your Username',
                            hintStyle: TextStyle(fontSize: 14),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color(0xff009b63),
                              fontSize: 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Color(0xff009b63),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 45,
                        width: 350,
                        child: new TextFormField(
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          cursorColor: Color(0xff009b63),
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff009b63),
                          ),
                          obscureText: isHiddenPassword,
                          decoration: new InputDecoration(
                            enabledBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: new BorderSide(
                                color: Color(0xffe2e2e2),
                              ),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: new BorderSide(
                                color: Color(0xff009b63),
                              ),
                            ),
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(fontSize: 14),
                            suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                isHiddenPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xff009b63),
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xff009b63),
                              fontSize: 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.security,
                              color: Color(0xff009b63),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        onTap: loginUser,
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
                                fontSize: 12),
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
    ));
  }
}
