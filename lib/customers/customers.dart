import 'package:billing_system/components/tableheading.dart';
import 'package:billing_system/customers/buttons.dart';
import 'package:billing_system/models/customer.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  bool pressed = false;
  int active = -1;
  List customers = [];

  List customer = ["", "", "", "", "", "", "", ""];
  List heading = [
    "Sn",
    "CUSTOMER",
    "ADDRESS",
    "CONTACT",
    "CONTRACTER",
    "CREDIT",
    "STATUS",
    "REMARKS"
  ];
  getCustomers() async {
    customers = await UserSheetsApi.getCustomers();
    customers.add(["", "", "", "", "", "", "", ""]);
    setState(() {});
  }

  getCustomer(active) {
    customer[0] = active;
    for (int i = 0; i < 7; i++) {
      setState(() {
        customer[i + 1] = customers[active][i];
      });
    }
  }

  @override
  void initState() {
    getCustomers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Color(0xffdfe9f1),
      child: Column(children: [
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
        SizedBox(
          height: 16,
        ),
        ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                height: 460,
                child: Column(children: [
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.92,
                      decoration: BoxDecoration(
                        color: Color(0xff009b63),
                      ),
                      child: Row(
                        children: [
                          for (int i = 0; i < heading.length; i++)
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              height: 60,
                              width: i == 0
                                  ? 40
                                  : ((MediaQuery.of(context).size.width * 0.92 -
                                          40) /
                                      (heading.length - 1)),
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: i == heading.length - 1
                                              ? Colors.transparent
                                              : Colors.black))),
                              child: Center(
                                  child: Text(
                                heading[i],
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                        ],
                      )),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            for (int i = 0; i < customers.length; i++)
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.92,
                                child: Row(
                                  children: [
                                    for (int j = 0; j < 8; j++)
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (j == 0) {
                                              active != i
                                                  ? active = i
                                                  : active = -1;
                                            }
                                            if (active == i &&
                                                active !=
                                                    customers.length - 1) {
                                              getCustomer(active);
                                            }
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: active == i
                                                  ? Color(0xff9b9b9b)
                                                  : Colors.white,
                                              border: Border.all(
                                                  color: Colors.black)),
                                          height: 50,
                                          width: j == 0
                                              ? 40
                                              : ((MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.92 -
                                                      40) /
                                                  (7)),
                                          child: j == 0 || i != active
                                              ? Center(
                                                  child: Text(j == 0
                                                      ? (i + 1).toString()
                                                      : customers[i][j - 1]))
                                              : TextField(
                                                  onChanged: (val) {
                                                    if (active == i) {
                                                      customer[0] = i + 1;
                                                      customer[j] = val;
                                                    }
                                                    setState(() {});
                                                  },
                                                  cursorColor: Colors.black,
                                                  cursorHeight: 20,
                                                  textAlign: TextAlign.center,
                                                  decoration: InputDecoration(
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                      hintText: customers[i]
                                                              [j - 1]
                                                          .toString()),
                                                ),
                                        ),
                                      )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  )
                ]))),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
                onTap: () async {
                  if (active == customers.length - 1) {
                    if (customer[0] != "" && customer[1] != "") {
                      Customer newCustomer = Customer(
                          customer: customer[1].toString(),
                          address: customer[2].toString() == ""
                              ? "-"
                              : customer[2].toString(),
                          contact: customer[3].toString() == ""
                              ? "-"
                              : customer[3].toString(),
                          contracter: customer[4].toString() == ""
                              ? "-"
                              : customer[4].toString(),
                          credit: customer[5].toString() == ""
                              ? "-"
                              : customer[5].toString(),
                          status: customer[6].toString() == ""
                              ? "-"
                              : customer[6].toString(),
                          remarks: customer[7].toString() == ""
                              ? "-"
                              : customer[7].toString());

                      await UserSheetsApi.insertCustomer(
                          [newCustomer.toJson()]);
                      Future.delayed(Duration(seconds: 2)).then((value) {
                        customer = ["", "", "", "", "", "", "", ""];
                        active = -1;
                        getCustomers();
                        setState(() {});
                      });
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(5),
                      color: active == customers.length - 1
                          ? Colors.green
                          : Colors.grey,
                    ),
                    height: 40,
                    width: 150,
                    child: Center(
                      child: Text(
                        "Add Customer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )),
            InkWell(
              onTap: () async {
                if (active >= 0 && active < customers.length - 1) {
                  if (customer[0] != "" && customer[1] != "") {
                    Map<String, dynamic> newCustomer = {
                      "customer": customer[1].toString(),
                      "address": customer[2].toString() == ""
                          ? "-"
                          : customer[2].toString(),
                      "contact": customer[3].toString() == ""
                          ? "-"
                          : customer[3].toString(),
                      "contracter": customer[4].toString() == ""
                          ? "-"
                          : customer[4].toString(),
                      "credit": customer[5].toString() == ""
                          ? "-"
                          : customer[5].toString(),
                      "status": customer[6].toString() == ""
                          ? "-"
                          : customer[6].toString(),
                      "remarks": customer[7].toString() == ""
                          ? "-"
                          : customer[7].toString()
                    };

                    await UserSheetsApi.insertCustomerAt(
                        newCustomer, customer[0]);
                    Future.delayed(Duration(seconds: 2)).then((value) {
                      customer = ["", "", "", "", "", "", "", ""];
                      active = -1;
                      getCustomers();
                      setState(() {});
                    });
                  }
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    color: active >= 0 && active < customers.length - 1
                        ? Colors.green
                        : Colors.grey,
                  ),
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Edit Customer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (active >= 0 && active < customers.length - 1) {
                  UserSheetsApi.deleteCustomerAt(customer[0]);
                  Future.delayed(Duration(seconds: 2)).then((value) {
                    customer = ["", "", "", "", "", "", "", ""];
                    active = -1;
                    getCustomers();
                    setState(() {});
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    color: active >= 0 && active < customers.length - 1
                        ? Colors.green
                        : Colors.grey,
                  ),
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  active = -1;
                  customer = ["", "", "", "", "", "", "", ""];
                });
              },
              child: Buttons(
                text: "Cancel",
                color: Colors.green,
              ),
            )
          ],
        )
      ]),
    ));
  }
}
