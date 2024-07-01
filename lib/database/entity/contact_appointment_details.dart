import 'package:floor/floor.dart';

import 'call_history.dart';
import 'message_history.dart';

@Entity(tableName: 'contact_appointment_details', indices: [Index(value: ['appointment_id'])])
class ContactAppointmentDetails {
  @PrimaryKey(autoGenerate: true) 
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'appointment_id')
  final int appointmentId;

  @ColumnInfo(name: 'shashto_slot_id')
  final int shashtoSlotId;

  @ColumnInfo(name: 'share_file_id')
  final int shareFileId;

  @ColumnInfo(name: 'shashto_doc_id')
  final int shashtoDoctorId;

  @ColumnInfo(name: 'chat_history')
  final String chatHistory;

  @ColumnInfo(name: 'doctors_note')
  final String doctorsNote;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  @ignore
  final List<CallHistory> callHistoryList;

  @ignore
  final List<MessageHistory> messageHistoryList;

  ContactAppointmentDetails({
    required this.id,
    required this.appointmentId,
    required this.shashtoSlotId,
    required this.shareFileId,
    required this.shashtoDoctorId,
    required this.chatHistory,
    required this.doctorsNote,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    this.callHistoryList = const [],
    this.messageHistoryList = const [],
  });

  @override
  String toString() {
    return 'ContactAppointmentDetails{id: $id, appointmentId: $appointmentId, shashtoSlotId: $shashtoSlotId, shareFileId: $shareFileId, shashtoDoctorId: $shashtoDoctorId, chatHistory: $chatHistory, doctorsNote: $doctorsNote, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, callHistoryList: $callHistoryList, messageHistoryList: $messageHistoryList}';
  }

  
}
