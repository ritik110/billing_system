class Customerheadings {
  static final String customer = "customer";
  static final String address = "address";
  static final String contact = "contact";
  static final String contracter = "contracter";
  static final String credit = "credit";
  static final String status = "status";
  static final String remarks = "remarks";

  static List<String> getFields() =>
      [customer, address, contact, contracter, credit, status, remarks];
}

class Customer {
  final String customer, address, contact, contracter, credit, status, remarks;
  const Customer(
      {required this.customer,
      required this.address,
      required this.contact,
      required this.contracter,
      required this.credit,
      required this.status,
      required this.remarks});
  static Customer fromJson(Map<String, dynamic> json) => Customer(
      customer: json[Customerheadings.customer],
      address: json[Customerheadings.address],
      contact: json[Customerheadings.contact],
      contracter: json[Customerheadings.contracter],
      credit: json[Customerheadings.credit],
      status: json[Customerheadings.status],
      remarks: json[Customerheadings.remarks]);
  Map<String, dynamic> toJson() => {
        Customerheadings.customer: customer,
        Customerheadings.address: address,
        Customerheadings.contact: contact,
        Customerheadings.contracter: contracter,
        Customerheadings.credit: credit,
        Customerheadings.status: status,
        Customerheadings.remarks: remarks
      };
}
