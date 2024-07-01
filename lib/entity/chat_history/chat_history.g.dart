// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatHistory _$ChatHistoryFromJson(Map<String, dynamic> json) => ChatHistory(
      id: (json['id'] as num?)?.toInt(),
      appointmentId: (json['appointment_id'] as num).toInt(),
      senderContactId: (json['sender_contact_id'] as num).toInt(),
      recipientContactId: (json['recipient_contact_id'] as num).toInt(),
      senderProfileName: json['sender_profile_name'] as String,
      recipientProfileName: json['recipient_profile_name'] as String,
      message: json['message'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ChatHistoryToJson(ChatHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_id': instance.appointmentId,
      'sender_contact_id': instance.senderContactId,
      'recipient_contact_id': instance.recipientContactId,
      'sender_profile_name': instance.senderProfileName,
      'recipient_profile_name': instance.recipientProfileName,
      'message': instance.message,
      'timestamp': instance.timestamp.toIso8601String(),
    };
