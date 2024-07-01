import 'package:json_annotation/json_annotation.dart';

part 'contacts_medical_images_type.g.dart';

@JsonSerializable()
class ContactsMedicalImagesType {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @JsonKey(name: 'report_type')
  final int reportType;

  @JsonKey(name: 'report_sub_type')
  final int reportSubType;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
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

  factory ContactsMedicalImagesType.fromJson(Map<String, dynamic> json) =>
      _$ContactsMedicalImagesTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsMedicalImagesTypeToJson(this);

  @override
  String toString() {
    return 'ContactsMedicalImagesType{id: $id, contactMedicalRecordId: $contactMedicalRecordId, reportType: $reportType, reportSubType: $reportSubType, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
