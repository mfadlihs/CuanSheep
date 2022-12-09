// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      bank: json['bank'] as String,
      created_at: json['created_at'] as String,
      farmer: Farmer.fromJson(json['peternak'] as Map<String, dynamic>),
      farmerId: json['peternak_id'] as String,
      id: json['id'] as num,
      rekening: json['rekening'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'peternak_id': instance.farmerId,
      'bank': instance.bank,
      'rekening': instance.rekening,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'peternak': instance.farmer,
    };
