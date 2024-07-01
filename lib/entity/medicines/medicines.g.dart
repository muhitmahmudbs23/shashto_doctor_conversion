// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medicines _$MedicinesFromJson(Map<String, dynamic> json) => Medicines(
      id: (json['medicine_id'] as num).toInt(),
      brandName: json['brand_name'] as String,
      genericName: json['generic_name'] as String,
      shortName: json['short_name'] as String,
      company: json['company'] as String,
      category: json['category'] as String,
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
      createdUid: (json['created_uid'] as num).toInt(),
      updatedUid: (json['updated_uid'] as num).toInt(),
    );

Map<String, dynamic> _$MedicinesToJson(Medicines instance) => <String, dynamic>{
      'medicine_id': instance.id,
      'brand_name': instance.brandName,
      'generic_name': instance.genericName,
      'short_name': instance.shortName,
      'company': instance.company,
      'category': instance.category,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
      'created_uid': instance.createdUid,
      'updated_uid': instance.updatedUid,
    };
