import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String text;
  Buttons({required this.text});

  @override
  _ButtonsState createState() => _ButtonsState(text: text);
}

class _ButtonsState extends State<Buttons> {
  final String text;
  _ButtonsState({required this.text});
  Color colorr = Colors.white;
  Color colorrs = Colors.black;
  Color colorsss = Color(0xff009b63);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          colorr = colorr == Colors.white ? Color(0xff009b63) : Colors.white;
          colorrs = colorrs == Colors.black ? Colors.white : Colors.black;
          colorsss =
              colorsss == Color(0xff009b63) ? Colors.white : Color(0xff009b63);
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: colorsss, width: 2),
              borderRadius: BorderRadius.circular(5),
              color: colorr),
          height: 40,
          width: 150,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: colorrs),
            ),
          ),
        ),
      ),
    );
  }
}
