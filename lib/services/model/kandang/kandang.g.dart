// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kandang _$KandangFromJson(Map<String, dynamic> json) => Kandang(
      created_at: json['created_at'] as String,
      dividen: json['bagi_hasil'] as String,
      farmerId: json['peternak_id'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      packet: json['paket'] as String,
      potentialROI: json['potensi_roi'] as String,
      price: json['harga'] as String,
      status: json['status'] as String,
      stock: json['unit_tersedia'] as String,
      updated_at: json['updated_at'] as String,
      collected: json['terkumpul'] as String,
      duration: json['durasi'] as String,
      estimation: json['estimasi'] as String,
      feed: json['pakan'] as String,
      finalWeight: json['berat_akhir'] as String,
      health: json['kesehatan'] as String,
      initWeight: json['berat_awal'] as String,
      needs: json['dibutuhkan'] as String,
      percentage: json['persentase'] as String,
      priceKG: json['harga_kg'] as String,
      proposal: json['proposal'] as String,
      weight: json['berat'] as String,
    );

Map<String, dynamic> _$KandangToJson(Kandang instance) => <String, dynamic>{
      'id': instance.id,
      'peternak_id': instance.farmerId,
      'name': instance.name,
      'bagi_hasil': instance.dividen,
      'potensi_roi': instance.potentialROI,
      'unit_tersedia': instance.stock,
      'status': instance.status,
      'harga': instance.price,
      'harga_kg': instance.priceKG,
      'paket': instance.packet,
      'proposal': instance.proposal,
      'dibutuhkan': instance.needs,
      'terkumpul': instance.collected,
      'durasi': instance.duration,
      'berat_awal': instance.initWeight,
      'estimasi': instance.estimation,
      'berat_akhir': instance.finalWeight,
      'persentase': instance.percentage,
      'berat': instance.weight,
      'kesehatan': instance.health,
      'pakan': instance.feed,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
