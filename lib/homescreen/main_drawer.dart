import 'package:billing_system/text.dart';
import 'package:flutter/material.dart';

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
        child: Container(
      color: Color(0xff009b63),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Customers",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.production_quantity_limits,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Products",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Damaged Products",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Staff Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  subtitle: salaryActive
                      ? Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Salary Calculation",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Konnect"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Text("Salary Satement",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect")),
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
                            Icons.money,
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            salaryActive = !salaryActive;
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
                ListTile(
                  subtitle: billActive
                      ? Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                              child: Text(
                                "Cash Bill",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "Konnect"),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                              child: Text("Payment Bill",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect")),
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
                            Icons.money,
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            billActive = !billActive;
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
                  subtitle: invoiceActive
                      ? Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text(
                                "Received Invoices",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "Konnect"),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
                              child: Text("Sent Invoices",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect")),
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
                            Icons.money,
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            invoiceActive = !invoiceActive;
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
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Ledger",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Konnect",
                      fontSize: 16,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  subtitle: statementActive
                      ? Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Income Statement",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Konnect"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(39, 0, 0, 0),
                              child: Text("Balance Sheet Satement",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Konnect")),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                              child: Text(
                                "Cash Flow Statement",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "Konnect"),
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
                            Icons.money,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Text(
                            "Statment",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Konnect",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            statementActive = !statementActive;
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
                SizedBox(height: 80),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      width: 130,
                      height: 40,
                      child: Text("LOG IN",
                          style: TextStyle(
                            fontFamily: "Konnect",
                            fontWeight: FontWeight.w900,
                            color: Color(0xff009b63),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      width: 130,
                      height: 40,
                      child: Text("LOG OUT",
                          style: TextStyle(
                            fontFamily: "Konnect",
                            fontWeight: FontWeight.w900,
                            color: Color(0xff009b63),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
