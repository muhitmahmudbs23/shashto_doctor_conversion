// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_vitals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomVitals _$CustomVitalsFromJson(Map<String, dynamic> json) => CustomVitals(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      description: json['description'] as String,
      unit: json['unit'] as String,
      url: json['url'] as String,
      imageListPath: json['image_list_path'] as String,
      imageDetailsPath: json['image_details_path'] as String,
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
    );

Map<String, dynamic> _$CustomVitalsToJson(CustomVitals instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_name': instance.shortName,
      'description': instance.description,
      'unit': instance.unit,
      'url': instance.url,
      'image_list_path': instance.imageListPath,
      'image_details_path': instance.imageDetailsPath,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
    };
