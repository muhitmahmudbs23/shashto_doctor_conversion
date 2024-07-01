import 'package:floor/floor.dart';

@Entity(tableName: 'contact_medical_condition')
class ContactMedicalCondition {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  final String name;

  @ColumnInfo(name: 'year_of_diagnosis')
  final String yearOfDiagnosis;

  @ColumnInfo(name: 'tag_id')
  final int tagId;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactMedicalCondition{id: $id, contactId: $contactId, name: $name, yearOfDiagnosis: $yearOfDiagnosis, tagId: $tagId, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}

