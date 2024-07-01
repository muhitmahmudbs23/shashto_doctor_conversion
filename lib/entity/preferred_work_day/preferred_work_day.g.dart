// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferred_work_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferredWorkDay _$PreferredWorkDayFromJson(Map<String, dynamic> json) =>
    PreferredWorkDay(
      id: (json['id'] as num).toInt(),
      weekDay: (json['week_day'] as num).toInt(),
      shashtoDoctorId: (json['shashto_doctor_id'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$PreferredWorkDayToJson(PreferredWorkDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'week_day': instance.weekDay,
      'shashto_doctor_id': instance.shashtoDoctorId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
