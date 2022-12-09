import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pen_response.g.dart';

@JsonSerializable()
class PenResponse {
  bool success;
  String message;

  @JsonKey(name: "kandangs")
  List<Pen> data;

  PenResponse({
    required this.data,
    required this.message,
    required this.success,
  });

  factory PenResponse.fromJson(Map<String, dynamic> json) =>
      _$PenResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PenResponseToJson(this);
}
