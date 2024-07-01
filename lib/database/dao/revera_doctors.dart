import 'package:floor/floor.dart';
import '../entity/revera_doctors.dart';
import 'base_dao.dart';

@dao
abstract class ReveraDoctorsDao extends BaseDao<ReveraDoctors> {
  @Query('SELECT * FROM revera_doctors WHERE id = :id')
  Future<ReveraDoctors?> getReveraDoctorById(int id);

  @Query('SELECT name FROM revera_doctors WHERE contact_id = :contactId')
  Future<String?> getReveraDoctorName(int contactId);

  @Query('SELECT * FROM revera_doctors WHERE contact_id = :contactId')
  Future<ReveraDoctors?> getDoctorByContactId(int contactId);
}
