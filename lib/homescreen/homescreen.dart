import 'package:billing_system/customers/customers.dart';
import 'package:billing_system/products/product.dart';
import 'package:billing_system/staffs/staff.dart';
import 'package:flutter/material.dart';
import 'package:billing_system/icons.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int active = 3;
  List pages = [first_page(), Customers(), Staffs(), Product()];
  Color color = Colors.white;
  Color colors = Color(0xff009b63);
  Color colorss = Color(0xff5b5b5b);
  FocusNode _searchFocus = FocusNode();
  bool salaryActive = false;
  bool billActive = false;
  bool invoiceActive = false;
  bool statementActive = false;

  @override
  void initState() {
    _searchFocus.addListener(() {
      if (_searchFocus.hasFocus) {
        setState(() {
          color = color == Color(0xff009b63) ? Colors.white : Color(0xff009b63);
          colors = colors == Colors.white ? Color(0xff009b63) : Colors.white;
          colorss = Colors.white;
        });
      } else {
        setState(() {
          color = Colors.white;
          colors = Color(0xff009b63);
          colorss = Color(0xff5b5b5b);
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return new Scaffold(
        key: _scaffoldKey,
        drawer: new Drawer(
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
                    padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
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
                            setState(() {
                              active = 1;
                            });
                            Navigator.pop(context);
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
                          onTap: () {
                            setState(() {
                              active = 3;
                            });
                            Navigator.pop(context);
                          },
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
                            onTap: () {
                              setState(() {
                                active = 2;
                              });
                              Navigator.pop(context);
                            }),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 12, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 70, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 45, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 37, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          39, 0, 0, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          18, 0, 0, 0),
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
                                    billActive = !billActive;
                                    invoiceActive = !invoiceActive;
                                    salaryActive = !salaryActive;
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
                color: Color(0xff6b6b6b),
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
        )),
        appBar: new AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(MyFlutterApp.menu),
              iconSize: 10,
              color: Color(0xff009b63),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          bottom: PreferredSize(
              child: Container(
                color: Color(0xff009b63),
                height: 2.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Center(
                  child: Container(
                    height: 45,
                    width: width * 0.3356,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: color),
                    child: new TextFormField(
                      autofocus: false,
                      cursorColor: colorss,
                      style: TextStyle(
                        fontFamily: 'Konnect',
                        fontSize: 16,
                        color: colorss,
                      ),
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        fillColor: color,
                        filled: true,
                        prefixIcon: new Icon(
                          MyFlutterApp.search_green,
                          color: colors,
                          size: 18,
                        ),
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: new BorderSide(
                            color: Color(0xff009b63),
                          ),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: new BorderSide(
                            color: Color(0xff009b63),
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Konnect',
                            color: colorss),
                      ),
                      focusNode: _searchFocus,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.2829,
                ),
                Builder(
                    builder: (context) => IconButton(
                          icon: new Icon(MyFlutterApp.exit),
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Color(0xff383838),
                          onPressed: () {},
                        )),
                Builder(
                  builder: (context) => IconButton(
                    icon: new Icon(MyFlutterApp.exit),
                    alignment: Alignment.centerRight,
                    iconSize: 20,
                    color: Color(0xff2e2e2e),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: pages[active]);
  }
}

class first_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: height,
        width: width,
        color: Colors.white,
      ),
    );
  }
}
