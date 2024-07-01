import 'package:floor/floor.dart';
import '../entity/medicines.dart';
import 'base_dao.dart';

@dao
abstract class MedicineListDao extends BaseDao<Medicines> {
  @Query('SELECT * FROM medicines')
  Future<List<Medicines>> getAllMedicines();
}
