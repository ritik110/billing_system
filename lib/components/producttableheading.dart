import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final List headings;
  Headings({required this.headings});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.92,
        decoration: BoxDecoration(
            color: Color(0xff009b63),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Row(
          children: [
            for (int i = 0; i < headings.length; i++)
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                height: 60,
                width: i == 0
                    ? 40
                    : ((MediaQuery.of(context).size.width * 0.92 - 40) /
                        (headings.length - 1)),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: i == headings.length - 1
                                ? Colors.transparent
                                : Colors.black))),
                child: Center(
                    child: Text(
                  headings[i],
                  style: TextStyle(color: Colors.white, fontFamily: 'GeoramaRegular'),
                )),
              )
          ],
        ));
  }
}
