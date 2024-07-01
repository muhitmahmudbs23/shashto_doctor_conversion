import 'package:json_annotation/json_annotation.dart';

part 'contact_medical_images.g.dart';

@JsonSerializable()
class ContactMedicalImages {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_medical_images_type_id')
  final int contactMedicalImagesTypeId;

  @JsonKey(name: 'image_path')
  final String imagePath;

  @JsonKey(name: 'report_type')
  final String reportType;

  @JsonKey(name: 'report_sub_type')
  final String reportSubType;

  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'is_ocr_enabled')
  final bool isOcrEnabled;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;
 
  String? imageBase64String;

  String? ocrString;

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

  factory ContactMedicalImages.fromJson(Map<String, dynamic> json) =>
      _$ContactMedicalImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ContactMedicalImagesToJson(this);

  @override
  String toString() {
    return 'ContactMedicalImages{id: $id, contactMedicalImagesTypeId: $contactMedicalImagesTypeId, imagePath: $imagePath, reportType: $reportType, reportSubType: $reportSubType, date: $date, isOcrEnabled: $isOcrEnabled, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, imageBase64String: $imageBase64String, ocrString: $ocrString}';
  }
}
