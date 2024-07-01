import 'package:floor/floor.dart';
import '../entity/contacts.dart';
import '../non_entity/link_profile.dart';
import 'base_dao.dart';

@dao
abstract class ContactsDaoBackUp extends BaseDao<Contacts> {
  @Query('SELECT * FROM contacts WHERE id = :contactId')
  Future<Contacts?> getLiveContactById(int contactId);

  @Query('SELECT * FROM contacts WHERE id = :contactId')
  Future<Contacts?> getSingleContactById(int contactId);

  @Query('SELECT * FROM contacts WHERE id = :contactId')
  Future<Contacts?> getContactById(int contactId);

  @Query('SELECT have_children FROM contacts WHERE id = :contactId')
  Future<int?> haveChildren(int contactId);

  @Query(
      'SELECT DISTINCT contacts.* FROM contacts, contact_relationship WHERE contacts.id = :parentContactId OR (contact_relationship.contact_id = :parentContactId AND contact_relationship.is_linked_profile = 1 AND contacts.id = contact_relationship.related_contact_id) OR (contact_relationship.related_contact_id = :parentContactId AND contacts.id = contact_relationship.contact_id) ORDER BY contacts.id')
  Future<List<LinkProfile>> getLinkedProfiles(int parentContactId);

  @Query('SELECT no_of_children FROM contacts WHERE id = :contactId')
  Future<int> getContactChildCount(int contactId);
}
