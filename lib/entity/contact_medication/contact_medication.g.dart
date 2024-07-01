// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedication _$ContactMedicationFromJson(Map<String, dynamic> json) =>
    ContactMedication(
      id: (json['id'] as num).toInt(),
      medicineId: (json['medicine_id'] as num).toInt(),
      contactMedicalRecordId:
          (json['contact_medical_record_id'] as num).toInt(),
      genericName: json['generic_name'] as String,
      name: json['name'] as String,
      medicineType: json['medicine_type'] as String,
      noOfQuantity: json['no_of_quantity'] as String,
      dosage: (json['dosage'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      frequency: json['frequency'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      isReminder: json['is_reminder_set'] as bool,
      isOngoing: json['is_ongoing'] as bool,
      type: json['type'] as String,
      notes: json['notes'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      medicine: Medicines.fromJson(json['medicine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactMedicationToJson(ContactMedication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicine_id': instance.medicineId,
      'contact_medical_record_id': instance.contactMedicalRecordId,
      'generic_name': instance.genericName,
      'name': instance.name,
      'medicine_type': instance.medicineType,
      'no_of_quantity': instance.noOfQuantity,
      'dosage': instance.dosage,
      'duration': instance.duration,
      'frequency': instance.frequency,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'is_reminder_set': instance.isReminder,
      'is_ongoing': instance.isOngoing,
      'type': instance.type,
      'notes': instance.notes,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'medicine': instance.medicine,
    };
