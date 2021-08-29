class Staffheadings {
  static final String name = "name";
  static final String address = "address";
  static final String contact = "contact";
  static final String role = "role";
  static final String salary = "salary";
  static final String evaluation = "evaluation";
  static final String workDetails = "work details";

  static List<String> getFields() =>
      [name, address, contact, role, salary, evaluation, workDetails];
}

class Staff {
  final String name, address, contact, role, salary, evaluation, workDetails;
  const Staff(
      {required this.name,
      required this.address,
      required this.contact,
      required this.role,
      required this.salary,
      required this.evaluation,
      required this.workDetails});
  static Staff fromJson(Map<String, dynamic> json) => Staff(
      name: json[Staffheadings.name],
      address: json[Staffheadings.address],
      contact: json[Staffheadings.contact],
      role: json[Staffheadings.role],
      salary: json[Staffheadings.salary],
      evaluation: json[Staffheadings.evaluation],
      workDetails: json[Staffheadings.workDetails]);
  Map<String, dynamic> toJson() => {
        Staffheadings.name: name,
        Staffheadings.address: address,
        Staffheadings.contact: contact,
        Staffheadings.role: role,
        Staffheadings.salary: salary,
        Staffheadings.evaluation: evaluation,
        Staffheadings.workDetails: workDetails
      };
}
