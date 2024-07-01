import 'package:json_annotation/json_annotation.dart';

part 'revera_doctor_appointment_slots.g.dart';

@JsonSerializable()
class ReveraDoctorAppointmentSlots {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'shashto_doc_id')
  final int shashtoDocId;

  @JsonKey(name: 'slot_request_id')
  final int slotRequestId;

  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'time')
  final String time;

  @JsonKey(name: 'time_slot')
  final String timeSlot;

  @JsonKey(name: 'start_time')
  final String startTime;

  @JsonKey(name: 'end_time')
  final String endTime;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  @JsonKey(name: 'time_stamp')
  final int timeStamp;

  ReveraDoctorAppointmentSlots({
    required this.id,
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

  factory ReveraDoctorAppointmentSlots.fromJson(Map<String, dynamic> json) =>
      _$ReveraDoctorAppointmentSlotsFromJson(json);

  Map<String, dynamic> toJson() => _$ReveraDoctorAppointmentSlotsToJson(this);

  @override
  String toString() {
    return 'ReveraDoctorAppointmentSlots{id: $id, shashtoDocId: $shashtoDocId, slotRequestId: $slotRequestId, date: $date, time: $time, timeSlot: $timeSlot, startTime: $startTime, endTime: $endTime, status: $status, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, timeStamp: $timeStamp}';
  }
}
