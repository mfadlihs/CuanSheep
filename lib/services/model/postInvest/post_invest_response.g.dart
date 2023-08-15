// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_invest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostInvestResponse _$PostInvestResponseFromJson(Map<String, dynamic> json) =>
    PostInvestResponse(
      data: PostInvest.fromJson(json['investasi'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$PostInvestResponseToJson(PostInvestResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'investasi': instance.data,
    };
