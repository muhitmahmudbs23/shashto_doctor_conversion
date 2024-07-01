import 'package:json_annotation/json_annotation.dart';

part 'news_config.g.dart';

@JsonSerializable()
class NewsConfig {
  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'active')
  final bool active;

  NewsConfig({
    this.id,
    required this.name,
    required this.url,
    required this.active,
  });

  factory NewsConfig.fromJson(Map<String, dynamic> json) => _$NewsConfigFromJson(json);

  Map<String, dynamic> toJson() => _$NewsConfigToJson(this);

  @override
  String toString() {
    return 'NewsConfig{id: $id, name: $name, url: $url, active: $active}';
  }
}
