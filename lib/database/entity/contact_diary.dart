import 'package:floor/floor.dart';

@Entity(tableName: 'contact_diary', indices: [Index(value: ['contact_id'])])
class ContactDairy {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'module_id')
  final int moduleId;

  @ColumnInfo(name: 'diary_datetime')
  final String diaryDatetime;

  @ColumnInfo(name: 'diary_notes')
  final String diaryNotes;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ContactDairy({
    required this.id,
    required this.contactId,
    required this.moduleId,
    required this.diaryDatetime,
    required this.diaryNotes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  @override
  String toString() {
    return 'ContactDairy{id: $id, contactId: $contactId, moduleId: $moduleId, diaryDatetime: $diaryDatetime, diaryNotes: $diaryNotes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
