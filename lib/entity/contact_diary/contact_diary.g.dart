// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDiary _$ContactDiaryFromJson(Map<String, dynamic> json) => ContactDiary(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      moduleId: (json['module_id'] as num).toInt(),
      diaryDatetime: json['diary_datetime'] as String,
      diaryNotes: json['diary_notes'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactDiaryToJson(ContactDiary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'module_id': instance.moduleId,
      'diary_datetime': instance.diaryDatetime,
      'diary_notes': instance.diaryNotes,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
