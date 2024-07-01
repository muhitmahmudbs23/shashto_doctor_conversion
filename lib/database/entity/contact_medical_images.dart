import 'package:floor/floor.dart';

@Entity(
  tableName: 'contacts_medical_images',
  indices: [Index(value: ['contact_medical_images_type_id'])],
)
class ContactMedicalImages {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_medical_images_type_id')
  final int contactMedicalImagesTypeId;

  @ColumnInfo(name: 'image_path')
  final String imagePath;

  @ColumnInfo(name: 'report_type')
  final String reportType;

  @ColumnInfo(name: 'report_sub_type')
  final String reportSubType;

  final String date;

  @ColumnInfo(name: 'is_ocr_enabled')
  final bool isOcrEnabled;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  @ignore
  final String? imageBase64String;

  @ignore
  final String? ocrString;

  ContactMedicalImages({
    required this.id,
    required this.contactMedicalImagesTypeId,
    required this.imagePath,
    required this.reportType,
    required this.reportSubType,
    required this.date,
    required this.isOcrEnabled,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    this.imageBase64String,
    this.ocrString,
  });

  @override
  String toString() {
    return 'ContactMedicalImages{id: $id, contactMedicalImagesTypeId: $contactMedicalImagesTypeId, imagePath: $imagePath, reportType: $reportType, reportSubType: $reportSubType, date: $date, isOcrEnabled: $isOcrEnabled, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, imageBase64String: $imageBase64String, ocrString: $ocrString}';
  }
}
