import 'package:floor/floor.dart';
import '../entity/custom_vitals.dart';
import 'base_dao.dart';

@dao
abstract class CustomVitalsDao extends BaseDao<CustomVitals> {

  @Query('SELECT * FROM custom_vitals WHERE vital_id = :customVitalId')
  Future<CustomVitals?> getCustomVitals(int customVitalId);

  // Uncomment and implement if needed
  // @Query('SELECT custom_vitals.name FROM custom_vitals, contact_vitals WHERE contact_vitals.id = :contactVitalsId AND contact_vitals.custom_vitals_type_id = custom_vitals.vital_id')
  // Future<String?> getCustomVitalsName(int contactVitalsId);
}
