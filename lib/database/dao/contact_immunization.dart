import 'package:floor/floor.dart';
import '../entity/contact_immunization.dart';
import 'base_dao.dart';

@dao
abstract class ContactImmunizationDao extends BaseDao<ContactImmunization> {
  @Query('SELECT * FROM contacts_immunization WHERE contact_id = :contactId')
  Stream<List<ContactImmunization>> getContactsImmunizationByContactId(int contactId);

  @Query('SELECT * FROM contacts_immunization WHERE id = :immunizationId')
  Future<ContactImmunization?> getContactImmunization(int immunizationId);
}
