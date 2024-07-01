import 'package:floor/floor.dart';
import '../entity/contact_medicine_allergies.dart';
import 'base_dao.dart';

@dao
abstract class ContactMedicineAllergiesDao extends BaseDao<ContactMedicineAllergies> {
  @Query('SELECT * FROM contact_medicine_allergies WHERE contact_id = :contactId')
  Future<List<ContactMedicineAllergies>> getDrugAllergiesByContactId(int contactId);

  // The method for getting distinct LiveData is omitted because Floor does not directly support LiveData extensions like Room in Android.
}
