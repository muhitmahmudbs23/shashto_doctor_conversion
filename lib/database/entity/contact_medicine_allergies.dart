import 'package:floor/floor.dart';

@Entity(
  tableName: 'contact_medicine_allergies',
  indices: [Index(value: ['contact_id'])],
)
class ContactMedicineAllergies {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'medicine_id')
  final int medicineId;

  @ColumnInfo(name: 'generic_name')
  final String genericName;

  @ColumnInfo(name: 'notes')
  final String notes;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactMedicineAllergies{id: $id, contactId: $contactId, medicineId: $medicineId, genericName: $genericName, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
