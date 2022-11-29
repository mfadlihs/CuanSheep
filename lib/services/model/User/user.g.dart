// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      success: json['success'] as bool,
      data: UserData.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'success': instance.success,
      'user': instance.data,
      'token': instance.token,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as int,
      first_name: json['first_name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      activation_code: json['activation_code'] as String,
      is_active: json['is_active'] as String,
      email_verified_at: json['email_verified_at'] as String?,
      created_at: json['created_at'] as String?,
      last_name: json['last_name'] as String,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'activation_code': instance.activation_code,
      'is_active': instance.is_active,
      'email_verified_at': instance.email_verified_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
