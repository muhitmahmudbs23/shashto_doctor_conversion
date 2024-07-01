import 'package:json_annotation/json_annotation.dart';

part 'custom_vitals.g.dart';

@JsonSerializable()
class CustomVitals {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'short_name')
  final String shortName;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'unit')
  final String unit;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'image_list_path')
  final String imageListPath;

  @JsonKey(name: 'image_details_path')
  final String imageDetailsPath;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  CustomVitals({
    required this.id,
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

  factory CustomVitals.fromJson(Map<String, dynamic> json) => _$CustomVitalsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomVitalsToJson(this);

  @override
  String toString() {
    return 'CustomVitals{id: $id, name: $name, shortName: $shortName, description: $description, unit: $unit, url: $url, imageListPath: $imageListPath, imageDetailsPath: $imageDetailsPath, createdDate: $createdDate, updatedDate: $updatedDate}';
  }
}
