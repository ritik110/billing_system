import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Date();
  }
}

class _Date extends State<Date> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(15),
        height: 70,
        width: 120,
        child: Center(
            child: TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Select Date",
            hintStyle: TextStyle(fontSize: 14, fontFamily: 'GeoramaRegular'),

            icon: Icon(
              Icons.calendar_today,
              size: 20,
            ), //icon of text field
          ),
          readOnly: true, //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              //you can implement different kind of Date Format here according to your requirement

              setState(() {
                dateinput.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {
              print("Date is not selected");
            }
          },
        )));
  }
}
