import 'package:cuan_sheep/services/model/payment/payment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_response.g.dart';

@JsonSerializable()
class PaymentResponse {
  bool success = false;
  String message = "";

  @JsonKey(name: "pembayaran")
  List<Payment> payment = <Payment>[];

  PaymentResponse({
    required this.message,
    required this.payment,
    required this.success,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentResponseToJson(this);

  PaymentResponse.initValue();
}
