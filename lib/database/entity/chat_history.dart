import 'package:floor/floor.dart';
import '../converters/datetime_converter.dart';

@Entity(tableName: 'chat_history', indices: [Index(value: ['appointment_id'])])
class ChatHistory {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'appointment_id')
  final int appointmentId;

  @ColumnInfo(name: 'sender_contact_id')
  final int senderContactId;

  @ColumnInfo(name: 'recipient_contact_id')
  final int recipientContactId;

  @ColumnInfo(name: 'sender_profile_name')
  final String senderProfileName;

  @ColumnInfo(name: 'recipient_profile_name')
  final String recipientProfileName;

  @ColumnInfo(name: 'message')
  final String message;

  
  @TypeConverters([DateTimeConverter])
  final DateTime timestamp;

  ChatHistory({
    required this.id,
    required this.appointmentId,
    required this.senderContactId,
    required this.recipientContactId,
    required this.senderProfileName,
    required this.recipientProfileName,
    required this.message,
    required this.timestamp,
  });

  @override
  String toString() {
    return 'ChatHistory{id: $id, appointmentId: $appointmentId, senderContactId: $senderContactId, recipientContactId: $recipientContactId, senderProfileName: $senderProfileName, recipientProfileName: $recipientProfileName, message: $message, timestamp: $timestamp}';
  }
}
