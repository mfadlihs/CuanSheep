import 'package:cuan_sheep/services/model/myinvest/my_invest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'myinvest_response.g.dart';

@JsonSerializable()
class MyInvestResponse {
  bool success = false;
  String message = "";

  @JsonKey(name: "investasis")
  List<MyInvest> data = <MyInvest>[];

  MyInvestResponse({
    required this.data,
    required this.message,
    required this.success,
  });

  factory MyInvestResponse.fromJson(Map<String, dynamic> json) =>
      _$MyInvestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MyInvestResponseToJson(this);
}
