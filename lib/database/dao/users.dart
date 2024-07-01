import 'package:floor/floor.dart';
import '../entity/users.dart';
import 'base_dao.dart';

@dao
abstract class UsersDao extends BaseDao<Users> {
  @Query('SELECT * FROM users WHERE id = :userId')
  Future<Users?> getUserById(int userId);
}
