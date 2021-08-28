import 'package:billing_system/customers/buttons.dart';
import 'package:billing_system/products/options.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      color: Color(0xffdfe9f1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Text(
                      "Products",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff2e2e2e),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff2e2e2e),
                    size: 35,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "OverView",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff2e2e2e),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff2e2e2e),
                    size: 35,
                  ),
                )
              ],
            ),
            Divider(
              thickness: 2,
              height: 10,
              color: Color(0xff2e2e2e),
            ),
            SizedBox(
              height: 20,
            ),
            Option(text: "CEMENT"),
          ])),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerRight,
              child: Buttons(text: "Add Product"))
        ],
      ),
    );
  }
}
