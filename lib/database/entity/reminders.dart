import 'package:floor/floor.dart';

import '../converters/date_converter.dart';
import '../converters/datetime_converter.dart';
import '../converters/time_converter.dart';


@Entity(tableName: 'reminders', indices: [
  Index(value: ['contact_id'])
])
class Reminders {
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
  final DateTime startDateTime;

  @TypeConverters([DateConverter])
  @ColumnInfo(name: 'only_date')
  final DateTime onlyDate;

  @TypeConverters([TimeConverter])
  @ColumnInfo(name: 'only_time')
  final DateTime onlyTime;

  @TypeConverters([DateTimeConverter])
  @ColumnInfo(name: 'end_time')
  final DateTime endTime;

  @ColumnInfo(name: 'is_ongoing_medicine')
  final bool isOngoingMedicine;

  @ColumnInfo(name: 'job_id')
  final int jobId;

  Reminders({
    this.id,
    required this.contactId,
    required this.type,
    required this.actualId,
    required this.startDateTime,
    required this.onlyDate,
    required this.onlyTime,
    required this.endTime,
    required this.isOngoingMedicine,
    required this.jobId,
  });

  @override
  String toString() {
    return 'Reminders{id: $id, contactId: $contactId, type: $type, actualId: $actualId, startDateTime: $startDateTime, onlyDate: $onlyDate, onlyTime: $onlyTime, endTime: $endTime, isOngoingMedicine: $isOngoingMedicine, jobId: $jobId}';
  }
}