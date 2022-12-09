// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predict_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictResponse _$PredictResponseFromJson(Map<String, dynamic> json) =>
    PredictResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      prediksi: json['prediksi'] as num,
    );

Map<String, dynamic> _$PredictResponseToJson(PredictResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'prediksi': instance.prediksi,
    };
