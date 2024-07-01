// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revera_doctor_appointment_slots.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReveraDoctorAppointmentSlots _$ReveraDoctorAppointmentSlotsFromJson(
        Map<String, dynamic> json) =>
    ReveraDoctorAppointmentSlots(
      id: (json['id'] as num).toInt(),
      shashtoDocId: (json['shashto_doc_id'] as num).toInt(),
      slotRequestId: (json['slot_request_id'] as num).toInt(),
      date: json['date'] as String,
      time: json['time'] as String,
      timeSlot: json['time_slot'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      status: json['status'] as bool,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      timeStamp: (json['time_stamp'] as num).toInt(),
    );

Map<String, dynamic> _$ReveraDoctorAppointmentSlotsToJson(
        ReveraDoctorAppointmentSlots instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shashto_doc_id': instance.shashtoDocId,
      'slot_request_id': instance.slotRequestId,
      'date': instance.date,
      'time': instance.time,
      'time_slot': instance.timeSlot,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'status': instance.status,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'time_stamp': instance.timeStamp,
    };
