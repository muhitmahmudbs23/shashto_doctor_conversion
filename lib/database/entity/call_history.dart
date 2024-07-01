import 'package:floor/floor.dart';

@Entity(tableName: 'revera_call_history_table', indices: [Index(value: ['id'])])
class CallHistory {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @ColumnInfo(name: 'start_time')
  final String startTime;

  @ColumnInfo(name: 'end_time')
  final String endTime;

  @ColumnInfo(name: 'duration')
  final double duration;

  CallHistory({
    required this.id,
    required this.contactAppointmentDetailsId,
    required this.startTime,
    required this.endTime,
    required this.duration,
  });

  @override
  String toString() {
    return 'CallHistory{id: $id, contactAppointmentDetailsId: $contactAppointmentDetailsId, startTime: $startTime, endTime: $endTime, duration: $duration}';
  }
}
