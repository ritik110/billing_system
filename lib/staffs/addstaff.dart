import 'package:billing_system/customers/buttons.dart';
import 'package:flutter/material.dart';

class AddStaff extends StatefulWidget {
  const AddStaff({Key? key}) : super(key: key);

  @override
  _AddStaffState createState() => _AddStaffState();
}

class _AddStaffState extends State<AddStaff> {
  BoxDecoration circle = BoxDecoration(
      color: Color(0xff383838), borderRadius: BorderRadius.circular(15));
  InputDecoration fieldss = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: Colors.white,
      ),
    ),
  );
  TextStyle text = TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      color: Color(0xffdfe9f1),
      child: SingleChildScrollView(
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
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text(
                        "Add Staff",
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
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Text(
                        "ADD STAFF",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
                    Divider(
                      thickness: 2,
                      height: 10,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Name             :  ",
                            style: text,
                          ),
                        ),
                        Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              decoration: fieldss,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Text(
                              "Contact         :  ",
                              style: text,
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 150,
                              child: TextField(
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                              height: 40,
                              width: 150,
                              child: TextField(
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "City                 :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 40,
                              width: 150,
                              child: TextField(
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 30, 0, 0),
                          child: Text(
                            "State :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Role                 :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 40,
                              width: 250,
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
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Salary             :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 40,
                              width: 250,
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
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Score              :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 40,
                              width: 250,
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
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Work Details :  ",
                            style: text,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 40,
                              width: 250,
                              child: TextField(
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Remarks  ",
                        style: text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Container(
                          height: 100,
                          width: width * 0.85,
                          child: TextField(
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              maxLines: 6,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ))),
                    ),
                  ],
                ),
              ),
            ])),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Buttons(
                    text: "Cancel",
                    color: Colors.green,
                  ),
                  Buttons(
                    text: "Save",
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
