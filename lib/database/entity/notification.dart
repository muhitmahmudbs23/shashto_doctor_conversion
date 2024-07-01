import 'package:floor/floor.dart';

import '../converters/datetime_converter.dart';


@Entity(
  tableName: 'notification',
  indices: [Index(value: ['contact_id'])],
)
class Notification {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'type')
  final String type;

  @ColumnInfo(name: 'actual_id')
  final int actualId;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'start_time')
  final DateTime time;

  @ColumnInfo(name: 'taken')
  final bool taken;

  @ColumnInfo(name: 'latter')
  final bool latter;

  @ColumnInfo(name: 'seen')
  final bool seen;

  Notification({
    this.id,
    required this.contactId,
    required this.type,
    required this.actualId,
    required this.time,
    required this.taken,
    required this.latter,
    required this.seen,
  });

  @override
  String toString() {
    return 'Notification{id: $id, contactId: $contactId, type: $type, actualId: $actualId, time: $time, taken: $taken, latter: $latter, seen: $seen}';
  }
}

