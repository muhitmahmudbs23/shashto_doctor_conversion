import 'package:floor/floor.dart';

@Entity(
  tableName: 'contacts_medical_images_type',
  indices: [Index(value: ['contact_medical_record_id'])],
)
class ContactsMedicalImagesType {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @ColumnInfo(name: 'report_type')
  final int reportType;

  @ColumnInfo(name: 'report_sub_type')
  final int reportSubType;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ContactsMedicalImagesType({
    required this.id,
    required this.contactMedicalRecordId,
    required this.reportType,
    required this.reportSubType,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  @override
  String toString() {
    return 'ContactsMedicalImagesType{id: $id, contactMedicalRecordId: $contactMedicalRecordId, reportType: $reportType, reportSubType: $reportSubType, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
