// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panduan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Panduan _$PanduanFromJson(Map<String, dynamic> json) => Panduan(
      id: json['id'] as int,
      created_at: json['created_at'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$PanduanToJson(Panduan instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
