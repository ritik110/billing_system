import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  const Submit({Key? key}) : super(key: key);

  @override
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
      child: Container(
        child: GestureDetector(
          child: Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.teal),
              width: width * 0.05,
              height: height * 0.05,
              child: Text("submit",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
