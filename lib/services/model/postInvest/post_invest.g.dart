// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_invest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostInvest _$PostInvestFromJson(Map<String, dynamic> json) => PostInvest(
      bukti_pembayaran: json['bukti_pembayaran'] as String,
      created_at: json['created_at'] as String,
      id: json['id'] as int,
      is_done: json['is_done'] as num,
      jumlah_unit: json['jumlah_unit'] as String,
      kandang_id: json['kandang_id'] as String,
      pembayaran_id: json['pembayaran_id'] as String,
      total_harga: json['total_harga'] as num,
      updated_at: json['updated_at'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$PostInvestToJson(PostInvest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'kandang_id': instance.kandang_id,
      'pembayaran_id': instance.pembayaran_id,
      'jumlah_unit': instance.jumlah_unit,
      'bukti_pembayaran': instance.bukti_pembayaran,
      'total_harga': instance.total_harga,
      'is_done': instance.is_done,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
