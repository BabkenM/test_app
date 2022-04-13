// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Config _$$_ConfigFromJson(Map json) => _$_Config(
      env: json['env'],
      production: json['production'] as bool,
      apiUrl: json['apiUrl'] as String,
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('env', instance.env);
  val['production'] = instance.production;
  val['apiUrl'] = instance.apiUrl;
  return val;
}
