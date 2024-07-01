// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagList _$TagListFromJson(Map<String, dynamic> json) => TagList(
      tagsList: (json['tags_list'] as List<dynamic>)
          .map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$TagListToJson(TagList instance) => <String, dynamic>{
      'tags_list': instance.tagsList.map((e) => e.toJson()).toList(),
      'success': instance.success,
      'status': instance.status,
    };
