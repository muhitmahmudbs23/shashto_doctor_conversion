import 'package:json_annotation/json_annotation.dart';

part 'rating_tag_table.g.dart';

@JsonSerializable()
class RatingTag {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'key')
  final String key;

  @JsonKey(name: 'value')
  final double value;

  RatingTag({
    required this.id,
    required this.key,
    required this.value,
  });

  factory RatingTag.fromJson(Map<String, dynamic> json) => _$RatingTagFromJson(json);

  Map<String, dynamic> toJson() => _$RatingTagToJson(this);

  @override
  String toString() {
    return 'RatingTag{id: $id, key: $key, value: $value}, key: $key, value: $value}';
  }
}
