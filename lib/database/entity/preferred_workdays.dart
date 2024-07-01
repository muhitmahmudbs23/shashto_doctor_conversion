import 'package:floor/floor.dart';

@Entity(tableName: 'preferred_work_day')
class PreferredWorkDay {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'week_day')
  final int weekDay;

  @ColumnInfo(name: 'shashto_doctor_id')
  final int shashtoDoctorId;

  @ColumnInfo(name: 'start_time')
  final String startTime;

  @ColumnInfo(name: 'end_time')
  final String endTime;

  PreferredWorkDay({
    required this.id,
    required this.weekDay,
    required this.shashtoDoctorId,
    required this.startTime,
    required this.endTime,
  });

  @override
  String toString() {
    return 'PreferredWorkDay{id: $id, weekDay: $weekDay, shashtoDoctorId: $shashtoDoctorId, startTime: $startTime, endTime: $endTime}';
  }
}

