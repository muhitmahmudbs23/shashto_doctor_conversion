import 'package:json_annotation/json_annotation.dart';

part 'message_history.g.dart';

@JsonSerializable()
class MessageHistory {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @JsonKey(name: 'profile_name')
  final String profileName;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'date_time')
  final String dateTime;

  @JsonKey(name: 'time_stamp')
  final int timestamp;

  int? messageType;

  MessageHistory({
    this.id,
    required this.contactAppointmentDetailsId,
    required this.profileName,
    required this.message,
    required this.dateTime,
    required this.timestamp,
    this.messageType,
  });

  factory MessageHistory.fromJson(Map<String, dynamic> json) =>
      _$MessageHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$MessageHistoryToJson(this);

  @override
  String toString() {
    return 'MessageHistory{id: $id, contactAppointmentDetailsId: $contactAppointmentDetailsId, profileName: $profileName, message: $message, dateTime: $dateTime, timestamp: $timestamp, messageType: $messageType}';
  }
}
