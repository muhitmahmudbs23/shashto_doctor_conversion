import 'package:floor/floor.dart';

import '../entity/contact_appointment_details.dart';

@entity
class ReveraAppointmentDetails extends ContactAppointmentDetails {
  @ColumnInfo(name: 'notes')
  String? notes;

  @ColumnInfo(name: 'sharing_file')
  String? sharingFile;

  @ColumnInfo(name: 'life_style')
  bool? isLifeStyle;

  @ColumnInfo(name: 'next_of_kin')
  bool? isNextOfKin;

  @ColumnInfo(name: 'immunization_history')
  bool? isImmunizationHistory;

  @ColumnInfo(name: 'medical_conditions')
  bool? isMedicalConditions;

  @ColumnInfo(name: 'status')
  bool? sharingFileStatus;

  @ColumnInfo(name: 'contact_id')
  int? contactId;

  @ColumnInfo(name: 'name')
  String? name;

  @ColumnInfo(name: 'first_name')
  String? firstName;

  @ColumnInfo(name: 'last_name')
  String? lastName;

  @ColumnInfo(name: 'profile_name')
  String? profileName;

  @ColumnInfo(name: 'profile_photo')
  String? profilePhoto;

  @ColumnInfo(name: 'date')
  String? date;

  @ColumnInfo(name: 'appointment_date')
  String? appointmentDate;

  @ColumnInfo(name: 'time')
  String? time;

  @ColumnInfo(name: 'appointment_time')
  String? appointmentTime;

  @ColumnInfo(name: 'time_slot')
  String? timeSlot;

  @ColumnInfo(name: 'revera_id')
  String? reveraId;

  @ColumnInfo(name: 'time_stamp')
  int? timeStamp;

  ReveraAppointmentDetails({
    this.notes,
    this.sharingFile,
    this.isLifeStyle,
    this.isNextOfKin,
    this.isImmunizationHistory,
    this.isMedicalConditions,
    this.sharingFileStatus,
    this.contactId,
    this.name,
    this.firstName,
    this.lastName,
    this.profileName,
    this.profilePhoto,
    this.date,
    this.appointmentDate,
    this.time,
    this.appointmentTime,
    this.timeSlot,
    this.reveraId,
    this.timeStamp,
    required super.id,
    required super.appointmentId,
    required super.shashtoSlotId,
    required super.shareFileId,
    required super.shashtoDoctorId,
    required super.chatHistory,
    required super.doctorsNote,
    required super.createdDate,
    required super.createdBy,
    required super.updatedDate,
    required super.updatedBy,
  });
}
