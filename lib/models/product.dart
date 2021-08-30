class Productheadings {
  static final String productName = "productName";
  static final String location = "location";
  static final String companyName = "companyName";
  static final String category = "category";
  static final String sellPer = "sellPer";
  static final String unit = "unit";
  static final String sizeQuantity = "sizeQuantity";
  static final String color = "color";
  static final String costPrice = "costPrice";
  static final String expDate = "expDate";
  static final String stockQuantity = "stockQuantity";

  static List<String> getFields() => [
        productName,
        location,
        companyName,
        category,
        sellPer,
        unit,
        sizeQuantity,
        color,
        costPrice,
        expDate,
        stockQuantity
      ];
}

class Product {
  final String productName,
      location,
      companyName,
      category,
      sellPer,
      unit,
      sizeQuantity,
      color,
      costPrice,
      expDate,
      stockQuantity;
  const Product({
    required this.productName,
    required this.location,
    required this.companyName,
    required this.category,
    required this.sellPer,
    required this.unit,
    required this.sizeQuantity,
    required this.color,
    required this.costPrice,
    required this.expDate,
    required this.stockQuantity,
  });
  static Product fromJson(Map<String, dynamic> json) => Product(
        productName: json[Productheadings.productName],
        location: json[Productheadings.location],
        companyName: json[Productheadings.companyName],
        category: json[Productheadings.category],
        sellPer: json[Productheadings.sellPer],
        unit: json[Productheadings.unit],
        sizeQuantity: json[Productheadings.sizeQuantity],
        color: json[Productheadings.color],
        costPrice: json[Productheadings.costPrice],
        expDate: json[Productheadings.expDate],
        stockQuantity: json[Productheadings.stockQuantity],
      );
  Map<String, dynamic> toJson() => {
        Productheadings.productName: productName,
        Productheadings.location: location,
        Productheadings.companyName: companyName,
        Productheadings.category: category,
        Productheadings.sellPer: sellPer,
        Productheadings.unit: unit,
        Productheadings.sizeQuantity: sizeQuantity,
        Productheadings.color: color,
        Productheadings.costPrice: costPrice,
        Productheadings.expDate: expDate,
        Productheadings.stockQuantity: stockQuantity,
      };
}
