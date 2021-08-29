import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final List heading;
  Heading({required this.heading});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.92,
        decoration: BoxDecoration(
            color: Color(0xff009b63),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Row(
          children: [
            for (int i = 0; i < heading.length; i++)
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                height: 60,
                width: i == 0
                    ? 40
                    : ((MediaQuery.of(context).size.width * 0.92 - 40) /
                        (heading.length - 1)),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: i == heading.length - 1
                                ? Colors.transparent
                                : Colors.black))),
                child: Center(
                    child: Text(
                  heading[i],
                  style: TextStyle(color: Colors.white),
                )),
              )
          ],
        ));
  }
}
