import 'package:billing_system/components/tableheading.dart';
import 'package:billing_system/components/tablerow.dart';
import 'package:billing_system/models/product.dart';
import 'package:billing_system/products/addproduct.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final bool master;
  Product({required this.master});
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool pressed = false;
  int active = -1;
  List products = [];
  List categories = [];

  List product = ["", "", "", "", "", "", "", "", "", "", ""];

  getproducts() async {
    products = await UserSheetsApi.getProducts();
    setState(() {});
    getCategories();
    print(categories);
  }

  getCategories() {
    for (int i = 0; i < products.length; i++) {
      if (!categories.contains(products[i][3])) {
        categories.add(products[i][3]);
      }
    }
  }

  getproduct(active) {
    product[0] = active;
    for (int i = 0; i < 7; i++) {
      setState(() {
        product[i + 1] = products[active][i];
      });
    }
  }

  @override
  void initState() {
    getproducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
              height: height * 0.7,
              child: SingleChildScrollView(
                child: Column(children: [
                  for (int k = 0; k < categories.length; k++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            active == k ? active = -1 : active = k;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(children: [
                            Container(
                                color: Color(0xff5b5b5b),
                                width: MediaQuery.of(context).size.width * 0.92,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 32.0),
                                      child: Text(
                                        categories[k] == "-".toUpperCase()
                                            ? "Others"
                                            : categories[k].toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'GeoramaRegular',
                                            fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        active == k
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    )
                                  ],
                                )),
                            k == active
                                ? Heading(heading: [
                                    "SN",
                                    "Product Name",
                                    "Location",
                                    "Company Name",
                                    "Category",
                                    "Sell per",
                                    "Unit",
                                    "Size/Quantity",
                                    "Color",
                                    "Cost Price",
                                    "Expiry Date",
                                    "Stock Quantity"
                                  ])
                                : SizedBox.shrink(),
                            k == active
                                ? Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    child: SingleChildScrollView(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            for (int i = 0;
                                                i < products.length;
                                                i++)
                                              if (categories[k] ==
                                                  products[i][3])
                                                Container(
                                                  height: 40,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.92,
                                                  child: Row(
                                                    children: [
                                                      for (int j = 0;
                                                          j < 12;
                                                          j++)
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 0.5)),
                                                          height: 40,
                                                          width: j == 0
                                                              ? 40
                                                              : ((MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.92 -
                                                                      40) /
                                                                  (11)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    8, 0, 0, 0),
                                                            child: Text(
                                                              j == 0
                                                                  ? (i + 1)
                                                                      .toString()
                                                                  : products[i]
                                                                      [j - 1],
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'GeoramaRegular'),
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
                                : SizedBox.shrink(),
                          ]),
                        ),
                      ),
                    ),
                ]),
              ),
            ),
            widget.master
                ? Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Addproduct(
                                      categories: categories,
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 10, 65, 10),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          height: height * 0.06,
                          width: 150,
                          child: Center(
                            child: Text(
                              "Add Product",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
