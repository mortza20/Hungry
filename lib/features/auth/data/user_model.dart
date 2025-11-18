class UserModel {
  final String name;
  final String email;
  final String? image;
  final String? token;
  final String? visa;
  final String? address;

  UserModel({
    required this.name,
    required this.email,
    this.address,
    this.image,
    this.token,
    this.visa,
  });

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"] ?? "",
      email: json["email"] ?? "",
      address: json["address"] ?? "",
      image: json["image"] ?? "",
      visa: json["Visa"] ?? "",
      token: json["token"] ?? "",
    );
  }
}
