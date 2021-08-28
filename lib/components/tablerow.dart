import 'package:flutter/material.dart';

class Tablerow extends StatelessWidget {
  final List customer;
  Tablerow({required this.customer});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.92,
      child: Row(
        children: [
          for (int i = 0; i < customer.length; i++)
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              height: 50,
              width: i == 0
                  ? 40
                  : ((MediaQuery.of(context).size.width * 0.92 - 40) /
                      (customer.length - 1)),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: customer[i].toString()),
              ),
            )
        ],
      ),
    );
  }
}
