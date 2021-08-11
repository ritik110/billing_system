class Userheadings {
  static final String username = "username";
  static final String password = "password";

  static List<String> getFields() => [username, password];
}

class User {
  final String username, password;
  const User({required this.username, required this.password});
  static User fromJson(Map<String, dynamic> json) => User(
      username: json[Userheadings.username],
      password: json[Userheadings.password]);
  Map<String, dynamic> toJson() =>
      {Userheadings.username: username, Userheadings.password: password};
}
