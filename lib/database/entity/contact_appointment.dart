import 'package:floor/floor.dart';

@Entity(tableName: 'contact_appointments', indices: [Index(value: ['contact_id'])])
class ContactAppointments {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'appointment_date')
  final String appointmentDate;

  @ColumnInfo(name: 'time_stamp')
  final int timeStamp;

  @ColumnInfo(name: 'appointment_time')
  final String appointmentTime;

  @ColumnInfo(name: 'appointment_type')
  final String appointmentType;

  @ColumnInfo(name: 'provider_name')
  final String providerName;

  @ColumnInfo(name: 'institution_name')
  final String institutionName;

  @ColumnInfo(name: 'serial_no')
  final String serialNo;

  final String notes;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ContactAppointments({
    required this.id,
    required this.contactId,
    required this.appointmentDate,
    required this.timeStamp,
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
  });

  @override
  String toString() {
    return 'ContactAppointments{id: $id, contactId: $contactId, appointmentDate: $appointmentDate, timeStamp: $timeStamp, appointmentTime: $appointmentTime, appointmentType: $appointmentType, providerName: $providerName, institutionName: $institutionName, serialNo: $serialNo, notes: $notes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
