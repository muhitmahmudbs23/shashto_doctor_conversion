import 'package:floor/floor.dart';

import '../entity/chat_history.dart';
import 'base_dao.dart';

@dao
abstract class ChatHistoryDao extends BaseDao<ChatHistory> {
  @Query('SELECT * FROM chat_history WHERE appointment_id = :appointmentId ORDER BY datetime(timestamp) DESC')
  Future<List<ChatHistory>> getChatHistory(int appointmentId);

  @Query('DELETE FROM chat_history WHERE id = :id')
  Future<void> deleteById(int id);

}
