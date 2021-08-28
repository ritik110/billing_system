import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  final String text;
  Option({required this.text});

  @override
  _OptionState createState() => _OptionState(text: text);
}

class _OptionState extends State<Option> {
  final String text;
  bool press = false;
  _OptionState({required this.text});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff5b5b5b), borderRadius: BorderRadius.circular(10)),
      height: !press ? 60 : 300,
      width: width * 0.95,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          trailing: GestureDetector(
            onTap: () {
              setState(() {
                press = !press;
              });
            },
            child: Icon(
              press ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
