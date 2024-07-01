import 'package:floor/floor.dart';


@entity
class DailyTest {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'vitals_type_id')
  final int vitalsTypeId;

  @ColumnInfo(name: 'custom_vitals_type_id')
  final int customVitalsTypeId;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  @ColumnInfo(name: 'vital_id')
  final int? vitalId;
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

  DailyTest(
    this.id,
    this.contactId,
    this.vitalsTypeId,
    this.customVitalsTypeId,
    this.createdDate,
    this.createdBy,
    this.updatedDate,
    this.updatedBy,
    this.vitalId,
    this.name,
    this.shortName,
    this.description,
    this.unit,
    this.url,
    this.imageListPath,
    this.imageDetailsPath,
  );
}
