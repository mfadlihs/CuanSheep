import 'package:json_annotation/json_annotation.dart';

part 'pembayaran.g.dart';

@JsonSerializable()
class Pembayaran {
  int id = 0;
  String peternak_id = "0";
  String bank = "";
  String rekening = "";
  String created_at = "";
  String updated_at = "";

  Pembayaran({
    required this.bank,
    required this.created_at,
    required this.id,
    required this.peternak_id,
    required this.rekening,
    required this.updated_at,
  });

  Pembayaran.initValue();

  factory Pembayaran.fromJson(Map<String, dynamic> json) =>
      _$PembayaranFromJson(json);
  Map<String, dynamic> toJson() => _$PembayaranToJson(this);
}
