import 'package:floor/floor.dart';
import '../entity/share.dart';
import 'base_dao.dart';

@dao
abstract class ShareDao extends BaseDao<Share> {
  @Query('SELECT * FROM share WHERE sender_revera_id = :reveraId ORDER BY datetime(created_date) DESC')
  Future<List<Share>> getShareListByReveraId(String reveraId);

  @Query('SELECT * FROM share WHERE receiver_revera_id = :reveraId AND is_accepted = 1 ORDER BY datetime(created_date) DESC')
  Future<List<Share>> getShareListReceivedByReveraId(String reveraId);

  @Query('SELECT * FROM share WHERE id = :shareId')
  Future<Share?> getShareById(int shareId);

  @Query('SELECT sharing_file FROM share WHERE id = :shareId')
  Future<String?> getSharePdfUrlById(int shareId);
}
