import 'package:json_annotation/json_annotation.dart';

part 'vitals.g.dart';

@JsonSerializable()
class Vitals {
  @JsonKey(name: 'vitals_type_id')
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

  Vitals({
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

  factory Vitals.fromJson(Map<String, dynamic> json) => _$VitalsFromJson(json);

  Map<String, dynamic> toJson() => _$VitalsToJson(this);
}
