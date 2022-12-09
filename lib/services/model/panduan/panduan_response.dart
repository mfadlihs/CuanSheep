import 'package:cuan_sheep/services/model/panduan/panduan.dart';
import 'package:json_annotation/json_annotation.dart';

part 'panduan_response.g.dart';

@JsonSerializable()
class PanduanResponse {
  bool success;
  String message;

  @JsonKey(name: 'panduans')
  List<Panduan> data = <Panduan>[];

  PanduanResponse({
    required this.data,
    required this.message,
    required this.success,
  });

  PanduanResponse.initValue({
    this.message = "",
    this.success = true,
  });

  factory PanduanResponse.fromJson(Map<String, dynamic> json) =>
      _$PanduanResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PanduanResponseToJson(this);
}
