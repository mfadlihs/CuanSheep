import 'package:cuan_sheep/services/model/farmer/farmer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  num id = 0;

  @JsonKey(name: "peternak_id")
  String farmerId = "0";

  String bank = "";
  String rekening = "";
  String created_at = "";
  String updated_at = "";

  @JsonKey(name: "peternak")
  Farmer farmer = Farmer.initValue();

  Payment({
    required this.bank,
    required this.created_at,
    required this.farmer,
    required this.farmerId,
    required this.id,
    required this.rekening,
    required this.updated_at,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  Payment.initValue();
}
