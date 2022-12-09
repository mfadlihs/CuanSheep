import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pen_detail_response.g.dart';

@JsonSerializable()
class PenDetailResponse {
  bool success;
  String message;

  @JsonKey(name: "kandang")
  Pen data;

  PenDetailResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory PenDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PenDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PenDetailResponseToJson(this);
}
