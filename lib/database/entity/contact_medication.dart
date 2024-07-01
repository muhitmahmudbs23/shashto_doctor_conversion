import 'package:floor/floor.dart';

@Entity(
  tableName: 'contact_medication',
  indices: [Index(value: ['contact_medical_record_id'])],
)
class ContactMedication {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'medicine_id')
  final int medicineId;

  @ColumnInfo(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @ColumnInfo(name: 'generic_name')
  final String genericName;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'medicine_type')
  final String medicineType;

  @ColumnInfo(name: 'no_of_quantity')
  final String noOfQuantity;

  @ColumnInfo(name: 'dosage')
  final int dosage;

  @ColumnInfo(name: 'duration')
  final int duration;

  @ColumnInfo(name: 'frequency')
  final String frequency;

  @ColumnInfo(name: 'start_date')
  final String startDate;

  @ColumnInfo(name: 'end_date')
  final String endDate;

  @ColumnInfo(name: 'is_reminder_set')
  final bool isReminder;

  @ColumnInfo(name: 'is_ongoing')
  final bool isOngoing;

  @ColumnInfo(name: 'type')
  final String type;

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

  // Prefixed Medicines properties
  @ColumnInfo(name: 'med_id')
  final int medId;

  @ColumnInfo(name: 'med_brand_name')
  final String medBrandName;

  @ColumnInfo(name: 'med_generic_name')
  final String medGenericName;

  @ColumnInfo(name: 'med_short_name')
  final String medShortName;

  @ColumnInfo(name: 'med_company')
  final String medCompany;

  @ColumnInfo(name: 'med_category')
  final String medCategory;

  @ColumnInfo(name: 'med_created_date')
  final String medCreatedDate;

  @ColumnInfo(name: 'med_updated_date')
  final String medUpdatedDate;

  @ColumnInfo(name: 'med_created_uid')
  final int medCreatedUid;

  @ColumnInfo(name: 'med_updated_uid')
  final int medUpdatedUid;

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
    required this.medId,
    required this.medBrandName,
    required this.medGenericName,
    required this.medShortName,
    required this.medCompany,
    required this.medCategory,
    required this.medCreatedDate,
    required this.medUpdatedDate,
    required this.medCreatedUid,
    required this.medUpdatedUid,
  });

  @override
  String toString() {
    return 'ContactMedication{id: $id, medicineId: $medicineId, contactMedicalRecordId: $contactMedicalRecordId, genericName: $genericName, name: $name, medicineType: $medicineType, noOfQuantity: $noOfQuantity, dosage: $dosage, duration: $duration, frequency: $frequency, startDate: $startDate, endDate: $endDate, isReminder: $isReminder, isOngoing: $isOngoing, type: $type, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, medId: $medId, medBrandName: $medBrandName, medGenericName: $medGenericName, medShortName: $medShortName, medCompany: $medCompany, medCategory: $medCategory, medCreatedDate: $medCreatedDate, medUpdatedDate: $medUpdatedDate, medCreatedUid: $medCreatedUid, medUpdatedUid: $medUpdatedUid}';
  }
}
