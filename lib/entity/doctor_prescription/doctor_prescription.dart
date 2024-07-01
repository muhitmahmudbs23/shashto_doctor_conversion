import 'package:json_annotation/json_annotation.dart';

part 'doctor_prescription.g.dart';

@JsonSerializable()
class DoctorPrescription {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'file_url')
  final String fileUrl;

  @JsonKey(name: 'signed_file_url')
  final String signedFileUrl;

  @JsonKey(name: 'doctor_report_id')
  final int doctorReportId;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'is_signed')
  final bool isSigned;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  DoctorPrescription({
    required this.id,
    required this.fileUrl,
    required this.signedFileUrl,
    required this.doctorReportId,
    required this.status,
    required this.isSigned,
    required this.createdDate,
    required this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
  });

  factory DoctorPrescription.fromJson(Map<String, dynamic> json) =>
      _$DoctorPrescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorPrescriptionToJson(this);

  @override
  String toString() {
    return 'DoctorPrescription{id: $id, fileUrl: $fileUrl, signedFileUrl: $signedFileUrl, doctorReportId: $doctorReportId, status: $status, isSigned: $isSigned, createdDate: $createdDate, updatedDate: $updatedDate, createdBy: $createdBy, updatedBy: $updatedBy}';
  }
}
