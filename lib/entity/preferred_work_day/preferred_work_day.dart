import 'package:json_annotation/json_annotation.dart';

part 'preferred_work_day.g.dart';

@JsonSerializable()
class PreferredWorkDay {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'week_day')
  final int weekDay;

  @JsonKey(name: 'shashto_doctor_id')
  final int shashtoDoctorId;

  @JsonKey(name: 'start_time')
  final String startTime;

  @JsonKey(name: 'end_time')
  final String endTime;

  PreferredWorkDay({
    required this.id,
    required this.weekDay,
    required this.shashtoDoctorId,
    required this.startTime,
    required this.endTime,
  });

  factory PreferredWorkDay.fromJson(Map<String, dynamic> json) =>
      _$PreferredWorkDayFromJson(json);

  Map<String, dynamic> toJson() => _$PreferredWorkDayToJson(this);

  @override
  String toString() {
    return 'PreferredWorkDay{id: $id, weekDay: $weekDay, shashtoDoctorId: $shashtoDoctorId, startTime: $startTime, endTime: $endTime}';
  }
}
