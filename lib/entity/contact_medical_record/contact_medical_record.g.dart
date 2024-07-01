// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medical_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedicalRecord _$ContactMedicalRecordFromJson(
        Map<String, dynamic> json) =>
    ContactMedicalRecord(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      moduleId: (json['module_id'] as num).toInt(),
      institutionName: json['institution_name'] as String,
      providerName: json['provider_name'] as String,
      recordDate: json['record_date'] as String,
      notes: json['notes'] as String,
      customReportName: json['custom_report_name'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactMedicalRecordToJson(
        ContactMedicalRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'module_id': instance.moduleId,
      'institution_name': instance.institutionName,
      'provider_name': instance.providerName,
      'record_date': instance.recordDate,
      'notes': instance.notes,
      'custom_report_name': instance.customReportName,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
