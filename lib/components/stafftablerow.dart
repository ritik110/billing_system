import 'package:flutter/material.dart';

class Tablerowss extends StatelessWidget {
  final List staff;
  Tablerowss({required this.staff});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.92,
      child: Row(
        children: [
          for (int i = 0; i < staff.length; i++)
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              height: 50,
              width: i == 0
                  ? 40
                  : ((MediaQuery.of(context).size.width * 0.92 - 40) /
                      (staff.length - 1)),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: staff[i].toString()),
              ),
            )
        ],
      ),
    );
  }
}
