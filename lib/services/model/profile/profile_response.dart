import 'package:cuan_sheep/services/model/profile/profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  bool success;
  String message;

  @JsonKey(name: "peternak")
  Profile data;

  ProfileResponse({
    required this.data,
    required this.message,
    required this.success,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
