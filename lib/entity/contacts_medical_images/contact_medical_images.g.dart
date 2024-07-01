// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_medical_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactMedicalImages _$ContactMedicalImagesFromJson(
        Map<String, dynamic> json) =>
    ContactMedicalImages(
      id: (json['id'] as num).toInt(),
      contactMedicalImagesTypeId:
          (json['contact_medical_images_type_id'] as num).toInt(),
      imagePath: json['image_path'] as String,
      reportType: json['report_type'] as String,
      reportSubType: json['report_sub_type'] as String,
      date: json['date'] as String,
      isOcrEnabled: json['is_ocr_enabled'] as bool,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
      imageBase64String: json['imageBase64String'] as String?,
      ocrString: json['ocrString'] as String?,
    );

Map<String, dynamic> _$ContactMedicalImagesToJson(
        ContactMedicalImages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_medical_images_type_id': instance.contactMedicalImagesTypeId,
      'image_path': instance.imagePath,
      'report_type': instance.reportType,
      'report_sub_type': instance.reportSubType,
      'date': instance.date,
      'is_ocr_enabled': instance.isOcrEnabled,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
      'imageBase64String': instance.imageBase64String,
      'ocrString': instance.ocrString,
    };
