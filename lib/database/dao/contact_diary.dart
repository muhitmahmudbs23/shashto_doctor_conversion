import 'package:floor/floor.dart';
import '../entity/contact_diary.dart';
import 'base_dao.dart';

@dao
abstract class ContactDairyDao extends BaseDao<ContactDairy> {

  @Query('SELECT * FROM contact_diary WHERE contact_id = :contactId')
  Future<List<ContactDairy>> getContactDairy(int contactId);

  // Stream<List<ContactDairy>> getContactDairyDistinct(int contactId) {
  //   return getContactDairy(contactId).distinct();
  // }
}
