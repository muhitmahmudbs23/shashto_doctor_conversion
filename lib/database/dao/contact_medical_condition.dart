import 'package:floor/floor.dart';
import '../entity/contact_medical_condition.dart';
import 'base_dao.dart';

@dao
abstract class ContactMedicalConditionDao extends BaseDao<ContactMedicalCondition> {
  @Query('SELECT * FROM contact_medical_condition WHERE contact_id = :contactId ORDER BY id DESC')
  Future<List<ContactMedicalCondition>> getContactsMedicalConditionById(int contactId);

  // Note: LiveData and Distinct functionality can be implemented using streams in Flutter.
}

