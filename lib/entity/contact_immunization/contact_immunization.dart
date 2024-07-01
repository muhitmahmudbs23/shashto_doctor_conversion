import 'package:json_annotation/json_annotation.dart';

part 'contact_immunization.g.dart';

@JsonSerializable()
class ContactImmunization {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'dosage')
  final int dosage;

  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'next_due_date')
  final String nextDueDate;

  @JsonKey(name: 'is_reminder_set')
  final bool isReminder;

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

  ContactImmunization({
    required this.id,
    required this.contactId,
    required this.contactMedicalRecordId,
    required this.name,
    required this.dosage,
    required this.date,
    required this.nextDueDate,
    required this.isReminder,
    required this.notes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactImmunization.fromJson(Map<String, dynamic> json) =>
      _$ContactImmunizationFromJson(json);

  Map<String, dynamic> toJson() => _$ContactImmunizationToJson(this);

  @override
  String toString() {
    return 'ContactImmunization{id: $id, contactId: $contactId, contactMedicalRecordId: $contactMedicalRecordId, name: $name, dosage: $dosage, date: $date, nextDueDate: $nextDueDate, isReminder: $isReminder, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
