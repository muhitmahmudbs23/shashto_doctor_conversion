// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_medical_images_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsMedicalImagesType _$ContactsMedicalImagesTypeFromJson(
        Map<String, dynamic> json) =>
    ContactsMedicalImagesType(
      id: (json['id'] as num).toInt(),
      contactMedicalRecordId:
          (json['contact_medical_record_id'] as num).toInt(),
      reportType: (json['report_type'] as num).toInt(),
      reportSubType: (json['report_sub_type'] as num).toInt(),
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactsMedicalImagesTypeToJson(
        ContactsMedicalImagesType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_medical_record_id': instance.contactMedicalRecordId,
      'report_type': instance.reportType,
      'report_sub_type': instance.reportSubType,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
