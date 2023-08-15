import 'package:cuan_sheep/services/model/postInvest/post_invest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_invest_response.g.dart';

@JsonSerializable()
class PostInvestResponse {
  bool success = false;
  String message = "";

  @JsonKey(name: 'investasi')
  PostInvest data = PostInvest.initValue();

  PostInvestResponse({
    required this.data,
    required this.message,
    required this.success,
  });

  PostInvestResponse.initValue();

  factory PostInvestResponse.fromJson(Map<String, dynamic> json) =>
      _$PostInvestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PostInvestResponseToJson(this);
}
