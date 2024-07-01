import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tags.g.dart';
@JsonSerializable()
@Entity(tableName: 'tags', indices: [Index(value: ['parent_id', 'tag_type'])])
class Tags {
  @primaryKey
  @ColumnInfo(name: 'tag_id')
  @JsonKey(name: 'tag_id')
  final int? tagId;

  @ColumnInfo(name: 'name')
  @JsonKey(name: 'name')
  final String name;

  @ColumnInfo(name: 'url')
  @JsonKey(name: 'url')
  final String url;

  @ColumnInfo(name: 'parent_id')
  @JsonKey(name: 'parent_id')
  final int parentId;

  @ColumnInfo(name: 'tag_type')
  @JsonKey(name: 'tag_type')
  final String tagType;

  @ColumnInfo(name: 'created_date')
  @JsonKey(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_by')
  @JsonKey(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_by')
  @JsonKey(name: 'updated_by')
  final String updatedBy;

  Tags({
    this.tagId,
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
