import 'package:floor/floor.dart';

@Entity(tableName: 'revera_message_history_table', indices: [Index(value: ['id'])])
class MessageHistory {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @ColumnInfo(name: 'profile_name')
  final String profileName;

  final String message;

  @ColumnInfo(name: 'date_time')
  final String dateTime;

  @ColumnInfo(name: 'timestamp')
  final int timestamp;

  MessageHistory({
    this.id,
    required this.contactAppointmentDetailsId,
    required this.profileName,
    required this.message,
    required this.dateTime,
    required this.timestamp,
  });

  @override
  String toString() {
    return 'MessageHistory{id: $id, contactAppointmentDetailsId: $contactAppointmentDetailsId, profileName: $profileName, message: $message, dateTime: $dateTime, timestamp: $timestamp}';
  }
}
