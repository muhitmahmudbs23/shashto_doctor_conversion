import 'package:json_annotation/json_annotation.dart';

part 'contact_vitals.g.dart';

@JsonSerializable()
class ContactVitals {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'vitals_type_id')
  final int vitalsTypeId;

  @JsonKey(name: 'custom_vitals_type_id')
  final int customVitalsTypeId;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactVitals({
    required this.id,
    required this.contactId,
    required this.vitalsTypeId,
    required this.customVitalsTypeId,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactVitals.fromJson(Map<String, dynamic> json) =>
      _$ContactVitalsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactVitalsToJson(this);

  @override
  String toString() {
    return 'ContactVitals{id: $id, contactId: $contactId, vitalsTypeId: $vitalsTypeId, customVitalsTypeId: $customVitalsTypeId, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
