// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map json) => _$_UserModel(
      email: json['email'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      address: AddressModel.fromJson(
          Map<String, dynamic>.from(json['address'] as Map)),
      company: CompanyModel.fromJson(
          Map<String, dynamic>.from(json['company'] as Map)),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address.toJson(),
      'company': instance.company.toJson(),
    };
