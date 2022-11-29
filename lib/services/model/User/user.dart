import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "success")
  bool success = false;

  @JsonKey(name: "user")
  UserData data;

  @JsonKey(name: "token")
  String token = "";

  User({required this.success, required this.data, required this.token});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: "id")
  int id = 0;

  @JsonKey(name: "first_name")
  String first_name = "";

  @JsonKey(name: "last_name")
  String last_name = "";

  @JsonKey(name: "address")
  String address = "";

  @JsonKey(name: "phone")
  String phone = "";

  @JsonKey(name: "email")
  String email = "";

  @JsonKey(name: "activation_code")
  String activation_code = "";

  @JsonKey(name: "is_active")
  String is_active = "";

  @JsonKey(name: "email_verified_at")
  String? email_verified_at = "";

  @JsonKey(name: "created_at")
  String? created_at = "";

  @JsonKey(name: "updated_at")
  String? updated_at = "";

  UserData({
    required this.id,
    required this.first_name,
    required this.address,
    required this.phone,
    required this.email,
    required this.activation_code,
    required this.is_active,
    required this.email_verified_at,
    required this.created_at,
    required this.last_name,
    required this.updated_at,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
