import 'package:json_annotation/json_annotation.dart';

part 'ulasan.g.dart';

@JsonSerializable()
class Ulasan {
  int id = 0;

  @JsonKey(name: "peternak_id")
  String farmerId = "0";

  String name = "";
  String bidang_ahli = "";
  String rating = "0";
  String ulasan = '';
  String created_at = "";
  String updated_at = "";

  Ulasan({
    required this.bidang_ahli,
    required this.created_at,
    required this.farmerId,
    required this.id,
    required this.name,
    required this.rating,
    required this.ulasan,
    required this.updated_at,
  });

  factory Ulasan.fromJson(Map<String, dynamic> json) => _$UlasanFromJson(json);
  Map<String, dynamic> toJson() => _$UlasanToJson(this);

  Ulasan.initValue();
}
