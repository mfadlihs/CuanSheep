// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Farmer _$FarmerFromJson(Map<String, dynamic> json) => Farmer(
      address: json['address'] as String,
      created_at: json['created_at'] as String,
      description: json['description'] as String,
      id: json['id'] as int,
      image: json['dokumentasi'] as String,
      name: json['name'] as String,
      rating: json['rating'] as String,
      status: json['status'] as String,
      updated_at: json['updated_at'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$FarmerToJson(Farmer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'address': instance.address,
      'rating': instance.rating,
      'description': instance.description,
      'photo': instance.photo,
      'dokumentasi': instance.image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
