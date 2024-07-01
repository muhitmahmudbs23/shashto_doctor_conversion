import 'package:json_annotation/json_annotation.dart';

part 'reminders.g.dart';

@JsonSerializable()
class Reminders {
  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'actual_id')
  final int actualId;

  @JsonKey(name: 'start_time')
  final DateTime startDateTime;

  @JsonKey(name: 'only_date')
  final DateTime onlyDate;

  @JsonKey(name: 'only_time')
  final DateTime onlyTime;

  @JsonKey(name: 'end_time')
  final DateTime endTime;

  @JsonKey(name: 'is_ongoing_medicine')
  final bool isOngoingMedicine;

  @JsonKey(name: 'job_id')
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

  factory Reminders.fromJson(Map<String, dynamic> json) =>
      _$RemindersFromJson(json);

  Map<String, dynamic> toJson() => _$RemindersToJson(this);

  @override
  String toString() {
    return 'Reminders{id: $id, contactId: $contactId, type: $type, actualId: $actualId, startDateTime: $startDateTime, onlyDate: $onlyDate, onlyTime: $onlyTime, endTime: $endTime, isOngoingMedicine: $isOngoingMedicine, jobId: $jobId}';
  }
}
