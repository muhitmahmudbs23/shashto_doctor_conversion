import 'package:json_annotation/json_annotation.dart';

part 'chat_history.g.dart';

@JsonSerializable()
class ChatHistory {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'appointment_id')
  final int appointmentId;

  @JsonKey(name: 'sender_contact_id')
  final int senderContactId;

  @JsonKey(name: 'recipient_contact_id')
  final int recipientContactId;

  @JsonKey(name: 'sender_profile_name')
  final String senderProfileName;

  @JsonKey(name: 'recipient_profile_name')
  final String recipientProfileName;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'timestamp')
  final DateTime timestamp;

  ChatHistory({
    this.id,
    required this.appointmentId,
    required this.senderContactId,
    required this.recipientContactId,
    required this.senderProfileName,
    required this.recipientProfileName,
    required this.message,
    required this.timestamp,
  });

  factory ChatHistory.fromJson(Map<String, dynamic> json) => _$ChatHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ChatHistoryToJson(this);

  @override
  String toString() {
    return 'ChatHistory{id: $id, appointmentId: $appointmentId, senderContactId: $senderContactId, recipientContactId: $recipientContactId, senderProfileName: $senderProfileName, recipientProfileName: $recipientProfileName, message: $message, timestamp: $timestamp}';
  }
}
