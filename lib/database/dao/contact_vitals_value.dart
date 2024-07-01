import 'package:floor/floor.dart';
import '../entity/contact_vitals_value.dart';
import 'base_dao.dart';

@dao
abstract class ContactVitalsValueDao extends BaseDao<ContactVitalsValue> {

  @Query('SELECT * FROM contact_vitals_value WHERE contact_vitals_id = :contactVitalsId ORDER BY vitals_datetime DESC')
  Stream<List<ContactVitalsValue>> getDailyTestValueByContactVitalsId(int contactVitalsId);

  @Query('SELECT * FROM contact_vitals_value WHERE contact_vitals_id = :contactVitalsId ORDER BY vitals_datetime DESC')
  Future<List<ContactVitalsValue>> getVitalsValueByContactVitalsId(int contactVitalsId);

  @Query('SELECT * FROM contact_vitals_value WHERE contact_vitals_id = :contactVitalId AND vitals_datetime LIKE :startDate ORDER BY vitals_datetime DESC LIMIT 1')
  Future<ContactVitalsValue?> getDailyTestValueByDate(int contactVitalId, String startDate);
}
