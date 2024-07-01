// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsConfig _$NewsConfigFromJson(Map<String, dynamic> json) => NewsConfig(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$NewsConfigToJson(NewsConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['url'] = instance.url;
  val['active'] = instance.active;
  return val;
}
