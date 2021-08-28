import 'package:billing_system/customers/buttons.dart';
import 'package:flutter/material.dart';

class Addproduct extends StatefulWidget {
  const Addproduct({Key? key}) : super(key: key);

  @override
  _AddproductState createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  BoxDecoration circle = BoxDecoration(
      border: Border.all(width: 6, color: Color(0xff009b63)),
      color: Colors.white,
      borderRadius: BorderRadius.circular(15));
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
                      "Add Product",
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
            Container(
              height: height * 0.75,
              width: width * 0.95,
              decoration: circle,
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Text(
                              "Product Name :",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            child: TextField(),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
