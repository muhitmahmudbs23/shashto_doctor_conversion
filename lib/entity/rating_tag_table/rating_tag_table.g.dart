// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_tag_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingTag _$RatingTagFromJson(Map<String, dynamic> json) => RatingTag(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$RatingTagToJson(RatingTag instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
