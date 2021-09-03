import 'package:billing_system/customers/buttons.dart';
import 'package:billing_system/models/product.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

class Addproduct extends StatefulWidget {
  final List categories;
  Addproduct({required this.categories});
  @override
  _AddproductState createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {

  static const defaultCostPrice = 0.0;
  static const defaultSellingPrice = 0.0;
  final _CostPriceController =
    TextEditingController(text: defaultCostPrice.toString());
  final _SellingPriceController =
    TextEditingController(text: defaultSellingPrice.toString());
  double _CostPrice = defaultCostPrice;
  double _SellingPrice = defaultSellingPrice;

  String name = "",
      size = "",
      cName = "",
      cPrice = "",
      category = "Category",
      color = "",
      location = "",
      unit = "",
      adate = DateTime.now().day.toString() +
          "/" +
          DateTime.now().month.toString() +
          "/" +
          DateTime.now().year.toString(),
      edate = "",
      stock = "";
  BoxDecoration circle = BoxDecoration(
      border: Border.all(width: 6, color: Color(0xff009b63)),
      color: Colors.white,
      borderRadius: BorderRadius.circular(15));
  InputDecoration fieldss = new InputDecoration(
    enabledBorder: new UnderlineInputBorder(
        borderSide: new BorderSide(color: Color(0xff5b5b5b))),
    focusedBorder: new UnderlineInputBorder(
        borderSide: new BorderSide(
      width: 2,
      color: Color(0xff009b63),
    )),
  );

  String dropdownValue = '(None)';
  @override

  double _getProfitPercentage() => double.parse(((_SellingPrice - _CostPrice) / _CostPrice * 100).toStringAsFixed(2));

  void initState() {
    super.initState();
    _CostPriceController.addListener(_onCostPriceChanged);
    _SellingPriceController.addListener(_onSellingPriceChanged);
  }

  _onCostPriceChanged() {
    setState(() {
      _CostPrice = double.tryParse(_CostPriceController.text) ?? 0.0;
    });
  }

  _onSellingPriceChanged() {
    setState(() {
      _SellingPrice = double.tryParse(_SellingPriceController.text) ?? 0.0;
    });
  }

  void dispose() {
    // To make sure we are not leaking anything, dispose any used TextEditingController
    // when this widget is cleared from memory.
    _CostPriceController.dispose();
    _SellingPriceController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      color: Color(0xffdfe9f1),
      child: Column(
        children: [
          Container(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      "Products",
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
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "Add Product",
                      style: TextStyle(
                        fontSize: 16,
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
              height: 20,
            ),
            Container(
              // height: height * 0.75,
              width: width * 0.95,
              decoration: circle,
              child: DefaultTextStyle.merge(
                style: TextStyle(fontSize: 16, fontFamily: 'GeoramaRegular'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Product Name :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      name = val;
                                    });
                                  },
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => Dialog(
                                        child: Container(
                                          width: 200,
                                          height: 400,
                                          padding: EdgeInsets.all(8),
                                          color: Colors.black,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        widget
                                                            .categories.length;
                                                    i++)
                                                  Padding(
                                                    padding: EdgeInsets.all(4),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            category = widget
                                                                .categories[i];
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          widget.categories[i],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        )),
                                                  )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ));
                            },
                            child: Container(
                              height: 35,
                              width: 160,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xff383838),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "CATEGORY",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Size :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 100,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      size = val;
                                    });
                                  },
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 45, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff009b63),
                              border: Border.all(
                                color: Color(0xff009b63),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            height: 30,
                            width: 85,
                            child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    iconSize: 16,
                                    dropdownColor: Color(0xff009b63),
                                    iconEnabledColor: Colors.white,
                                    iconDisabledColor: Color(0xff383838),
                                    elevation: 10,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['(None)', 'metre', 'kg', 'litre']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(180, 30, 0, 0),
                          child: Text(
                            "Color :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 100,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      color = val;
                                    });
                                  },
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(180, 30, 0, 0),
                          child: Text(
                            "Location :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 100,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      location = val;
                                    });
                                  },
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
                            "Company Name :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 400,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      cName = val;
                                    });
                                  },
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
                            "Cost Price(Per Unit) :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 250,
                              child: TextField(
                                key: Key("CostPrice"),
                                  controller: _CostPriceController,
                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                  onChanged: (val) {
                                    setState(() {
                                      cPrice = val;
                                    });
                                  },
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                          child: Text(
                            "Selling Price(Per Unit) :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 250,
                              child: TextField(
                                  key: Key("CostPrice"),
                                  controller: _SellingPriceController,
                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 30, 0, 0),
                          child: Text(
                            'Profit Percentage: ${_getProfitPercentage()} %',
                            key: Key('profitPercentage'),
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "Added Date :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 250,
                              child: TextField(
                                  enabled: false,
                                  controller:
                                      TextEditingController(text: adate),
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                          child: Text(
                            "Expiry Date :  ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                              height: 40,
                              width: 250,
                              child: TextField(
                                  onChanged: (val) {
                                    setState(() {
                                      edate = val;
                                    });
                                  },
                                  cursorColor: Colors.black,
                                  cursorHeight: 20,
                                  decoration: fieldss)),
                        ),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                        child: Text(
                          "Stock / Unit :  ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                            height: 40,
                            width: 250,
                            child: TextField(
                                onChanged: (val) {
                                  setState(() {
                                    stock = val;
                                  });
                                },
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                decoration: fieldss)),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Remarks : ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          height: 100,
                          width: width * 0.75,
                          child: Center(
                            child: TextField(
                                cursorColor: Colors.black,
                                cursorHeight: 20,
                                maxLines: 6,
                                decoration: new InputDecoration(
                                  enabledBorder: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Color(0xff5b5b5b))),
                                  focusedBorder: new OutlineInputBorder(
                                      borderSide: new BorderSide(
                                        width: 2,
                                        color: Color(0xff009b63),
                                      )),
                                ),),
                          ),),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            ),
          ])),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(500, 20, 80, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () async {
                    Product newProduct = Product(
                        productName: name,
                        location: location,
                        companyName: cName,
                        category: category,
                        sellPer: unit,
                        unit: unit,
                        sizeQuantity: size,
                        color: color,
                        costPrice: cPrice,
                        expDate: edate,
                        stockQuantity: stock);
                    if (name != "") {
                      await UserSheetsApi.insertProduct([newProduct.toJson()]);
                      Navigator.pop(context);
                      setState(() {});
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.green,
                    child: Center(
                        child: Text(
                      "Add Product",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  width: 50,
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
    );
  }
}
