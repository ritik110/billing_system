import 'package:billing_system/homescreen/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:billing_system/icons.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Color color = Colors.white;
  Color colors = Color(0xff009b63);
  Color colorss = Color(0xff5b5b5b);
  FocusNode _searchFocus = FocusNode();

  @override
  void initState() {
    _searchFocus.addListener(() {
      if (_searchFocus.hasFocus) {
        setState(() {
          color = Color(0xff009b63);
          colors = Colors.white;
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
      drawer: new Maindrawer(),
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
              SizedBox(
                width: width * 0.2604,
              ),
              Center(
                child: Container(
                  height: 45,
                  width: width * 0.3356,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: color),
                  child: new TextFormField(
                    // onTap: () {
                    //   setState(() {
                    //     color == Colors.white
                    //         ? color = Color(0xff009b63)
                    //         : color = Colors.white;
                    //     colors == Color(0xff009b63)
                    //         ? colors = Colors.white
                    //         : colors = Color(0xff009b63);
                    //     colorss == Color(0xff5b5b5b)
                    //         ? colorss = Colors.white
                    //         : colorss = Color(0xff5b5b5b);
                    //   });
                    // },
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
                          fontSize: 16, fontFamily: 'Konnect', color: colorss),
                    ),
                    focusNode: _searchFocus,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.2929,
              ),
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
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Color(0xffdfe9f1),
        ),
      ),
    );
  }
}
