import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String text;
  final Color color;
  Buttons({required this.text, required this.color});

  @override
  _ButtonsState createState() => _ButtonsState(text: text, color: color);
}

class _ButtonsState extends State<Buttons> {
  final String text;
  final Color color;
  _ButtonsState({required this.text, required this.color});
  Color colorr = Colors.white;
  Color colorrs = Colors.black;
  Color colorsss = Color(0xff009b63);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: colorsss, width: 2),
            borderRadius: BorderRadius.circular(5),
            color: color),
        height: 40,
        width: 150,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: colorrs),
          ),
        ),
      ),
    );
  }
}
