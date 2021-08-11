import 'package:billing_system/homescreen/main_drawer.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color color = Colors.white;
  Color colors = Color(0xff009b63);
  Color colorss = Colors.black;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Maindrawer(),
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xff009b63),
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Container(
            height: 45,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: color),
            child: new TextFormField(
              onTap: () {
                setState(() {
                  color == Colors.white
                      ? color = Color(0xff009b63)
                      : color = Colors.white;
                  colors == Color(0xff009b63)
                      ? colors = Colors.white
                      : colors = Color(0xff009b63);
                  colorss == Colors.black
                      ? colorss = Colors.white
                      : colorss = Colors.black;
                });
              },
              cursorColor: colorss,
              style: TextStyle(
                fontFamily: 'Konnect',
                fontSize: 16,
                color: colorss,
              ),
              decoration: new InputDecoration(
                fillColor: color,
                filled: true,
                prefixIcon: new Icon(
                  Icons.search,
                  color: colors,
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
                hintText: ' Search.....',
                hintStyle: TextStyle(
                    fontSize: 16, fontFamily: 'Konnect', color: colorss),
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
