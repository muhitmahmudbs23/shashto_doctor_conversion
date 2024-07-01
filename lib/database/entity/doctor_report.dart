import 'package:floor/floor.dart';

@Entity(tableName: 'doctor_report')
class DoctorReport {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'follow_up_date')
  final String followUpDate;

  @ColumnInfo(name: 'presenting_complaints')
  final String presentingComplaints;

  @ColumnInfo(name: 'prior_medical_conditions')
  final String priorMedicalConditions;

  @ColumnInfo(name: 'allergies')
  final String allergies;

  @ColumnInfo(name: 'medicines')
  final String medicines;

  @ColumnInfo(name: 'diagnosis')
  final String diagnosis;

  @ColumnInfo(name: 'investigations')
  final String investigations;

  @ColumnInfo(name: 'treatment_plan')
  final String treatmentPlan;

  @ColumnInfo(name: 'additional_notes')
  final String additionalNotes;

  @ColumnInfo(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  DoctorReport({
    required this.id,
    required this.followUpDate,
    required this.presentingComplaints,
    required this.priorMedicalConditions,
    required this.allergies,
    required this.medicines,
    required this.diagnosis,
    required this.investigations,
    required this.treatmentPlan,
    required this.additionalNotes,
    required this.contactAppointmentDetailsId,
    required this.createdDate,
    required this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
  });

  @override
  String toString() {
    return 'DoctorReport{id: $id, followUpDate: $followUpDate, presentingComplaints: $presentingComplaints, priorMedicalConditions: $priorMedicalConditions, allergies: $allergies, medicines: $medicines, diagnosis: $diagnosis, investigations: $investigations, treatmentPlan: $treatmentPlan, additionalNotes: $additionalNotes, contactAppointmentDetailsId: $contactAppointmentDetailsId, createdDate: $createdDate, updatedDate: $updatedDate, createdBy: $createdBy, updatedBy: $updatedBy}';
  }
}
