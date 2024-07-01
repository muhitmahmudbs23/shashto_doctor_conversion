import 'package:floor/floor.dart';

@Entity(
  tableName: 'contact_medication_reminder',
  indices: [Index(value: ['contact_medication_id'])],
)
class ContactMedicationReminder {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_medication_id')
  final int contactMedicationId;

  @ColumnInfo(name: 'time')
  final String time;

  @ColumnInfo(name: 'date_day')
  final String dateDay;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  @ignore
  final bool isExpanded;

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

  @override
  String toString() {
    return 'ContactMedicationReminder{id: $id, contactMedicationId: $contactMedicationId, time: $time, dateDay: $dateDay, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, isExpanded: $isExpanded}';
  }
}
