import 'package:cuan_sheep/services/model/User/user.dart';
import 'package:cuan_sheep/services/model/kandang/kandang.dart';
import 'package:cuan_sheep/services/model/pembayaran/pembayaran.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_invest.g.dart';

@JsonSerializable()
class MyInvest {
  int id = 0;

  @JsonKey(name: 'user_id')
  String userId = "0";

  @JsonKey(name: 'kandang_id')
  String penId = "0";

  @JsonKey(name: "pembayaran_id")
  String paymentId = "0";

  @JsonKey(name: "jumlah_unit")
  String totalUnit = "0";

  @JsonKey(name: "total_harga")
  String totalPrice = "0";

  String is_done = "0";
  String bukti_pembayaran = "";
  String created_at = "";
  String updated_at = "";

  UserData user = UserData.initValue();

  Kandang kandang = Kandang.initValue();

  Pembayaran pembayaran = Pembayaran.initValue();

  MyInvest({
    required this.bukti_pembayaran,
    required this.created_at,
    required this.id,
    required this.is_done,
    required this.kandang,
    required this.paymentId,
    required this.pembayaran,
    required this.penId,
    required this.totalPrice,
    required this.totalUnit,
    required this.updated_at,
    required this.user,
    required this.userId,
  });

  factory MyInvest.fromJson(Map<String, dynamic> json) =>
      _$MyInvestFromJson(json);
  Map<String, dynamic> toJson() => _$MyInvestToJson(this);
}
