class UserInfoModel {
  int id;
  String name;
  String email;
  String firstname;
  String middleInitial;
  String lastname;
  String address;

  UserInfoModel({
    required this.id,
    required this.name,
    required this.email,
    required this.firstname,
    required this.middleInitial,
    required this.lastname,
    required this.address,
  });

  //Map values from a JSON object
  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      firstname: json['firstname'],
      middleInitial: json['middle_initial'],
      lastname: json['lastname'],
      address: json['address'],
    );
  }
}
