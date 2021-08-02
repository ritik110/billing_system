import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Text(
          "LOGIN",
          style: TextStyle(
              color: Color(0xff009b63),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
