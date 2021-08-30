import 'package:billing_system/customers/customers.dart';
import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';
import 'package:billing_system/icons.dart';

class Maindrawer extends StatefulWidget {
  const Maindrawer({Key? key}) : super(key: key);

  @override
  _MaindrawerState createState() => _MaindrawerState();
}

class _MaindrawerState extends State<Maindrawer> {
  bool salaryActive = false;
  bool billActive = false;
  bool invoiceActive = false;
  bool statementActive = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
        child: Column(
      children: [
        Container(
          height: height - 40,
          color: Color(0xff009b63),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Column(
                  children: [
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.home,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.customer,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Customers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Customers()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.products,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Products",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.damage,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Damaged Products",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.stock,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Stock Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.staff,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Staff Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      subtitle: salaryActive
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Salary Calculation",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  child: Text("Salary Satement",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Konnect",
                                          fontSize: 14)),
                                )
                              ],
                            )
                          : Container(),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                MyFlutterApp.salary,
                                size: 18,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Text(
                                "Salary",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Konnect",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salaryActive = !salaryActive;
                                billActive
                                    ? billActive = !billActive
                                    : billActive;
                                invoiceActive
                                    ? invoiceActive = !invoiceActive
                                    : invoiceActive;
                                statementActive
                                    ? statementActive = !statementActive
                                    : statementActive;
                              });
                            },
                            child: Icon(
                              salaryActive
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onTap: null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      dense: true,
                      subtitle: billActive
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                  child: Text(
                                    "Cash Bill",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Konnect",
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 45, 0),
                                  child: Text("Payment Bill",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Konnect",
                                          fontSize: 14)),
                                )
                              ],
                            )
                          : Container(),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                MyFlutterApp.bill,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Text(
                                "Bill",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Konnect",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                billActive = !billActive;
                                salaryActive
                                    ? salaryActive = !salaryActive
                                    : salaryActive;
                                invoiceActive
                                    ? invoiceActive = !invoiceActive
                                    : invoiceActive;
                                statementActive
                                    ? statementActive = !statementActive
                                    : statementActive;
                              });
                            },
                            child: Icon(
                              billActive
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      subtitle: invoiceActive
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Text(
                                    "Received Invoices",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Konnect",
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 37, 0),
                                  child: Text("Sent Invoices",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Konnect",
                                          fontSize: 14)),
                                )
                              ],
                            )
                          : Container(),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                MyFlutterApp.invoice,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Text(
                                "Invoices",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Konnect",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                invoiceActive = !invoiceActive;
                                billActive
                                    ? billActive = !billActive
                                    : billActive;
                                salaryActive
                                    ? salaryActive = !salaryActive
                                    : salaryActive;
                                statementActive
                                    ? statementActive = !statementActive
                                    : statementActive;
                              });
                            },
                            child: Icon(
                              invoiceActive
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        MyFlutterApp.ledger,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Ledger",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Konnect",
                          fontSize: 14,
                        ),
                      ),
                      onTap: null,
                    ),
                    ListTile(
                      dense: true,
                      subtitle: statementActive
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Income Statement",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect",
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(39, 0, 0, 0),
                                  child: Text("Balance Sheet Satement",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Konnect",
                                          fontSize: 14)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(18, 0, 0, 0),
                                  child: Text(
                                    "Cash Flow Statement",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Konnect",
                                        fontSize: 14),
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                MyFlutterApp.file,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Text(
                                "Statement",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Konnect",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                statementActive = !statementActive;
                                billActive
                                    ? billActive = !billActive
                                    : billActive;
                                invoiceActive
                                    ? invoiceActive = !invoiceActive
                                    : invoiceActive;
                                salaryActive
                                    ? salaryActive = !salaryActive
                                    : salaryActive;
                              });
                            },
                            child: Icon(
                              statementActive
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onTap: null,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0.4, 1),
          child: Container(
            height: 40,
            width: double.infinity,
            color: Color(0xff383838),
            child: Builder(
              builder: (context) => IconButton(
                icon: new Icon(MyFlutterApp.back),
                iconSize: 20,
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
