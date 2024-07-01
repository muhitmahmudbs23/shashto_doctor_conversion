// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_vitals_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactVitalsValue _$ContactVitalsValueFromJson(Map<String, dynamic> json) =>
    ContactVitalsValue(
      id: (json['id'] as num).toInt(),
      contactMedicalRecordId:
          (json['contact_medical_record_id'] as num).toInt(),
      contactVitalsId: (json['contact_vitals_id'] as num).toInt(),
      vitalsValue: json['vitals_value'] as String,
      vitalsDatetime: json['vitals_datetime'] as String,
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
    );

Map<String, dynamic> _$ContactVitalsValueToJson(ContactVitalsValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_medical_record_id': instance.contactMedicalRecordId,
      'contact_vitals_id': instance.contactVitalsId,
      'vitals_value': instance.vitalsValue,
      'vitals_datetime': instance.vitalsDatetime,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
    };
