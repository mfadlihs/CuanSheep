import 'package:json_annotation/json_annotation.dart';

part 'farmer.g.dart';

@JsonSerializable()
class Farmer {
  int id;
  String name;
  String status;
  String address;
  String rating;
  String description;
  String photo;

  @JsonKey(name: "dokumentasi")
  String image;

  String created_at;
  String updated_at;

  Farmer({
    required this.address,
    required this.created_at,
    required this.description,
    required this.id,
    required this.image,
    required this.name,
    required this.rating,
    required this.status,
    required this.updated_at,
    required this.photo,
  });

  factory Farmer.fromJson(Map<String, dynamic> json) => _$FarmerFromJson(json);
  Map<String, dynamic> toJson() => _$FarmerToJson(this);

  Farmer.initValue({
    this.address = "",
    this.created_at = "",
    this.description = "",
    this.id = 0,
    this.image = "",
    this.name = "",
    this.rating = "0",
    this.status = "",
    this.updated_at = "",
    this.photo = "",
  });
}
