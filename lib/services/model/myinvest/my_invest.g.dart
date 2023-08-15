// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_invest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyInvest _$MyInvestFromJson(Map<String, dynamic> json) => MyInvest(
      bukti_pembayaran: json['bukti_pembayaran'] as String,
      created_at: json['created_at'] as String,
      id: json['id'] as int,
      is_done: json['is_done'] as String,
      kandang: Kandang.fromJson(json['kandang'] as Map<String, dynamic>),
      paymentId: json['pembayaran_id'] as String,
      pembayaran:
          Pembayaran.fromJson(json['pembayaran'] as Map<String, dynamic>),
      penId: json['kandang_id'] as String,
      totalPrice: json['total_harga'] as String,
      totalUnit: json['jumlah_unit'] as String,
      updated_at: json['updated_at'] as String,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$MyInvestToJson(MyInvest instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'kandang_id': instance.penId,
      'pembayaran_id': instance.paymentId,
      'jumlah_unit': instance.totalUnit,
      'total_harga': instance.totalPrice,
      'is_done': instance.is_done,
      'bukti_pembayaran': instance.bukti_pembayaran,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'user': instance.user,
      'kandang': instance.kandang,
      'pembayaran': instance.pembayaran,
    };
