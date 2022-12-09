// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pen_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PenResponse _$PenResponseFromJson(Map<String, dynamic> json) => PenResponse(
      data: (json['kandangs'] as List<dynamic>)
          .map((e) => Pen.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$PenResponseToJson(PenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'kandangs': instance.data,
    };
