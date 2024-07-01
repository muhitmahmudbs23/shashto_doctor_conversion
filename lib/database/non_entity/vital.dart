import 'package:floor/floor.dart';

@entity
class Vital {
  @ColumnInfo(name: 'vital_id')
  final int? id;
  @ColumnInfo(name: 'name')
  final String? name;
  @ColumnInfo(name: 'short_name')
  final String? shortName;
  @ColumnInfo(name: 'description')
  final String? description;
  @ColumnInfo(name: 'unit')
  final String? unit;
  @ColumnInfo(name: 'url')
  final String? url;
  @ColumnInfo(name: 'image_list_path')
  final String? imageListPath;
  @ColumnInfo(name: 'image_details_path')
  final String? imageDetailsPath;

  Vital({
    this.id,
    this.name,
    this.shortName,
    this.description,
    this.unit,
    this.url,
    this.imageListPath,
    this.imageDetailsPath,
  });
}
