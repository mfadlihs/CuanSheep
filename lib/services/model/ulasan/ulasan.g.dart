// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ulasan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ulasan _$UlasanFromJson(Map<String, dynamic> json) => Ulasan(
      bidang_ahli: json['bidang_ahli'] as String,
      created_at: json['created_at'] as String,
      farmerId: json['peternak_id'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      rating: json['rating'] as String,
      ulasan: json['ulasan'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$UlasanToJson(Ulasan instance) => <String, dynamic>{
      'id': instance.id,
      'peternak_id': instance.farmerId,
      'name': instance.name,
      'bidang_ahli': instance.bidang_ahli,
      'rating': instance.rating,
      'ulasan': instance.ulasan,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
