import 'package:floor/floor.dart';
import '../entity/doctor_prescription.dart';
import 'base_dao.dart';

@dao
abstract class DoctorPrescriptionDao extends BaseDao<DoctorPrescription> {

  @Query('SELECT * FROM doctor_prescription')
  Future<List<DoctorPrescription>?> getDoctorPrescriptionList();
}
