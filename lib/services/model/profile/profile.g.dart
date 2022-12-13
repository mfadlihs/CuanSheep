// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      address: json['address'] as String,
      created_at: json['created_at'] as String,
      description: json['description'] as String,
      dokumentasi: json['dokumentasi'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      pens: (json['kandangs'] as List<dynamic>)
          .map((e) => Kandang.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: json['photo'] as String,
      rating: json['rating'] as String,
      status: json['status'] as String,
      ulasans: (json['ulasans'] as List<dynamic>)
          .map((e) => Ulasan.fromJson(e as Map<String, dynamic>))
          .toList(),
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'photo': instance.photo,
      'address': instance.address,
      'rating': instance.rating,
      'description': instance.description,
      'dokumentasi': instance.dokumentasi,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'ulasans': instance.ulasans,
      'kandangs': instance.pens,
    };
