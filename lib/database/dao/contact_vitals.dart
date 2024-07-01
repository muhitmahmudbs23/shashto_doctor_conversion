import 'package:floor/floor.dart';
import '../entity/contact_vitals.dart';
import '../non_entity/daily_test.dart';
import 'base_dao.dart';

@dao
abstract class ContactVitalsDao extends BaseDao<ContactVitals> {

  @Query('SELECT contact_vitals.*, vitals.* FROM contact_vitals, vitals WHERE contact_vitals.contact_id = :contactId AND contact_vitals.vitals_type_id = vitals.vital_id')
  Future<List<DailyTest>> getDailyTestByContactId(int contactId);

  @Query('SELECT contact_vitals.*, vitals.* FROM contact_vitals, vitals WHERE contact_vitals.contact_id = :contactId AND contact_vitals.vitals_type_id = vitals.vital_id')
  Stream<List<DailyTest>> getDailyTestLiveByContactId(int contactId);

  @Query('SELECT contact_vitals.*, custom_vitals.* FROM contact_vitals, custom_vitals WHERE contact_vitals.contact_id = :contactId AND contact_vitals.custom_vitals_type_id = custom_vitals.vital_id')
  Future<List<DailyTest>> getCustomDailyTestByContactId(int contactId);
}
