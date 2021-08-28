import 'package:billing_system/customers/buttons.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final maxlines = 6;

    return Material(
      child: Container(
        color: Color(0xffdfe9f1),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Text(
                      "Customers",
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
                )
              ],
            ),
            Divider(
              thickness: 2,
              height: 10,
              color: Color(0xff2e2e2e),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pressed = !pressed;
                      });
                    },
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff2e2e2e),
                          ),
                          borderRadius: BorderRadius.circular(7.5)),
                      child: pressed
                          ? Center(
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    color: Color(0xff2e2e2e),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            )
                          : Container(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Select All",
                    style: TextStyle(color: Color(0xff2e2e2e), fontSize: 20))
              ],
            ),
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Buttons(text: "Add Customer"),
                Buttons(text: "Edit Customer"),
                Buttons(text: "Delete"),
                Buttons(text: "Cancel")
              ],
            )
          ],
        ),
      ),
    );
  }
}
