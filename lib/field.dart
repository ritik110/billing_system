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
      width: width * 0.230,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: width * 0.230,
            child: new TextFormField(
              style: TextStyle(fontSize: 13),
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: new BorderSide(color: Color(0xff009b63))),
                hintText: 'Enter your Email',
                labelText: 'Username',
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            width: width * 0.230,
            child: new TextFormField(
              style: TextStyle(fontSize: 13),
              obscureText: isHiddenPassword,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: new BorderSide(color: Color(0xff009b63))),
                hintText: 'Enter your Password',
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    isHiddenPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                labelText: 'Password',
                prefixIcon: const Icon(
                  Icons.security,
                  color: Colors.teal,
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
