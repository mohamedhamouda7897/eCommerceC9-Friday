class RequestParam {
  String name;
  String email;
  String password;
  String phone;

  RequestParam(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "rePassword": password,
      "phone": phone
    };
  }
}
