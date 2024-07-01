// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_appointments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAppointments _$ContactAppointmentsFromJson(Map<String, dynamic> json) =>
    ContactAppointments(
      id: (json['id'] as num?)?.toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      appointmentDate: json['appointment_date'] as String,
      appointmentTime: json['appointment_time'] as String,
      appointmentType: json['appointment_type'] as String,
      providerName: json['provider_name'] as String,
      institutionName: json['institution_name'] as String,
      serialNo: json['serial_no'] as String,
      notes: json['notes'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      timeStamp: (json['time_stamp'] as num).toInt(),
    );

Map<String, dynamic> _$ContactAppointmentsToJson(
        ContactAppointments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'appointment_date': instance.appointmentDate,
      'appointment_time': instance.appointmentTime,
      'appointment_type': instance.appointmentType,
      'provider_name': instance.providerName,
      'institution_name': instance.institutionName,
      'serial_no': instance.serialNo,
      'notes': instance.notes,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'time_stamp': instance.timeStamp,
    };
