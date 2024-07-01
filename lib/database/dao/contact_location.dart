import 'package:floor/floor.dart';
import '../entity/contact_location.dart';
import 'base_dao.dart';

@dao
abstract class ContactLocationDao extends BaseDao<ContactLocation> {
  @Query('SELECT country FROM contacts_location WHERE contact_id = :contactId')
  Future<String?> getContactCountry(int contactId);

  @Query('SELECT * FROM contacts_location WHERE contact_id = :contactId')
  Future<ContactLocation?> getContactLocation(int contactId);
}
