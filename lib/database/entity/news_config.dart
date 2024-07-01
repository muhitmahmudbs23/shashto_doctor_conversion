import 'package:floor/floor.dart';

@Entity(tableName: 'news_config')
class NewsConfig {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'url')
  final String url;

  @ColumnInfo(name: 'active')
  final bool active;

  NewsConfig({
    this.id,
    required this.name,
    required this.url,
    required this.active,
  });

  NewsConfig.withoutId({
    required this.name,
    required this.url,
    required this.active,
  }) : id = null;

  @override
  String toString() {
    return 'NewsConfig{id: $id, name: $name, url: $url, active: $active}';
  }
}

