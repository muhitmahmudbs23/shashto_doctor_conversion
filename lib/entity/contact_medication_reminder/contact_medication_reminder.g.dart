// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medication_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedicationReminder _$ContactMedicationReminderFromJson(
        Map<String, dynamic> json) =>
    ContactMedicationReminder(
      id: (json['id'] as num).toInt(),
      contactMedicationId: (json['contact_medication_id'] as num).toInt(),
      time: json['time'] as String,
      dateDay: json['date_day'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      isExpanded: json['isExpanded'] as bool? ?? false,
    );

Map<String, dynamic> _$ContactMedicationReminderToJson(
        ContactMedicationReminder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_medication_id': instance.contactMedicationId,
      'time': instance.time,
      'date_day': instance.dateDay,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'isExpanded': instance.isExpanded,
    };
