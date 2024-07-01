import 'package:json_annotation/json_annotation.dart';

part 'doctor_report.g.dart';

@JsonSerializable()
class DoctorReport {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'follow_up_date')
  final String followUpDate;

  @JsonKey(name: 'presenting_complaints')
  final String presentingComplaints;

  @JsonKey(name: 'prior_medical_conditions')
  final String priorMedicalConditions;

  @JsonKey(name: 'allergies')
  final String allergies;

  @JsonKey(name: 'medicines')
  final String medicines;

  @JsonKey(name: 'diagnosis')
  final String diagnosis;

  @JsonKey(name: 'investigations')
  final String investigations;

  @JsonKey(name: 'treatment_plan')
  final String treatmentPlan;

  @JsonKey(name: 'additional_notes')
  final String additionalNotes;

  @JsonKey(name: 'contact_appointment_details_id')
  final int contactAppointmentDetailsId;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_by')
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

  factory DoctorReport.fromJson(Map<String, dynamic> json) =>
      _$DoctorReportFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorReportToJson(this);

  @override
  String toString() {
    return 'DoctorReport{id: $id, followUpDate: $followUpDate, presentingComplaints: $presentingComplaints, priorMedicalConditions: $priorMedicalConditions, allergies: $allergies, medicines: $medicines, diagnosis: $diagnosis, investigations: $investigations, treatmentPlan: $treatmentPlan, additionalNotes: $additionalNotes, contactAppointmentDetailsId: $contactAppointmentDetailsId, createdDate: $createdDate, updatedDate: $updatedDate, createdBy: $createdBy, updatedBy: $updatedBy}';
  }
}

