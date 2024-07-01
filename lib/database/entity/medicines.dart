import 'package:floor/floor.dart';

@Entity(tableName: 'medicines')
class Medicines {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'brand_name')
  final String brandName;

  @ColumnInfo(name: 'generic_name')
  final String genericName;

  @ColumnInfo(name: 'short_name')
  final String shortName;

  @ColumnInfo(name: 'company')
  final String company;

  @ColumnInfo(name: 'category')
  final String category;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_uid')
  final int createdUid;

  @ColumnInfo(name: 'updated_uid')
  final int updatedUid;

  Medicines({
    required this.id,
    required this.brandName,
    required this.genericName,
    required this.shortName,
    required this.company,
    required this.category,
    required this.createdDate,
    required this.updatedDate,
    required this.createdUid,
    required this.updatedUid,
  });

  @override
  String toString() {
    return 'Medicines{id: $id, brandName: $brandName, genericName: $genericName, shortName: $shortName, company: $company, category: $category, createdDate: $createdDate, updatedDate: $updatedDate, createdUid: $createdUid, updatedUid: $updatedUid}';
  }
}
