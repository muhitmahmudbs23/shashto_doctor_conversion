
import 'package:json_annotation/json_annotation.dart';

part 'contact_appointments.g.dart';

@JsonSerializable()
class ContactAppointments {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'appointment_date')
  final String appointmentDate;

  @JsonKey(name: 'appointment_time')
  final String appointmentTime;

  @JsonKey(name: 'appointment_type')
  final String appointmentType;

  @JsonKey(name: 'provider_name')
  final String providerName;

  @JsonKey(name: 'institution_name')
  final String institutionName;

  @JsonKey(name: 'serial_no')
  final String serialNo;

  @JsonKey(name: 'notes')
  final String notes;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  @JsonKey(name: 'time_stamp')
  final int timeStamp;

  ContactAppointments({
    this.id,
    required this.contactId,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.appointmentType,
    required this.providerName,
    required this.institutionName,
    required this.serialNo,
    required this.notes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
    required this.timeStamp,
  });

  factory ContactAppointments.fromJson(Map<String, dynamic> json) =>
      _$ContactAppointmentsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactAppointmentsToJson(this);

  @override
  String toString() {
    return 'ContactAppointments{id: $id, contactId: $contactId, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, appointmentType: $appointmentType, providerName: $providerName, institutionName: $institutionName, serialNo: $serialNo, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy, timeStamp: $timeStamp}';
  }
}
