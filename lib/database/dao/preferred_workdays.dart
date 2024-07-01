import 'package:floor/floor.dart';
import '../entity/preferred_workdays.dart';
import 'base_dao.dart';

@dao
abstract class PreferredWorkDayDao extends BaseDao<PreferredWorkDay> {
  @Query('SELECT * FROM preferred_work_day')
  Future<List<PreferredWorkDay>> getPreferredWorkDays();

  @Query('SELECT * FROM preferred_work_day WHERE shashto_doctor_id = :doctorId ORDER BY week_day ASC')
  Future<List<PreferredWorkDay>> getPreferredWorkDaysByDoctorId(int doctorId);
}
