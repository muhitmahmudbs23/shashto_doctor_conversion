import 'package:json_annotation/json_annotation.dart';

import '../call_history/call_history.dart';
import '../message_history/message_history.dart';

part 'contact_appointment_details.g.dart';

@JsonSerializable()
class ContactAppointmentDetails {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'appointment_id')
  final int appointmentId;

  @JsonKey(name: 'shashto_slot_id')
  final int shashtoSlotId;

  @JsonKey(name: 'share_file_id')
  final int shareFileId;

  @JsonKey(name: 'shashto_doc_id')
  final int shashtoDoctorId;

  @JsonKey(name: 'chat_history')
  final String chatHistory;

  @JsonKey(name: 'doctors_note')
  final String doctorsNote;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  @JsonKey(includeFromJson: true)
  List<CallHistory>? callHistoryList;

  @JsonKey(includeFromJson: true)
  List<MessageHistory>? messageHistoryList;

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
    this.callHistoryList,
    this.messageHistoryList,
  });

  factory ContactAppointmentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContactAppointmentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactAppointmentDetailsToJson(this);

  @override
  String toString() {
    return 'ContactAppointmentDetails{id: $id, appointmentId: $appointmentId, shashtoSlotId: $shashtoSlotId, shareFileId: $shareFileId, shashtoDoctorId: $shashtoDoctorId, chatHistory: $chatHistory, doctorsNote: $doctorsNote, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
