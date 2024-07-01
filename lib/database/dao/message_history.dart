import 'package:floor/floor.dart';
import '../entity/message_history.dart';
import 'base_dao.dart';

@dao
abstract class MessageHistoryDao extends BaseDao<MessageHistory> {
  @Query('SELECT * FROM revera_message_history_table WHERE contact_appointment_details_id = :appointmentDetailsId ORDER BY datetime(timestamp) DESC')
  Future<List<MessageHistory>> getMessageHistory(int appointmentDetailsId);
}

