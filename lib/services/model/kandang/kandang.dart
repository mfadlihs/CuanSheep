import 'package:json_annotation/json_annotation.dart';

part 'kandang.g.dart';

@JsonSerializable()
class Kandang {
  int id = 0;

  @JsonKey(name: "peternak_id")
  String farmerId = "0";

  String name = "";

  @JsonKey(name: "bagi_hasil")
  String dividen = "0";

  @JsonKey(name: "potensi_roi")
  String potentialROI = "";

  @JsonKey(name: "unit_tersedia")
  String stock = "0";

  String status = "0";

  @JsonKey(name: "harga")
  String price = "0";

  @JsonKey(name: "harga_kg")
  String priceKG = "0";

  @JsonKey(name: "paket")
  String packet = "0";

  String proposal = "";

  @JsonKey(name: "dibutuhkan")
  String needs = "0";

  @JsonKey(name: "terkumpul")
  String collected = "0";

  @JsonKey(name: "durasi")
  String duration = "0";

  @JsonKey(name: "berat_awal")
  String initWeight = "0";

  @JsonKey(name: "estimasi")
  String estimation = "0";

  @JsonKey(name: "berat_akhir")
  String finalWeight = "0";

  @JsonKey(name: "persentase")
  String percentage = "0";

  @JsonKey(name: "berat")
  String weight = "0";

  @JsonKey(name: "kesehatan")
  String health = "";

  @JsonKey(name: "pakan")
  String feed = "";

  String created_at = "";

  String updated_at = "";

  Kandang({
    required this.created_at,
    required this.dividen,
    required this.farmerId,
    required this.id,
    required this.name,
    required this.packet,
    required this.potentialROI,
    required this.price,
    required this.status,
    required this.stock,
    required this.updated_at,
    required this.collected,
    required this.duration,
    required this.estimation,
    required this.feed,
    required this.finalWeight,
    required this.health,
    required this.initWeight,
    required this.needs,
    required this.percentage,
    required this.priceKG,
    required this.proposal,
    required this.weight,
  });

  factory Kandang.fromJson(Map<String, dynamic> json) =>
      _$KandangFromJson(json);
  Map<String, dynamic> toJson() => _$KandangToJson(this);

  Kandang.initValue();
}
