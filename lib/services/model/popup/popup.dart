import 'package:json_annotation/json_annotation.dart';

part "popup.g.dart";

@JsonSerializable()
class Popup {
  bool success;
  String message;
  PopupData random;
  @JsonKey(name: "popups")
  List<PopupData> data;

  Popup(
      {required this.success,
      required this.message,
      required this.random,
      required this.data});

  factory Popup.fromJson(Map<String, dynamic> json) => _$PopupFromJson(json);
  Map<String, dynamic> toJson() => _$PopupToJson(this);
}

@JsonSerializable()
class PopupData {
  int id;
  String title;
  String description;
  String created_at;
  String updated_at;

  PopupData({
    required this.id,
    required this.title,
    required this.description,
    required this.created_at,
    required this.updated_at,
  });

  factory PopupData.fromJson(Map<String, dynamic> json) =>
      _$PopupDataFromJson(json);
  Map<String, dynamic> toJson() => _$PopupDataToJson(this);
}
