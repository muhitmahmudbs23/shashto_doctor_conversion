// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorPrescription _$DoctorPrescriptionFromJson(Map<String, dynamic> json) =>
    DoctorPrescription(
      id: (json['id'] as num).toInt(),
      fileUrl: json['file_url'] as String,
      signedFileUrl: json['signed_file_url'] as String,
      doctorReportId: (json['doctor_report_id'] as num).toInt(),
      status: json['status'] as bool,
      isSigned: json['is_signed'] as bool,
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
      createdBy: json['created_by'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$DoctorPrescriptionToJson(DoctorPrescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_url': instance.fileUrl,
      'signed_file_url': instance.signedFileUrl,
      'doctor_report_id': instance.doctorReportId,
      'status': instance.status,
      'is_signed': instance.isSigned,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
