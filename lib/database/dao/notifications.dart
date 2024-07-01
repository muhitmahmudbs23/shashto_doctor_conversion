import 'package:floor/floor.dart';
import '../entity/notification.dart';
import 'base_dao.dart';

@dao
abstract class NotificationDao extends BaseDao<Notification> {
  @Query('SELECT * FROM notification WHERE contact_id = :contactId ORDER BY start_time DESC')
  Future<List<Notification>> getNotificationsByContactId(int contactId);

  @Query('SELECT COUNT(id) FROM notification WHERE contact_id = :contactId AND seen = 0')
  Future<int?> getUnSeenNotificationCount(int contactId);

  @Query('SELECT * FROM notification WHERE contact_id = :contactId ORDER BY start_time DESC')
  Future<List<Notification>> getNotificationsList(int contactId);

  @Query('SELECT COUNT(id) FROM notification WHERE contact_id = :contactId AND seen = 0')
  Future<int?> getNotificationCount(int contactId);

  @Query('SELECT * FROM notification WHERE actual_id = :actualId AND type = :type')
  Future<List<Notification>> getNotificationsListByActualId(int actualId, String type);

  @Query('SELECT * FROM notification WHERE actual_id = :actualId AND type = :type')
  Future<Notification?> getNotificationByActualId(int actualId, String type);
}
