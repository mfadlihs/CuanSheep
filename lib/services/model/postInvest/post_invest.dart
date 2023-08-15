import 'package:json_annotation/json_annotation.dart';

part 'post_invest.g.dart';

@JsonSerializable()
class PostInvest {
  int id = 0;
  String user_id = '0';
  String kandang_id = "0";
  String pembayaran_id = "0";
  String jumlah_unit = "0";
  String bukti_pembayaran = "";
  num total_harga = 0;
  num is_done = 0;
  String updated_at = "";
  String created_at = "";

  factory PostInvest.fromJson(Map<String, dynamic> json) =>
      _$PostInvestFromJson(json);
  Map<String, dynamic> toJson() => _$PostInvestToJson(this);

  PostInvest({
    required this.bukti_pembayaran,
    required this.created_at,
    required this.id,
    required this.is_done,
    required this.jumlah_unit,
    required this.kandang_id,
    required this.pembayaran_id,
    required this.total_harga,
    required this.updated_at,
    required this.user_id,
  });

  PostInvest.initValue();
}
