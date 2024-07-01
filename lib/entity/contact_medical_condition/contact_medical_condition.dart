import 'package:json_annotation/json_annotation.dart';

part 'contact_medical_condition.g.dart';

@JsonSerializable()
class ContactMedicalCondition {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'year_of_diagnosis')
  final String yearOfDiagnosis;

  @JsonKey(name: 'tag_id')
  final int tagId;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactMedicalCondition({
    required this.id,
    required this.contactId,
    required this.name,
    required this.yearOfDiagnosis,
    required this.tagId,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactMedicalCondition.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicalConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicalConditionToJson(this);

  @override
  String toString() {
    return 'ContactMedicalCondition{id: $id, contactId: $contactId, name: $name, yearOfDiagnosis: $yearOfDiagnosis, tagId: $tagId, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
