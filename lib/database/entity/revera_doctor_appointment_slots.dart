import 'package:floor/floor.dart';



@Entity(tableName: 'revera_doctor_appointment_slots')
class ReveraDoctorAppointmentSlots {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'shashto_doc_id')
  final int shashtoDocId;

  @ColumnInfo(name: 'slot_request_id')
  final int slotRequestId;

  @ColumnInfo(name: 'date')
  final String date;

  @ColumnInfo(name: 'time')
  final String time;

  @ColumnInfo(name: 'time_slot')
  final String timeSlot;

  @ColumnInfo(name: 'start_time')
  final String startTime;

  @ColumnInfo(name: 'end_time')
  final String endTime;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  @ColumnInfo(name: 'time_stamp')
  final int timeStamp;

  ReveraDoctorAppointmentSlots({
    this.id,
    required this.shashtoDocId,
    required this.slotRequestId,
    required this.date,
    required this.time,
    required this.timeSlot,
    required this.startTime,
    required this.endTime,
    required this.status,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    required this.timeStamp,
  });

  @override
  String toString() {
    return 'ReveraDoctorAppointmentSlots{id: $id, shashtoDocId: $shashtoDocId, slotRequestId: $slotRequestId, date: $date, time: $time, timeSlot: $timeSlot, startTime: $startTime, endTime: $endTime, status: $status, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, timeStamp: $timeStamp}';
  }
}
