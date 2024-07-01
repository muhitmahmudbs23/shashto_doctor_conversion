import 'package:floor/floor.dart';

@Entity(tableName: 'doctor_prescription')
class DoctorPrescription {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'file_url')
  final String fileUrl;

  @ColumnInfo(name: 'signed_file_url')
  final String signedFileUrl;

  @ColumnInfo(name: 'doctor_report_id')
  final int doctorReportId;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'is_signed')
  final bool isSigned;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'DoctorPrescription{id: $id, fileUrl: $fileUrl, signedFileUrl: $signedFileUrl, doctorReportId: $doctorReportId, status: $status, isSigned: $isSigned, createdDate: $createdDate, updatedDate: $updatedDate, createdBy: $createdBy, updatedBy: $updatedBy}';
  }
}

