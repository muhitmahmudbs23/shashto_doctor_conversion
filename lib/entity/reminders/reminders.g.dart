// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reminders _$RemindersFromJson(Map<String, dynamic> json) => Reminders(
      id: (json['id'] as num?)?.toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      type: json['type'] as String,
      actualId: (json['actual_id'] as num).toInt(),
      startDateTime: DateTime.parse(json['start_time'] as String),
      onlyDate: DateTime.parse(json['only_date'] as String),
      onlyTime: DateTime.parse(json['only_time'] as String),
      endTime: DateTime.parse(json['end_time'] as String),
      isOngoingMedicine: json['is_ongoing_medicine'] as bool,
      jobId: (json['job_id'] as num).toInt(),
    );

Map<String, dynamic> _$RemindersToJson(Reminders instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['contact_id'] = instance.contactId;
  val['type'] = instance.type;
  val['actual_id'] = instance.actualId;
  val['start_time'] = instance.startDateTime.toIso8601String();
  val['only_date'] = instance.onlyDate.toIso8601String();
  val['only_time'] = instance.onlyTime.toIso8601String();
  val['end_time'] = instance.endTime.toIso8601String();
  val['is_ongoing_medicine'] = instance.isOngoingMedicine;
  val['job_id'] = instance.jobId;
  return val;
}
