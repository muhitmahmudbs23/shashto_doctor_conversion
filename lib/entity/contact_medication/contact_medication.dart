import 'package:json_annotation/json_annotation.dart';

import '../medicines/medicines.dart';

part 'contact_medication.g.dart';

@JsonSerializable()
class ContactMedication {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'medicine_id')
  final int medicineId;

  @JsonKey(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @JsonKey(name: 'generic_name')
  final String genericName;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'medicine_type')
  final String medicineType;

  @JsonKey(name: 'no_of_quantity')
  final String noOfQuantity;

  @JsonKey(name: 'dosage')
  final int dosage;

  @JsonKey(name: 'duration')
  final int duration;

  @JsonKey(name: 'frequency')
  final String frequency;

  @JsonKey(name: 'start_date')
  final String startDate;

  @JsonKey(name: 'end_date')
  final String endDate;

  @JsonKey(name: 'is_reminder_set')
  final bool isReminder;

  @JsonKey(name: 'is_ongoing')
  final bool isOngoing;

  @JsonKey(name: 'type')
  final String type;

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

  @JsonKey(includeFromJson: true)
  final Medicines medicine;

  ContactMedication({
    required this.id,
    required this.medicineId,
    required this.contactMedicalRecordId,
    required this.genericName,
    required this.name,
    required this.medicineType,
    required this.noOfQuantity,
    required this.dosage,
    required this.duration,
    required this.frequency,
    required this.startDate,
    required this.endDate,
    required this.isReminder,
    required this.isOngoing,
    required this.type,
    required this.notes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    required this.medicine,
  });

  factory ContactMedication.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicationFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicationToJson(this);

  @override
  String toString() {
    return 'ContactMedication{id: $id, medicineId: $medicineId, contactMedicalRecordId: $contactMedicalRecordId, genericName: $genericName, name: $name, medicineType: $medicineType, noOfQuantity: $noOfQuantity, dosage: $dosage, duration: $duration, frequency: $frequency, startDate: $startDate, endDate: $endDate, isReminder: $isReminder, isOngoing: $isOngoing, type: $type, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, medicine: $medicine}';
  }
}
