import 'package:billing_system/components/tableheading.dart';
import 'package:billing_system/components/tablerow.dart';
import 'package:billing_system/models/product.dart';
import 'package:billing_system/products/addproduct.dart';
import 'package:billing_system/services/sheetsapi.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
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
                      "products",
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
            Container(
              height: 500,
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
                                color: Colors.brown,
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
                                        categories[k] == "-"
                                            ? "Others"
                                            : categories[k],
                                        style: TextStyle(color: Colors.white),
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
                                    "Sn",
                                    "Product Name",
                                    "location",
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
                                                  height: 50,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.92,
                                                  child: Row(
                                                    children: [
                                                      for (int j =
                                                              0;
                                                          j < 12;
                                                          j++)
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black)),
                                                            height: 50,
                                                            width: j == 0
                                                                ? 40
                                                                : ((MediaQuery.of(context).size.width * 0.92 -
                                                                        40) /
                                                                    (11)),
                                                            child: Center(
                                                                child: Text(j ==
                                                                        0
                                                                    ? (i + 1)
                                                                        .toString()
                                                                    : products[i]
                                                                        [
                                                                        j - 1])))
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
            Container(
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
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green),
                    height: 40,
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
            ),
          ],
        ),
      ),
    );
  }
}
