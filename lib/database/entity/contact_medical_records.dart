import 'package:floor/floor.dart';

@Entity(
  tableName: 'contacts_medical_record',
  indices: [Index(value: ['contact_id', 'module_id'])]
)
class ContactMedicalRecord {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'module_id')
  final int moduleId;

  @ColumnInfo(name: 'institution_name')
  final String institutionName;

  @ColumnInfo(name: 'provider_name')
  final String providerName;

  @ColumnInfo(name: 'record_date')
  final String recordDate;

  final String notes;

  @ColumnInfo(name: 'custom_report_name')
  final String customReportName;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ContactMedicalRecord({
    required this.id,
    required this.contactId,
    required this.moduleId,
    required this.institutionName,
    required this.providerName,
    required this.recordDate,
    required this.notes,
    required this.customReportName,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  @override
  String toString() {
    return 'ContactMedicalRecord{id: $id, contactId: $contactId, moduleId: $moduleId, institutionName: $institutionName, providerName: $providerName, recordDate: $recordDate, notes: $notes, customReportName: $customReportName, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
