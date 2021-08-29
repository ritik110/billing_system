import 'package:billing_system/components/tableheading.dart';
import 'package:billing_system/components/tablerow.dart';
import 'package:billing_system/customers/buttons.dart';
import 'package:flutter/material.dart';

class Staffs extends StatefulWidget {
  const Staffs({Key? key}) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Staffs> {
  bool pressed = false;
  List staffs = [
    for (int i = 0; i < 32; i++) [for (int j = 0; j < 8; j++) (i * j) + 1]
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: ClipRRect(
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
                          "Staff",
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
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
                                          borderRadius:
                                              BorderRadius.circular(4)),
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
                          style:
                              TextStyle(color: Color(0xff2e2e2e), fontSize: 20))
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: Column(children: [
                      Heading(heading: [
                        "SN",
                        "NAME",
                        "ADDRESS",
                        "CONTACT",
                        "ROLE",
                        "SALARY",
                        "EVALUATION",
                        "WORK DETAILS"
                      ]),
                      Container(
                        height: 500,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int i = 0; i < staffs.length; i++)
                                Tablerow(customer: staffs[i]),
                              Tablerow(
                                  customer: ["", "", "", "", "", "", "", ""])
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Buttons(text: "Add Staff"),
                    Buttons(text: "Edit Staff"),
                    Buttons(text: "Delete"),
                    Buttons(text: "Cancel")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
