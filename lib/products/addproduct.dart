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
  InputDecoration fieldss = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: Color(0xff009b63),
      ),
    ),
  );
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
              // height: height * 0.75,
              width: width * 0.95,
              decoration: circle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                        child: Text(
                          "Product Name :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              decoration: fieldss)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                        child: Container(
                          height: 35,
                          width: 160,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Category",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                        child: Text(
                          "Size :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                          height: 40,
                          width: 100,
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              decoration: fieldss)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                        child: Text(
                          "Color :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                          height: 40,
                          width: 100,
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              decoration: fieldss)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(180, 30, 0, 0),
                        child: Text(
                          "Location :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                          height: 40,
                          width: 100,
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              decoration: fieldss)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                        child: Text(
                          "Company Name :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                            height: 40,
                            width: 400,
                            child: TextField(
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                decoration: fieldss)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70, 60, 0, 0),
                        child: Text(
                          "Units :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                            height: 40,
                            width: 100,
                            child: TextField(
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                decoration: fieldss)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                        child: Text(
                          "Cost Price(Per Unit) :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                            height: 40,
                            width: 250,
                            child: TextField(
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                decoration: fieldss)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 60, 0, 0),
                        child: Text(
                          "Selling Price(Per Unit) :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Container(
                            height: 40,
                            width: 250,
                            child: TextField(
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                decoration: fieldss)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
                        child: Text(
                          "Profit% :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                        child: Text(
                          "Added Date :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
                        child: Text(
                          "Expiry Date :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                    child: Text(
                      "Remarks  ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Container(
                        height: 100,
                        width: width * 0.85,
                        child: TextField(
                            cursorColor: Colors.black,
                            cursorHeight: 20,
                            maxLines: 6,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.black,
                                ),
                              ),
                            ))),
                  ),
                ],
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
