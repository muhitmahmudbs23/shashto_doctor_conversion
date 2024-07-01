import 'package:floor/floor.dart';

@Entity(tableName: 'vitals')
class Vitals {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'vital_id')
  final int? id;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'short_name')
  final String shortName;

  @ColumnInfo(name: 'description')
  final String description;

  @ColumnInfo(name: 'unit')
  final String unit;

  @ColumnInfo(name: 'url')
  final String url;

  @ColumnInfo(name: 'image_list_path')
  final String imageListPath;

  @ColumnInfo(name: 'image_details_path')
  final String imageDetailsPath;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  Vitals({
    this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.unit,
    required this.url,
    required this.imageListPath,
    required this.imageDetailsPath,
    required this.createdDate,
    required this.updatedDate,
  });
}
