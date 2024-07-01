// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorReport _$DoctorReportFromJson(Map<String, dynamic> json) => DoctorReport(
      id: (json['id'] as num).toInt(),
      followUpDate: json['follow_up_date'] as String,
      presentingComplaints: json['presenting_complaints'] as String,
      priorMedicalConditions: json['prior_medical_conditions'] as String,
      allergies: json['allergies'] as String,
      medicines: json['medicines'] as String,
      diagnosis: json['diagnosis'] as String,
      investigations: json['investigations'] as String,
      treatmentPlan: json['treatment_plan'] as String,
      additionalNotes: json['additional_notes'] as String,
      contactAppointmentDetailsId:
          (json['contact_appointment_details_id'] as num).toInt(),
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
      createdBy: json['created_by'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$DoctorReportToJson(DoctorReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'follow_up_date': instance.followUpDate,
      'presenting_complaints': instance.presentingComplaints,
      'prior_medical_conditions': instance.priorMedicalConditions,
      'allergies': instance.allergies,
      'medicines': instance.medicines,
      'diagnosis': instance.diagnosis,
      'investigations': instance.investigations,
      'treatment_plan': instance.treatmentPlan,
      'additional_notes': instance.additionalNotes,
      'contact_appointment_details_id': instance.contactAppointmentDetailsId,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
