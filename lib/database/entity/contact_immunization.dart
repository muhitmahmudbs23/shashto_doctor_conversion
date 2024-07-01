import 'package:floor/floor.dart';

@Entity(tableName: 'contacts_immunization')
class ContactImmunization {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  final String name;

  final int dosage;

  final String date;

  @ColumnInfo(name: 'next_due_date')
  final String nextDueDate;

  @ColumnInfo(name: 'is_reminder_set')
  final bool isReminder;

  final String notes;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactImmunization{id: $id, contactId: $contactId, contactMedicalRecordId: $contactMedicalRecordId, name: $name, dosage: $dosage, date: $date, nextDueDate: $nextDueDate, isReminder: $isReminder, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
