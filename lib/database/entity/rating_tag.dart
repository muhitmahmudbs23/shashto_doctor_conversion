import 'package:floor/floor.dart';

@Entity(tableName: 'rating_tag_table')
class RatingTag {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'key')
  final String key;

  @ColumnInfo(name: 'value')
  final double value;

  RatingTag({
    required this.id,
    required this.key,
    required this.value,
  });

  int get getId => id;
  String get getKey => key;
  double get getValue => value;

  @override
  String toString() {
    return key;
  }
}

