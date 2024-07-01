// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_appointment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAppointmentDetails _$ContactAppointmentDetailsFromJson(
        Map<String, dynamic> json) =>
    ContactAppointmentDetails(
      id: (json['id'] as num).toInt(),
      appointmentId: (json['appointment_id'] as num).toInt(),
      shashtoSlotId: (json['shashto_slot_id'] as num).toInt(),
      shareFileId: (json['share_file_id'] as num).toInt(),
      shashtoDoctorId: (json['shashto_doc_id'] as num).toInt(),
      chatHistory: json['chat_history'] as String,
      doctorsNote: json['doctors_note'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      callHistoryList: (json['callHistoryList'] as List<dynamic>?)
          ?.map((e) => CallHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      messageHistoryList: (json['messageHistoryList'] as List<dynamic>?)
          ?.map((e) => MessageHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactAppointmentDetailsToJson(
        ContactAppointmentDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_id': instance.appointmentId,
      'shashto_slot_id': instance.shashtoSlotId,
      'share_file_id': instance.shareFileId,
      'shashto_doc_id': instance.shashtoDoctorId,
      'chat_history': instance.chatHistory,
      'doctors_note': instance.doctorsNote,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'callHistoryList': instance.callHistoryList,
      'messageHistoryList': instance.messageHistoryList,
    };
