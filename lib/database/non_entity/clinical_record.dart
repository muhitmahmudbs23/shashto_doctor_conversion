import 'package:floor/floor.dart';

import '../entity/contact_medical_records.dart';

@entity
class ClinicalRecord extends ContactMedicalRecord {
  static const int ADD_ITEM = 0;
  static const int ITEM = 1;

  @ColumnInfo(name: "contacts_medical_images_type_id")
  int? contactsMedicalImagesTypeId;
  @ColumnInfo(name: "report_type")
  int? reportType;
  @ColumnInfo(name: "report_sub_type")
  int? reportSubType;
  @ignore
  int itemType;

  ClinicalRecord({
    required this.contactsMedicalImagesTypeId,
    required this.reportType,
    required this.reportSubType,
    this.itemType = ADD_ITEM,
    required super.id,
    required super.contactId,
    required super.moduleId,
    required super.institutionName,
    required super.providerName,
    required super.recordDate,
    required super.notes,
    required super.customReportName,
    required super.createdDate,
    required super.createdBy,
    required super.updatedDate,
    required super.updatedBy,
  });
}
