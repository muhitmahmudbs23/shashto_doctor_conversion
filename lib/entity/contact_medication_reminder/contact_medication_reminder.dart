import 'package:json_annotation/json_annotation.dart';

part 'contact_medication_reminder.g.dart';

@JsonSerializable()
class ContactMedicationReminder {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_medication_id')
  final int contactMedicationId;

  @JsonKey(name: 'time')
  final String time;

  @JsonKey(name: 'date_day')
  final String dateDay;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  bool isExpanded;

  ContactMedicationReminder({
    required this.id,
    required this.contactMedicationId,
    required this.time,
    required this.dateDay,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    this.isExpanded = false,
  });

  factory ContactMedicationReminder.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicationReminderFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicationReminderToJson(this);

  @override
  String toString() {
    return 'ContactMedicationReminder{id: $id, contactMedicationId: $contactMedicationId, time: $time, dateDay: $dateDay, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, isExpanded: $isExpanded}';
  }
}
