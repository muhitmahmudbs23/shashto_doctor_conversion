import 'package:json_annotation/json_annotation.dart';

part 'tags.g.dart';

@JsonSerializable()
class Tags {
  @JsonKey(name: 'tag_id')
  final int tagId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'parent_id')
  final int parentId;

  @JsonKey(name: 'tag_type')
  final String tagType;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  Tags({
    required this.tagId,
    required this.name,
    required this.url,
    required this.parentId,
    required this.tagType,
    required this.createdDate,
    required this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}
