// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageHistory _$MessageHistoryFromJson(Map<String, dynamic> json) =>
    MessageHistory(
      id: (json['id'] as num?)?.toInt(),
      contactAppointmentDetailsId:
          (json['contact_appointment_details_id'] as num).toInt(),
      profileName: json['profile_name'] as String,
      message: json['message'] as String,
      dateTime: json['date_time'] as String,
      timestamp: (json['time_stamp'] as num).toInt(),
      messageType: (json['messageType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MessageHistoryToJson(MessageHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_appointment_details_id': instance.contactAppointmentDetailsId,
      'profile_name': instance.profileName,
      'message': instance.message,
      'date_time': instance.dateTime,
      'time_stamp': instance.timestamp,
      'messageType': instance.messageType,
    };
