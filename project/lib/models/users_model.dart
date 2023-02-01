


class UserModel{
  late dynamic id;
  late dynamic fullname;
  late dynamic email;
  late dynamic address;
  late dynamic thumbnail;
  late dynamic phoneNumber;
  late dynamic roleId;
  late dynamic zaloId;
  late dynamic password;

  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.address,
    required this.thumbnail,
    required this.phoneNumber,
    required this.zaloId,
    required this.roleId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      fullname: json['fullname'],
      email: json['email'],
      address: json['address'],
      thumbnail: json['thumbnail'],
      phoneNumber: json['phone_number'],
      zaloId: json['zaloId'],
      roleId: json['roleId'],
    );
  }
}




