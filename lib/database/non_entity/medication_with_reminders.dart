import 'package:floor/floor.dart';

import '../entity/contact_medication.dart';
import '../entity/contact_medicine_reminder.dart';

@entity
class MedicationWithReminders {
  
  final ContactMedication contactMedication;
  final List<ContactMedicationReminder> contactMedicationReminderList;

  MedicationWithReminders({
    required this.contactMedication,
    this.contactMedicationReminderList = const [],
  });
}
