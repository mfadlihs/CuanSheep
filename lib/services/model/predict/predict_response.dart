import 'package:json_annotation/json_annotation.dart';

part 'predict_response.g.dart';

@JsonSerializable()
class PredictResponse {
  bool success = false;
  String message = "";
  num prediksi = 0;

  PredictResponse({
    required this.success,
    required this.message,
    required this.prediksi,
  });

  factory PredictResponse.fromJson(Map<String, dynamic> json) =>
      _$PredictResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PredictResponseToJson(this);
}
