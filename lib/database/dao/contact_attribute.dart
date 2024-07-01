import 'package:floor/floor.dart';
import '../entity/contacts_attribute.dart';
import 'base_dao.dart';

@dao
abstract class ContactsAttributeDao extends BaseDao<ContactsAttribute> {
  @Query('SELECT * FROM contacts_attribute WHERE contact_id = :contactId ORDER BY order_number')
  Future<List<ContactsAttribute>> getContactsAttributeById(int contactId);

  @Query('SELECT contacts_attribute.attribute_value FROM contacts_attribute WHERE contacts_attribute.contact_id = :childContactId AND contacts_attribute.attribute_key = "birth_weight"')
  Future<String?> getChildBirthWeight(int childContactId);

  @Query('SELECT contacts_attribute.attribute_value FROM contacts_attribute WHERE contacts_attribute.contact_id = :childContactId AND contacts_attribute.attribute_key = "type_of_delivery"')
  Future<String?> getChildDeliveryType(int childContactId);

  @Query('SELECT * FROM contacts_attribute WHERE contact_id = :contactId')
  Future<List<ContactsAttribute>> getContactsAttributeListById(int contactId);
}
