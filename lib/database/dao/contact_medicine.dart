import 'package:floor/floor.dart';

import '../entity/contact_medication.dart';
import '../entity/contact_medicine_reminder.dart';
import '../non_entity/medication_with_reminders.dart';
import 'base_dao.dart';


@dao
abstract class ContactMedicationDao extends BaseDao<ContactMedication> {
  // Helper method to query based on contact ID and type
  @Query(
      'SELECT * FROM contact_medication WHERE contact_medical_record_id IN (SELECT id FROM contacts_medical_record WHERE contact_id = :contactId) AND type = :type')
  Future<List<ContactMedication>> _getMedicationsByContactIdAndType(
      int contactId, String type);

  Future<List<MedicationWithReminders>> getMedicationWithRemindersByContactId(
      int contactId) async {
    final medications = await _getMedicationsByContactIdAndType(contactId, 'medication');
    return Future.wait(medications.map(_getMedicationWithReminders).toList());
  }

  Future<List<MedicationWithReminders>> getSupplementWithRemindersByContactId(
      int contactId) async {
    final medications = await _getMedicationsByContactIdAndType(contactId, 'supplements');
    return Future.wait(medications.map(_getMedicationWithReminders).toList());
  }

  @Query(
      'SELECT * FROM contact_medication WHERE id = :contactMedicationId')
  Future<ContactMedication?> getContactMedicationById(
      int contactMedicationId);

  @Query(
      'SELECT * FROM contact_medication WHERE id IN (SELECT contact_medication_id FROM contact_medication_reminder WHERE id = :contactMedicationReminderId)')
  Future<ContactMedication?> getContactMedicationByContactMedicationReminderId(
      int contactMedicationReminderId);

  Future<MedicationWithReminders?> getMedicationWithRemindersByContactMedicationReminderId(
      int contactMedicationReminderId) async {
    final contactMedication = await getContactMedicationByContactMedicationReminderId(contactMedicationReminderId);
    if (contactMedication == null) return null;
    return _getMedicationWithReminders(contactMedication);
  }

  Future<MedicationWithReminders?> getMedicationWithRemindersById(
      int contactMedicationId) async {
    final contactMedication = await getContactMedicationById(contactMedicationId);
    if (contactMedication == null) return null;
    return _getMedicationWithReminders(contactMedication);
  }

  // Helper method to fetch reminders by medication ID
  @Query(
      'SELECT * FROM contact_medication_reminder WHERE contact_medication_id = :contactMedicationId')
  Future<List<ContactMedicationReminder>> findRemindersByContactMedicationId(
      int contactMedicationId);

  // Helper method to construct MedicationWithReminders
  Future<MedicationWithReminders> _getMedicationWithReminders(
      ContactMedication contactMedication) async {
    final reminders = await findRemindersByContactMedicationId(contactMedication.id);
    return MedicationWithReminders(
        contactMedication: contactMedication,
        contactMedicationReminderList: reminders);
  }
}
