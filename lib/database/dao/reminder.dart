import 'package:floor/floor.dart';
import '../entity/reminders.dart';
import 'base_dao.dart';

@dao
abstract class RemindersDao extends BaseDao<Reminders> {
  @Query('SELECT * FROM reminders WHERE actual_id = :actualId AND type = :type')
  Future<Reminders?> getReminder(int actualId, String type);

  @Query('SELECT * FROM reminders WHERE job_id = :jobId')
  Future<Reminders?> getReminderByJobId(int jobId);

  @Query(
    'SELECT DISTINCT reminders.* FROM reminders, contact_medication_reminder, contact_medication '
    'WHERE reminders.contact_id = :contactId AND '
    '((reminders.type = \'medication_reminder\' AND reminders.actual_id = contact_medication_reminder.id AND contact_medication_reminder.contact_medication_id = contact_medication.id AND '
    '((contact_medication.frequency = \'Daily\' AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Weekly\' AND contact_medication_reminder.date_day = :dayOfWeek AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Monthly\' AND contact_medication_reminder.date_day = :dayOfMonth AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Custom\' AND date(reminders.start_time) = date(:selectedDate)))) '
    'OR ((reminders.type = \'appointment_reminder\' OR reminders.type = \'immunization_reminder\') AND date(reminders.start_time) = date(:selectedDate))) '
    'ORDER BY time(reminders.only_time)'
  )
  Future<List<Reminders>> getReminderListForDay(
    int contactId,
    String selectedDate,
    String dayOfWeek,
    String dayOfMonth
  );

  @Query(
    'SELECT DISTINCT reminders.type FROM reminders, contact_medication_reminder, contact_medication '
    'WHERE reminders.contact_id = :contactId AND '
    '((reminders.type = \'medication_reminder\' AND reminders.actual_id = contact_medication_reminder.id AND contact_medication_reminder.contact_medication_id = contact_medication.id AND '
    '((contact_medication.frequency = \'Daily\' AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Weekly\' AND contact_medication_reminder.date_day = :dayOfWeek AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Monthly\' AND contact_medication_reminder.date_day = :dayOfMonth AND ((date(reminders.start_time) <= date(:selectedDate) AND date(reminders.end_time) >= date(:selectedDate)) OR (date(reminders.start_time) <= date(:selectedDate) AND reminders.is_ongoing_medicine = 1)))) '
    'OR (contact_medication.frequency = \'Custom\' AND date(reminders.start_time) = date(:selectedDate)))) '
    'OR ((reminders.type = \'appointment_reminder\' OR reminders.type = \'immunization_reminder\') AND date(reminders.start_time) = date(:selectedDate))) '
    'ORDER BY time(reminders.only_time)'
  )
  Future<List<String>> getReminderTypeList(
    int contactId,
    String selectedDate,
    String dayOfWeek,
    String dayOfMonth
  );
}
