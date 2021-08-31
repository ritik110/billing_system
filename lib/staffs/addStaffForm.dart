import 'package:flutter/material.dart';

class addStaffForm extends StatefulWidget {
  const addStaffForm({Key? key}) : super(key: key);

  @override
  _addStaffFormState createState() => _addStaffFormState();
}

class _addStaffFormState extends State<addStaffForm> {
  InputDecoration fieldss = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: Color(0xff5b5b5b),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AlertDialog(
      backgroundColor: Color(0xff383838),
      scrollable: true,
      title: Center(
        child: Text(
          'Add Staff'.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      content: Column(children: [
        Divider(
          color: Colors.white,
          height: 5,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Form(
            child: Container(
              height: height - 200,
              width: width * 0.7,
              color: Color(0xff383838),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'GeoramaRegular'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Name :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                              height: 40,
                              width: width / 6,
                              child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  textCapitalization: TextCapitalization.words,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GeoramaRegular',
                                      fontSize: 14),
                                  cursorColor: Colors.white,
                                  cursorHeight: 20,
                                  decoration: new InputDecoration(
                                    enabledBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xff5b5b5b))),
                                    focusedBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                    hintText: 'First Name',
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Color(0xff5b5b5b)),
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Container(
                              height: 40,
                              width: width / 6,
                              child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  textCapitalization: TextCapitalization.words,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GeoramaRegular',
                                      fontSize: 14),
                                  cursorColor: Colors.white,
                                  cursorHeight: 20,
                                  decoration: new InputDecoration(
                                    enabledBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xff5b5b5b))),
                                    focusedBorder: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                    hintText: 'Last Name',
                                    hintStyle: TextStyle(
                                        fontSize: 14, color: Color(0xff5b5b5b)),
                                  ))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Contact :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                  width: 1.5,
                                  color: Color(0xff009b63),
                                )),
                                hintText: 'Contact #1',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                  width: 1.5,
                                  color: Color(0xff009b63),
                                )),
                                hintText: 'Contact #2',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("City :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                  width: 1.5,
                                  color: Color(0xff009b63),
                                )),
                                hintText: 'City Name',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("State :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                  width: 1.5,
                                  color: Color(0xff009b63),
                                )),
                                hintText: 'State/District ',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Role :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                hintText: 'Role',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Salary :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                hintText: 'Salary',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Score :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 6,
                            child: TextFormField(
                              initialValue:'100',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                hintText: '100(Default)',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Work Details :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 2,
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                  width: 1.5,
                                  color: Color(0xff009b63),
                                )),
                                hintText: 'Responsibilities',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Container(
                            width: 160,
                            child: Text("Remarks :  "),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            height: 40,
                            width: width / 2,
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GeoramaRegular',
                                  fontSize: 14),
                              cursorColor: Colors.white,
                              cursorHeight: 20,
                              decoration: new InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff5b5b5b))),
                                focusedBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                      width: 1.5,
                                      color: Color(0xff009b63),
                                    )),
                                hintText: 'Remarks/Criticism',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Color(0xff5b5b5b)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(500, 20, 80, 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () async {},
                            child: Container(
                              width: 200,
                              height: 50,
                              color: Color(0xff009b63),
                              child: Center(
                                  child: Text(
                                    "Save",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width:50
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              color: Color(0xffff4500),
                              child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
