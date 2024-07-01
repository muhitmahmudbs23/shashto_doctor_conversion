import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../database/entity/tags.dart';



part 'tag_list.g.dart';

@JsonSerializable(explicitToJson: true)
@Entity(tableName: 'tag_list')
class TagList {
  @JsonKey(name: 'tags_list')
  final List<Tags> tagsList;

  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'status')
  final int status;

  TagList({
    required this.tagsList,
    required this.success,
    required this.status,
  });

  factory TagList.fromJson(Map<String, dynamic> json) => _$TagListFromJson(json);

  Map<String, dynamic> toJson() => _$TagListToJson(this);
}
