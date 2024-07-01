// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_immunization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactImmunization _$ContactImmunizationFromJson(Map<String, dynamic> json) =>
    ContactImmunization(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      contactMedicalRecordId:
          (json['contact_medical_record_id'] as num).toInt(),
      name: json['name'] as String,
      dosage: (json['dosage'] as num).toInt(),
      date: json['date'] as String,
      nextDueDate: json['next_due_date'] as String,
      isReminder: json['is_reminder_set'] as bool,
      notes: json['notes'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactImmunizationToJson(
        ContactImmunization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'contact_medical_record_id': instance.contactMedicalRecordId,
      'name': instance.name,
      'dosage': instance.dosage,
      'date': instance.date,
      'next_due_date': instance.nextDueDate,
      'is_reminder_set': instance.isReminder,
      'notes': instance.notes,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
