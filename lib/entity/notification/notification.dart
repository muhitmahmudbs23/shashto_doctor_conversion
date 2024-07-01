import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'actual_id')
  final int actualId;

  @JsonKey(name: 'start_time')
  final DateTime time;

  @JsonKey(name: 'taken')
  final bool taken;

  @JsonKey(name: 'latter')
  final bool latter;

  @JsonKey(name: 'seen')
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

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  @override
  String toString() {
    return 'Notification{id: $id, contactId: $contactId, type: $type, actualId: $actualId, time: $time, taken: $taken, latter: $latter, seen: $seen}';
  }
}
