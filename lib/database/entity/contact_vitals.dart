import 'package:floor/floor.dart';

@Entity(
  tableName: 'contact_vitals',
  indices: [Index(value: ['contact_id'])],
)
class ContactVitals {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'vitals_type_id')
  final int vitalsTypeId;

  @ColumnInfo(name: 'custom_vitals_type_id')
  final int customVitalsTypeId;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactVitals{id: $id, contactId: $contactId, vitalsTypeId: $vitalsTypeId, customVitalsTypeId: $customVitalsTypeId, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}

