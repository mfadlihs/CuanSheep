// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Popup _$PopupFromJson(Map<String, dynamic> json) => Popup(
      success: json['success'] as bool,
      message: json['message'] as String,
      random: PopupData.fromJson(json['random'] as Map<String, dynamic>),
      data: (json['popups'] as List<dynamic>)
          .map((e) => PopupData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopupToJson(Popup instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'random': instance.random,
      'popups': instance.data,
    };

PopupData _$PopupDataFromJson(Map<String, dynamic> json) => PopupData(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$PopupDataToJson(PopupData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
