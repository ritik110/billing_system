import 'dart:html';

import 'package:billing_system/customers/buttons.dart';
import 'package:billing_system/date.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var dateinput;
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
                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      "Invoice",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2e2e2e),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff2e2e2e),
                    size: 24,
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
              height: height * 0.03,
            ),
            Container(
              height: height * 0.90,
              width: width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                        child: Text(
                          "INVOICE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GeoramaRegular'),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(52, 5, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "INVOICE No :",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GeoramaRegular'),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        //   child: Container(
                        //     height: 20,
                        //     width: 50,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 2,
                    height: 10,
                    color: Color(0xff2e2e2e),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                            child: Text(
                              "INVOICE TO",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GeoramaRegular'),
                            ),
                          ),
                          // SizedBox(
                          //   height: 2,
                          // ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Container(
                                height: 40,
                                width: width / 10,
                                child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                    cursorColor: Colors.black,
                                    cursorHeight: 20,
                                    decoration: new InputDecoration(
                                      enabledBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Color(0xff5b5b5b))),
                                      focusedBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                        width: 1.5,
                                      )),
                                      hintText: 'Name',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff5b5b5b)),
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Container(
                                height: 40,
                                width: width / 10,
                                child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                    cursorColor: Colors.black,
                                    cursorHeight: 20,
                                    decoration: new InputDecoration(
                                      enabledBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Color(0xff5b5b5b))),
                                      focusedBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                        width: 1.5,
                                      )),
                                      hintText: 'Address',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff5b5b5b)),
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Container(
                                height: 40,
                                width: width / 10,
                                child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                    cursorColor: Colors.black,
                                    cursorHeight: 20,
                                    decoration: new InputDecoration(
                                      enabledBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Color(0xff5b5b5b))),
                                      focusedBorder: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                        width: 1.5,
                                      )),
                                      hintText: 'Contact',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff5b5b5b)),
                                    ))),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(46, 10, 65, 0),
                              child: Text(
                                "CONTRACTOR",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'GeoramaRegular'),
                              ),
                            ),
                            // SizedBox(
                            //   height: 2,
                            // ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                  height: 40,
                                  width: width / 10,
                                  child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'GeoramaRegular',
                                          fontSize: 14),
                                      cursorColor: Colors.black,
                                      cursorHeight: 20,
                                      decoration: new InputDecoration(
                                        enabledBorder: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Color(0xff5b5b5b))),
                                        focusedBorder: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                          width: 1.5,
                                        )),
                                        hintText: 'Name',
                                        hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff5b5b5b)),
                                      ))),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                  height: 40,
                                  width: width / 10,
                                  child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'GeoramaRegular',
                                          fontSize: 14),
                                      cursorColor: Colors.black,
                                      cursorHeight: 20,
                                      decoration: new InputDecoration(
                                        enabledBorder: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Color(0xff5b5b5b))),
                                        focusedBorder: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                          width: 1.5,
                                        )),
                                        hintText: 'Contact',
                                        hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff5b5b5b)),
                                      ))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(400, 0, 0, 50),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.75, color: Colors.black)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "INVOICE DATE",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Date(),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xff009b63),
                                  border: Border.all(
                                      width: 0.75, color: Colors.black)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "PLEASE PAY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Text(
                                    "NRs 63,836",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.75, color: Colors.black)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "DUE DATE",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Date(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Color(0xff009b63),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 100, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  )),
                              child: Row(
                                children: [
                                  Text(
                                    "Discount",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Nrs 7200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    "PAID AMMOUNT",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 22,
                                  ),
                                  Text(
                                    "Nrs 97200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  )),
                              child: Row(
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "Nrs 97200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 65,
                                  ),
                                  Text(
                                    "Previous Balance",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Nrs 9200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  )),
                              child: Row(
                                children: [
                                  Text(
                                    "TOTAL",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 45,
                                  ),
                                  Text(
                                    "Nrs 197200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "TOTAL DUE",
                                    style: TextStyle(
                                        color: Color(0xff009b63),
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Nrs 99200",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'GeoramaRegular',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Container(
                            height: 100,
                            width: 420,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "DELIVERED BY:",
                                        style: TextStyle(
                                            color: Color(0xff009b63),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'GeoramaRegular'),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            59, 0, 0, 10),
                                        child: Container(
                                            height: 20,
                                            width: width / 10,
                                            child: TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                textCapitalization:
                                                    TextCapitalization.words,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily:
                                                        'GeoramaRegular',
                                                    fontSize: 14),
                                                cursorColor: Colors.black,
                                                cursorHeight: 20,
                                                decoration: new InputDecoration(
                                                  enabledBorder:
                                                      new UnderlineInputBorder(
                                                          borderSide:
                                                              new BorderSide(
                                                                  color: Color(
                                                                      0xff5b5b5b))),
                                                  focusedBorder:
                                                      new UnderlineInputBorder(
                                                          borderSide:
                                                              new BorderSide(
                                                    width: 1.5,
                                                  )),
                                                  hintText: 'Name',
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff5b5b5b)),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "CHECKED BY:",
                                        style: TextStyle(
                                            color: Color(0xff009b63),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'GeoramaRegular'),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            65, 0, 0, 10),
                                        child: Container(
                                            height: 20,
                                            width: width / 10,
                                            child: TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                textCapitalization:
                                                    TextCapitalization.words,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily:
                                                        'GeoramaRegular',
                                                    fontSize: 14),
                                                cursorColor: Colors.black,
                                                cursorHeight: 20,
                                                decoration: new InputDecoration(
                                                  enabledBorder:
                                                      new UnderlineInputBorder(
                                                          borderSide:
                                                              new BorderSide(
                                                                  color: Color(
                                                                      0xff5b5b5b))),
                                                  focusedBorder:
                                                      new UnderlineInputBorder(
                                                          borderSide:
                                                              new BorderSide(
                                                    width: 1.5,
                                                  )),
                                                  hintText: 'Name',
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff5b5b5b)),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "AUTHORIZED SIGNATURE:",
                                        style: TextStyle(
                                            color: Color(0xff009b63),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'GeoramaRegular'),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 10),
                                        child: Container(
                                          height: 20,
                                          width: 158,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.black,
                                                width: 1,
                                              ),
                                            ),
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff009b63)),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                "SAVE",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
