import 'package:floor/floor.dart';

@Entity(tableName: 'tags', indices: [Index(value: ['parent_id', 'tag_type'])])
class Tags {
  @primaryKey
  @ColumnInfo(name: 'tag_id')
  final int? tagId;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'url')
  final String url;

  @ColumnInfo(name: 'parent_id')
  final int parentId;

  @ColumnInfo(name: 'tag_type')
  final String tagType;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_by')
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
}
