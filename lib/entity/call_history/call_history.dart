import 'package:json_annotation/json_annotation.dart';

part 'call_history.g.dart';

@JsonSerializable()
class CallHistory {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @JsonKey(name: 'start_time')
  final String startTime;

  @JsonKey(name: 'end_time')
  final String endTime;

  @JsonKey(name: 'duration')
  final double duration;

  CallHistory({
    required this.id,
    required this.contactAppointmentDetailsId,
    required this.startTime,
    required this.endTime,
    required this.duration,
  });

  factory CallHistory.fromJson(Map<String, dynamic> json) => _$CallHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$CallHistoryToJson(this);

  @override
  String toString() {
    return 'CallHistory{id: $id, contactAppointmentDetailsId: $contactAppointmentDetailsId, startTime: $startTime, endTime: $endTime, duration: $duration}';
  }
}
