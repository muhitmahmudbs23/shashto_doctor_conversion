import 'package:floor/floor.dart';
import '../entity/vitals.dart';
import 'base_dao.dart';

@dao
abstract class VitalsDao extends BaseDao<Vitals> {
  @Query('SELECT * FROM vitals')
  Future<List<Vitals>> getAllVitals();

  @Query('SELECT * FROM vitals WHERE vitals.vitalId NOT IN (SELECT contactVitals.vitalsTypeId FROM contact_vitals WHERE contact_vitals.contactId = :contactId)')
  Future<List<Vitals>> getVitals(int contactId);
}
