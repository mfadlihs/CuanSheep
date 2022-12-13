import 'package:cuan_sheep/services/model/kandang/kandang.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/services/model/ulasan/ulasan.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  int id = 0;
  String name = "";
  String status = "";
  String photo = "";
  String address = "";
  String rating = "0";
  String description = "";
  String dokumentasi = "";
  String created_at = "";
  String updated_at = "";

  List<Ulasan> ulasans = <Ulasan>[];

  @JsonKey(name: "kandangs")
  List<Kandang> pens = <Kandang>[];

  Profile({
    required this.address,
    required this.created_at,
    required this.description,
    required this.dokumentasi,
    required this.id,
    required this.name,
    required this.pens,
    required this.photo,
    required this.rating,
    required this.status,
    required this.ulasans,
    required this.updated_at,
  });

  Profile.initValue();

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
