// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myinvest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyInvestResponse _$MyInvestResponseFromJson(Map<String, dynamic> json) =>
    MyInvestResponse(
      data: (json['investasis'] as List<dynamic>)
          .map((e) => MyInvest.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$MyInvestResponseToJson(MyInvestResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'investasis': instance.data,
    };
