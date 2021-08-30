import 'package:flutter/material.dart';

class Tablerows extends StatelessWidget {
  final List product;
  Tablerows({required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      height: 30,
      width: MediaQuery.of(context).size.width * 0.92,
      child: Row(
        children: [
          for (int i = 0; i < product.length; i++)
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              height: 50,
              width: i == 0
                  ? 40
                  : ((MediaQuery.of(context).size.width * 0.92 - 40) /
                      (product.length - 1)),
              child: TextField(
                cursorColor: Colors.black,
                style:TextStyle(fontFamily: 'GeoramaRegular'),
                cursorHeight: 20,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: product[i].toString()),
              ),
            )
        ],
      ),
    );
  }
}
