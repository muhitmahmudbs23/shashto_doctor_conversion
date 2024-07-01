import 'package:json_annotation/json_annotation.dart';

part 'medicines.g.dart';

@JsonSerializable()
class Medicines {
  @JsonKey(name: 'medicine_id')
  final int id;

  @JsonKey(name: 'brand_name')
  final String brandName;

  @JsonKey(name: 'generic_name')
  final String genericName;

  @JsonKey(name: 'short_name')
  final String shortName;

  @JsonKey(name: 'company')
  final String company;

  @JsonKey(name: 'category')
  final String category;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'created_uid')
  final int createdUid;

  @JsonKey(name: 'updated_uid')
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

  factory Medicines.fromJson(Map<String, dynamic> json) =>
      _$MedicinesFromJson(json);

  Map<String, dynamic> toJson() => _$MedicinesToJson(this);

  @override
  String toString() {
    return 'Medicines{id: $id, brandName: $brandName, genericName: $genericName, shortName: $shortName, company: $company, category: $category, createdDate: $createdDate, updatedDate: $updatedDate, createdUid: $createdUid, updatedUid: $updatedUid}';
  }
}
