import 'package:billing_system/components/tableheading.dart';
import 'package:billing_system/customers/buttons.dart';
import 'package:billing_system/models/staff.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

class Staffs extends StatefulWidget {
  const Staffs({Key? key}) : super(key: key);

  @override
  _StaffsState createState() => _StaffsState();
}

class _StaffsState extends State<Staffs> {
  bool pressed = false;
  int active = -1;
  List staffs = [];

  List staff = ["", "", "", "", "", "", "", ""];

  getstaffs() async {
    staffs = await UserSheetsApi.getStaffs();
    staffs.add(["", "", "", "", "", "", "", ""]);
    setState(() {});
  }

  getstaff(active) {
    staff[0] = active;
    for (int i = 0; i < 7; i++) {
      setState(() {
        staff[i + 1] = staffs[active][i];
      });
    }
    print(staff);
  }

  @override
  void initState() {
    getstaffs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      "staffs",
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
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                height: 460,
                child: Column(children: [
                  Heading(heading: [
                    "Sn",
                    "NAME",
                    "ADDRESS",
                    "CONTACT",
                    "ROLE",
                    "SALARY",
                    "EVALUATION",
                    "WORK DETAILS"
                  ]),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            for (int i = 0; i < staffs.length; i++)
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
                                                active != staffs.length - 1) {
                                              getstaff(active);
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
                                                      : staffs[i][j - 1]))
                                              : TextField(
                                                  onChanged: (val) {
                                                    if (active == i) {
                                                      staff[0] = i + 1;
                                                      staff[j] = val;
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
                                                      hintText: staffs[i][j - 1]
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
                  ),
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () async {
                      if (active == staffs.length - 1) {
                        if (staff[0] != "" && staff[1] != "") {
                          Staff newstaff = Staff(
                              name: staff[1].toString(),
                              address: staff[2].toString() == ""
                                  ? "-"
                                  : staff[2].toString(),
                              contact: staff[3].toString() == ""
                                  ? "-"
                                  : staff[3].toString(),
                              role: staff[4].toString() == ""
                                  ? "-"
                                  : staff[4].toString(),
                              salary: staff[5].toString() == ""
                                  ? "-"
                                  : staff[5].toString(),
                              evaluation: staff[6].toString() == ""
                                  ? "-"
                                  : staff[6].toString(),
                              workDetails: staff[7].toString() == ""
                                  ? "-"
                                  : staff[7].toString());

                          await UserSheetsApi.insertStaff([newstaff.toJson()]);
                          Future.delayed(Duration(seconds: 2)).then((value) {
                            staff = ["", "", "", "", "", "", "", ""];
                            active = -1;
                            getstaffs();
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
                          color: active == staffs.length - 1
                              ? Color(0xff009b63)
                              : Colors.grey,
                        ),
                        height: 40,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Add staff",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )),
                InkWell(
                  onTap: () async {
                    print(staff[0]);
                    if (active >= 0 && active < staffs.length - 1) {
                      if (staff[0] != "" && staff[1] != "") {
                        Map<String, dynamic> newstaff = {
                          "name": staff[1].toString(),
                          "address": staff[2].toString() == ""
                              ? "-"
                              : staff[2].toString(),
                          "contact": staff[3].toString() == ""
                              ? "-"
                              : staff[3].toString(),
                          "role": staff[4].toString() == ""
                              ? "-"
                              : staff[4].toString(),
                          "salary": staff[5].toString() == ""
                              ? "-"
                              : staff[5].toString(),
                          "evaluation": staff[6].toString() == ""
                              ? "-"
                              : staff[6].toString(),
                          "work details": staff[7].toString() == ""
                              ? "-"
                              : staff[7].toString()
                        };
                        await UserSheetsApi.insertStaffAt(newstaff, staff[0]);
                        Future.delayed(Duration(seconds: 2)).then((value) {
                          staff = ["", "", "", "", "", "", "", ""];
                          active = -1;
                          getstaffs();
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
                        color: active >= 0 && active < staffs.length - 1
                            ? Color(0xff009b63)
                            : Colors.grey,
                      ),
                      height: 40,
                      width: 150,
                      child: Center(
                        child: Text(
                          "Edit staff",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (active >= 0 && active < staffs.length - 1) {
                      UserSheetsApi.deleteStaffAt(staff[0]);
                      Future.delayed(Duration(seconds: 2)).then((value) {
                        staff = ["", "", "", "", "", "", "", ""];
                        active = -1;
                        getstaffs();
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
                        color: active >= 0 && active < staffs.length - 1
                            ? Color(0xff009b63)
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
                      staff = ["", "", "", "", "", "", "", ""];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                        color: active >= 0 && active < staffs.length - 1
                            ? Color(0xff009b63)
                            : Colors.grey,
                      ),
                      height: 40,
                      width: 150,
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
