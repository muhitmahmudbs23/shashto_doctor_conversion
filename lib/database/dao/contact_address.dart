import 'package:floor/floor.dart';
import '../entity/contact_address.dart';
import 'base_dao.dart';

@dao
abstract class ContactAddressDao extends BaseDao<ContactAddress> {
  @Query('SELECT * FROM contact_address WHERE contact_id = :contactId')
  Future<ContactAddress?> getAddressByContactId(int contactId);

  @Query('SELECT * FROM contact_address WHERE contact_id = :contactId')
  Future<ContactAddress?> getContactAddressByContactId(int contactId);

  @Query('SELECT * FROM contact_address WHERE contact_id = :contactId')
  Stream<ContactAddress?> getLiveContactAddressByContactId(int contactId);

  Future<ContactAddress?> getContactAddressByContactIdDistinct(int contactId) async {
    return getLiveContactAddressByContactId(contactId).distinct((previous, next) => previous == next).first;
  }
}
