import 'package:json_annotation/json_annotation.dart';

part 'contact_medical_record.g.dart';

@JsonSerializable()
class ContactMedicalRecord {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'module_id')
  final int moduleId;

  @JsonKey(name: 'institution_name')
  final String institutionName;

  @JsonKey(name: 'provider_name')
  final String providerName;

  @JsonKey(name: 'record_date')
  final String recordDate;

  @JsonKey(name: 'notes')
  final String notes;

  @JsonKey(name: 'custom_report_name')
  final String customReportName;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
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

  factory ContactMedicalRecord.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicalRecordFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicalRecordToJson(this);

  @override
  String toString() {
    return 'ContactMedicalRecord{id: $id, contactId: $contactId, moduleId: $moduleId, institutionName: $institutionName, providerName: $providerName, recordDate: $recordDate, notes: $notes, customReportName: $customReportName, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
