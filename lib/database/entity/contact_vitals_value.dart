import 'package:floor/floor.dart';
import 'contact_vitals.dart';

@Entity(
  tableName: 'contact_vitals_value',
  foreignKeys: [
    ForeignKey(
      childColumns: ['contact_vitals_id'],
      parentColumns: ['id'],
      entity: ContactVitals,
      onUpdate: ForeignKeyAction.cascade,
      onDelete: ForeignKeyAction.cascade,
    )
  ],
  indices: [
    Index(value: ['contact_medical_record_id'], unique: true),
    Index(value: ['contact_vitals_id']),
  ],
)
class ContactVitalsValue {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @ColumnInfo(name: 'contact_vitals_id')
  final int contactVitalsId;

  @ColumnInfo(name: 'vitals_value')
  final String vitalsValue;

  @ColumnInfo(name: 'vitals_datetime')
  final String vitalsDatetime;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  ContactVitalsValue({
    required this.id,
    required this.contactMedicalRecordId,
    required this.contactVitalsId,
    required this.vitalsValue,
    required this.vitalsDatetime,
    required this.createdDate,
    required this.updatedDate,
  });

  @override
  String toString() {
    return 'ContactVitalsValue{id: $id, contactMedicalRecordId: $contactMedicalRecordId, contactVitalsId: $contactVitalsId, vitalsValue: $vitalsValue, vitalsDatetime: $vitalsDatetime, createdDate: $createdDate, updatedDate: $updatedDate}';
  }
}
