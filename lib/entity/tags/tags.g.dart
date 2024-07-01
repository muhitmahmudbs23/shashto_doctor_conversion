// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      tagId: (json['tag_id'] as num).toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
      parentId: (json['parent_id'] as num).toInt(),
      tagType: json['tag_type'] as String,
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
      createdBy: json['created_by'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'tag_id': instance.tagId,
      'name': instance.name,
      'url': instance.url,
      'parent_id': instance.parentId,
      'tag_type': instance.tagType,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
