// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembayaran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pembayaran _$PembayaranFromJson(Map<String, dynamic> json) => Pembayaran(
      bank: json['bank'] as String,
      created_at: json['created_at'] as String,
      id: json['id'] as int,
      peternak_id: json['peternak_id'] as String,
      rekening: json['rekening'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$PembayaranToJson(Pembayaran instance) =>
    <String, dynamic>{
      'id': instance.id,
      'peternak_id': instance.peternak_id,
      'bank': instance.bank,
      'rekening': instance.rekening,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
