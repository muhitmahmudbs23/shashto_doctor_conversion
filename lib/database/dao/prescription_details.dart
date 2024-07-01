import 'package:floor/floor.dart';
import '../non_entity/prescription_details.dart';
import 'base_dao.dart';

@dao
abstract class PrescriptionDetailsDao extends BaseDao<PrescriptionDetails> {
  @Query(
      'SELECT doctor_report.*, doctor_prescription.* FROM doctor_report, doctor_prescription '
      'WHERE doctor_report.contact_appointment_details_id = :appointmentDetailsId AND doctor_report.id == doctor_prescription.doctor_report_id')
  Future<PrescriptionDetails?> getPrescriptionDetails(int appointmentDetailsId);
}
