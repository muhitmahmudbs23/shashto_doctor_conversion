import 'package:floor/floor.dart';
import '../entity/doctor_report.dart';
import '../non_entity/prescription_details.dart';
import 'base_dao.dart';

@dao
abstract class DoctorReportDao extends BaseDao<DoctorReport> {

  @Query('SELECT * FROM doctor_report')
  Future<List<DoctorReport>?> getDoctorReportList();

  @Query('''
    SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id, 
           doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id 
    FROM doctor_report, doctor_prescription 
    WHERE doctor_report.id = :doctorReportId 
      AND doctor_report.contact_appointment_details_id = :appointmentDetailsId 
      AND doctor_report.id = doctor_prescription.doctor_report_id
  ''')
  Future<PrescriptionDetails?> getPrescriptionDetails(int appointmentDetailsId, int doctorReportId);

  @Query('''
    SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id, 
           doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id, doctor_prescription.updated_date as updated_date 
    FROM doctor_report, doctor_prescription 
    WHERE doctor_report.contact_appointment_details_id = :appointmentDetailsId 
      AND doctor_report.id = doctor_prescription.doctor_report_id 
      AND doctor_prescription.is_signed = :isSigned 
    ORDER BY doctor_report.id DESC
  ''')
  Future<PrescriptionDetails?> getPrescriptionDetailsByAppointmentDetailsId(int appointmentDetailsId, bool isSigned);

  @Query('''
    SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id, 
           doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id, doctor_prescription.updated_date as updated_date 
    FROM doctor_report, doctor_prescription 
    WHERE doctor_report.id = doctor_prescription.doctor_report_id 
      AND doctor_prescription.is_signed = :isSigned 
    ORDER BY doctor_report.id DESC
  ''')
  Future<List<PrescriptionDetails>> getAllPrescriptionByStatus(bool isSigned);
}
