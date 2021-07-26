import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
        child: Container(
      width: 350,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: width * 0.230,
            child: new TextFormField(

              cursorColor: Color(0xff009b63),
              style: TextStyle(
                fontSize: 16,color: Color(0xff009b63),
              ),
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: new BorderSide(color: Color(0xffe2e2e2),
                    ),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: new BorderSide(color: Color(0xff009b63),
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
              cursorColor: Color(0xff009b63),
              style: TextStyle(
                fontSize: 16,color: Color(0xff009b63),
              ),
              obscureText: isHiddenPassword,
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: new BorderSide(color: Color(0xffe2e2e2),
                  ),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: new BorderSide(color: Color(0xff009b63),
                  ),
                ),
                hintText: 'Enter your Password',
                hintStyle: TextStyle(fontSize: 14),
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    isHiddenPassword ? Icons.visibility : Icons.visibility_off,
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
    ));
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
