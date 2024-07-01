import 'package:json_annotation/json_annotation.dart';

part 'contact_medicine_allergies.g.dart';

@JsonSerializable()
class ContactMedicineAllergies {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'medicine_id')
  final int medicineId;

  @JsonKey(name: 'generic_name')
  final String genericName;

  @JsonKey(name: 'notes')
  final String notes;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactMedicineAllergies({
    required this.id,
    required this.contactId,
    required this.medicineId,
    required this.genericName,
    required this.notes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactMedicineAllergies.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicineAllergiesFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicineAllergiesToJson(this);

  @override
  String toString() {
    return 'ContactMedicineAllergies{id: $id, contactId: $contactId, medicineId: $medicineId, genericName: $genericName, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
