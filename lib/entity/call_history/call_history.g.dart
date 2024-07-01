// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallHistory _$CallHistoryFromJson(Map<String, dynamic> json) => CallHistory(
      id: (json['id'] as num).toInt(),
      contactAppointmentDetailsId:
          (json['contact_appointment_details_id'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$CallHistoryToJson(CallHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_appointment_details_id': instance.contactAppointmentDetailsId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'duration': instance.duration,
    };
