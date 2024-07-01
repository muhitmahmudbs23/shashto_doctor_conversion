import 'package:floor/floor.dart';
import '../entity/contact_relationship.dart';
import '../non_entity/children.dart';
import '../non_entity/emergency_contacts.dart';
import 'base_dao.dart';

@dao
abstract class ContactRelationShipDao extends BaseDao<ContactRelationship> {
  @Query(
      'SELECT contacts.*, contact_relationship.relationship_type, contact_relationship.is_linked_profile, contact_address.address1 '
      'FROM contacts, contact_relationship, contact_address '
      'WHERE contact_relationship.contact_id = :contactId AND contacts.id = contact_relationship.related_contact_id AND contact_relationship.related_contact_id = contact_address.contact_id '
      'AND contact_relationship.is_emergency_contact = 1')
  Future<List<EmergencyContacts>> getEmergencyContactsByContactId(int contactId);

  @Query('SELECT * FROM contact_relationship WHERE related_contact_id = :relatedContactId')
  Future<ContactRelationship?> getContactRelationshipByRelatedContactId(int relatedContactId);

  @Query(
      'SELECT contacts.*, contact_relationship.relationship_type, contact_relationship.is_linked_profile '
      'FROM contacts, contact_relationship '
      'WHERE contact_relationship.contact_id = :contactId AND contacts.id = contact_relationship.related_contact_id AND contact_relationship.is_children = 1')
  Future<List<Children>> getChildrenContactsByContactId(int contactId);
}
