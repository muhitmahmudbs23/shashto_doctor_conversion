// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medical_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedicalCondition _$ContactMedicalConditionFromJson(
        Map<String, dynamic> json) =>
    ContactMedicalCondition(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      name: json['name'] as String,
      yearOfDiagnosis: json['year_of_diagnosis'] as String,
      tagId: (json['tag_id'] as num).toInt(),
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactMedicalConditionToJson(
        ContactMedicalCondition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'name': instance.name,
      'year_of_diagnosis': instance.yearOfDiagnosis,
      'tag_id': instance.tagId,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
