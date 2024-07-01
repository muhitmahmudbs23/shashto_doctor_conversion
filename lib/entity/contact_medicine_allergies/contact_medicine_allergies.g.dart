// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medicine_allergies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedicineAllergies _$ContactMedicineAllergiesFromJson(
        Map<String, dynamic> json) =>
    ContactMedicineAllergies(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      medicineId: (json['medicine_id'] as num).toInt(),
      genericName: json['generic_name'] as String,
      notes: json['notes'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactMedicineAllergiesToJson(
        ContactMedicineAllergies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'medicine_id': instance.medicineId,
      'generic_name': instance.genericName,
      'notes': instance.notes,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
