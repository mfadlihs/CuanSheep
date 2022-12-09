// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panduan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PanduanResponse _$PanduanResponseFromJson(Map<String, dynamic> json) =>
    PanduanResponse(
      data: (json['panduans'] as List<dynamic>)
          .map((e) => Panduan.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$PanduanResponseToJson(PanduanResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'panduans': instance.data,
    };
