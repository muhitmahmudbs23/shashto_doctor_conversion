// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_vitals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactVitals _$ContactVitalsFromJson(Map<String, dynamic> json) =>
    ContactVitals(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      vitalsTypeId: (json['vitals_type_id'] as num).toInt(),
      customVitalsTypeId: (json['custom_vitals_type_id'] as num).toInt(),
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactVitalsToJson(ContactVitals instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'vitals_type_id': instance.vitalsTypeId,
      'custom_vitals_type_id': instance.customVitalsTypeId,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
