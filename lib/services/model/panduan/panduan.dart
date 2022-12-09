import 'package:json_annotation/json_annotation.dart';

part 'panduan.g.dart';

@JsonSerializable()
class Panduan {
  int id;
  String title;
  String description;
  String created_at;
  String updated_at;

  Panduan({
    required this.id,
    required this.created_at,
    required this.description,
    required this.title,
    required this.updated_at,
  });

  Panduan.initValue({
    this.created_at = "",
    this.description = "",
    this.id = 0,
    this.title = "",
    this.updated_at = "",
  });

  factory Panduan.fromJson(Map<String, dynamic> json) =>
      _$PanduanFromJson(json);
  Map<String, dynamic> toJson() => _$PanduanToJson(this);
}
