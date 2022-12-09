import 'package:cuan_sheep/services/model/farmer/farmer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pen.g.dart';

@JsonSerializable()
class Pen {
  int id;

  @JsonKey(name: "peternak_id")
  String farmerId;

  String name;

  @JsonKey(name: "bagi_hasil")
  String dividen;

  @JsonKey(name: "potensi_roi")
  String potentialROI;

  @JsonKey(name: "unit_tersedia")
  String stock;

  String status;

  @JsonKey(name: "harga")
  String price;

  @JsonKey(name: "harga_kg")
  String priceKG;

  @JsonKey(name: "paket")
  String packet;

  String proposal;

  @JsonKey(name: "dibutuhkan")
  String needs;

  @JsonKey(name: "terkumpul")
  String collected;

  @JsonKey(name: "durasi")
  String duration;

  @JsonKey(name: "berat_awal")
  String initWeight;

  @JsonKey(name: "estimasi")
  String estimation;

  @JsonKey(name: "berat_akhir")
  String finalWeight;

  @JsonKey(name: "persentase")
  String percentage;

  @JsonKey(name: "berat")
  String weight;

  @JsonKey(name: "kesehatan")
  String health;

  @JsonKey(name: "pakan")
  String feed;

  String created_at;

  String updated_at;

  @JsonKey(name: "peternak")
  Farmer farmer = Farmer.initValue();

  Pen({
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
    required this.farmer,
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

  factory Pen.fromJson(Map<String, dynamic> json) => _$PenFromJson(json);
  Map<String, dynamic> toJson() => _$PenToJson(this);

  Pen.initValue({
    this.created_at = "",
    this.dividen = "0",
    this.farmerId = "",
    this.id = 0,
    this.name = "",
    this.packet = "",
    this.potentialROI = "",
    this.price = "0",
    this.status = "",
    this.stock = "",
    this.updated_at = "",
    this.collected = "0",
    this.duration = "0",
    this.estimation = "0",
    this.feed = "",
    this.finalWeight = "0",
    this.health = "",
    this.initWeight = "0",
    this.needs = "0",
    this.percentage = "0",
    this.priceKG = "0",
    this.proposal = "",
    this.weight = "0",
  });
}
