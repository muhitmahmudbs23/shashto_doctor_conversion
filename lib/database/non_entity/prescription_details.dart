
import 'package:floor/floor.dart';

@entity
class PrescriptionDetails {
   @primaryKey
    @ColumnInfo(name : "id")
  final int id;

  @ColumnInfo(name : "follow_up_date")
  final String followUpDate;
  @ColumnInfo(name : "presenting_complaints")
  final String presentingComplaints;
  @ColumnInfo(name : "prior_medical_conditions")
  final String priorMedicalConditions;
  @ColumnInfo(name : "allergies")
  final String allergies;
  @ColumnInfo(name : "medicines")
  final String medicines;
  @ColumnInfo(name : "diagnosis")
  final String diagnosis;
  @ColumnInfo(name : "investigations")
  final String investigations;
  @ColumnInfo(name : "treatment_plan")
  final String treatmentPlan;
  @ColumnInfo(name : "additional_notes")
  final String additionalNotes;
  @ColumnInfo(name : "contact_appointment_details_id")
  final int contactAppointmentDetailsId;
  @ColumnInfo(name : "file_url")
  final String fileUrl;
  @ColumnInfo(name : "signed_file_url")
  final String signedFileUrl;
  @ColumnInfo(name : "doctor_report_id")
  final int doctorReportId;
  @ColumnInfo(name : "status")
  final bool status;
  @ColumnInfo(name : "is_signed")
  final bool isSigned;
  @ColumnInfo(name : "updated_date")
  final String updatedDate;

  PrescriptionDetails({
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
    required this.fileUrl,
    required this.signedFileUrl,
    required this.doctorReportId,
    required this.status,
    required this.isSigned,
    required this.updatedDate,
  });

  @override
  String toString() {
    return 'PrescriptionDetails{id: $id, followUpDate: $followUpDate, presentingComplaints: $presentingComplaints, priorMedicalConditions: $priorMedicalConditions, allergies: $allergies, medicines: $medicines, diagnosis: $diagnosis, investigations: $investigations, treatmentPlan: $treatmentPlan, additionalNotes: $additionalNotes, contactAppointmentDetailsId: $contactAppointmentDetailsId, fileUrl: $fileUrl, signedFileUrl: $signedFileUrl, doctorReportId: $doctorReportId, status: $status, isSigned: $isSigned, updatedDate: $updatedDate}';
  }
}
