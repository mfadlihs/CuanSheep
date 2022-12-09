// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pen_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PenDetailResponse _$PenDetailResponseFromJson(Map<String, dynamic> json) =>
    PenDetailResponse(
      success: json['success'] as bool,
      data: Pen.fromJson(json['kandang'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$PenDetailResponseToJson(PenDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'kandang': instance.data,
    };
