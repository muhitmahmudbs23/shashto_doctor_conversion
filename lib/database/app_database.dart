import 'package:floor/floor.dart';
import 'package:shashto_doctor_conversion/database/entity/contact_vitals.dart';
import 'package:shashto_doctor_conversion/database/non_entity/children.dart';
import 'package:shashto_doctor_conversion/database/non_entity/clinical_record.dart';
import 'package:shashto_doctor_conversion/database/non_entity/daily_test.dart';
import 'package:shashto_doctor_conversion/database/non_entity/emergency_contacts.dart';
import 'package:shashto_doctor_conversion/database/non_entity/link_profile.dart';
import 'package:shashto_doctor_conversion/database/non_entity/prescription_details.dart';

import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

// Import all the entities

import 'converters/date_converter.dart';
import 'converters/datetime_converter.dart';
import 'converters/time_converter.dart';
import 'dao/contact_relationship.dart';
import 'entity/contact_appointment.dart';
import 'entity/contact_diary.dart';
import 'entity/contact_medical_records.dart';
import 'entity/contact_medicine_reminder.dart';
import 'entity/preferred_workdays.dart';
import 'entity/users.dart';
import 'entity/contacts.dart';
import 'entity/contacts_attribute.dart';
import 'entity/contact_medical_condition.dart';
import 'entity/contact_immunization.dart';

import 'entity/contacts_medical_images_type.dart';
import 'entity/contact_medical_images.dart';
import 'entity/contact_relationship.dart';
import 'entity/contact_address.dart';
import 'entity/tags.dart';
import 'entity/medicines.dart';
import 'entity/contact_medication.dart';
import 'entity/contact_medicine_allergies.dart';
import 'entity/vitals.dart';
import 'entity/contact_vitals_value.dart';
import 'entity/contact_appointment_details.dart';
import 'entity/reminders.dart';
import 'entity/notification.dart';
import 'entity/news_config.dart';
import 'entity/custom_vitals.dart';
import 'entity/share.dart';
import 'entity/contact_location.dart';
import 'entity/revera_doctors.dart';
import 'entity/revera_doctor_appointment_slots.dart';
import 'entity/chat_history.dart';
import 'entity/call_history.dart';
import 'entity/message_history.dart';
import 'entity/rating_tag.dart';
import 'entity/doctor_report.dart';
import 'entity/doctor_prescription.dart';
import 'non_entity/revera_appointment_details.dart';

// Import all the DAOs
import 'dao/call_history.dart';
import 'dao/chat_history.dart';
import 'dao/contact_address.dart';
import 'dao/contact_appointment_details.dart';
import 'dao/contact_appointments.dart';
import 'dao/contact_attribute.dart';
import 'dao/contact_diary.dart';
import 'dao/contact_immunization.dart';
import 'dao/contact_location.dart';
import 'dao/contact_medical_condition.dart';
import 'dao/contact_medical_images.dart';
import 'dao/contact_medical_images_type.dart';
import 'dao/contact_medical_record.dart';
import 'dao/contact_medicine.dart';
import 'dao/contact_medicine_allergies.dart';
import 'dao/contact_medicine_reminder.dart';
import 'dao/contact_vitals.dart';
import 'dao/contact_vitals_value.dart';
import 'dao/contacts.dart';
import 'dao/custom_vitals.dart';
import 'dao/doctor_prescription.dart';
import 'dao/doctor_report.dart';
import 'dao/medicine_list.dart';
import 'dao/message_history.dart';
import 'dao/news_config.dart';
import 'dao/notifications.dart';
import 'dao/preferred_workdays.dart';
import 'dao/rating_tag.dart';
import 'dao/reminder.dart';
import 'dao/revera_doctor_appointment_slots.dart';
import 'dao/revera_doctors.dart';
import 'dao/share.dart';
import 'dao/tags.dart';
import 'dao/users.dart';
import 'dao/vitals.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [
  Users,
  Contacts,
  ContactsAttribute,
  ContactMedicalCondition,
  ContactImmunization,
  ContactMedicalRecord,
  ContactsMedicalImagesType,
  ContactMedicalImages,
  ContactRelationship,
  ContactAddress,
  Tags,
  Medicines,
  ContactMedication,
  ContactVitals,
  ContactMedicineAllergies,
  Vitals,
  ContactVitalsValue,
  ContactAppointments,
  ContactAppointmentDetails,
  Reminders,
  Notification,
  ContactDairy,
  NewsConfig,
  ContactMedicationReminder,
  CustomVitals,
  Share,
  ContactLocation,
  ReveraDoctors,
  ReveraDoctorAppointmentSlots,
  ChatHistory,
  CallHistory,
  MessageHistory,
  RatingTag,
  PreferredWorkDay,
  DoctorReport,
  DoctorPrescription,
  ReveraAppointmentDetails,
  ClinicalRecord,
  EmergencyContacts,
  Children,
  LinkProfile,
  DailyTest,
  PrescriptionDetails,
])
abstract class AppDatabase extends FloorDatabase {
  RatingTagDao get ratingTagDao;
  ChatHistoryDao get chatHistoryDao;
  ContactAddressDao get contactAddressDao;
  CallHistoryDao get callHistoryDao;
  MessageHistoryDao get messageHistoryDao;
  ContactAppointmentDetailsDao get contactAppointmentDetailsDao;
  ContactAppointmentsDao get contactAppointmentsDao;
  ContactDairyDao get contactDairyDao;
  ContactImmunizationDao get contactImmunizationDao;
  ContactLocationDao get contactLocationDao;
  ContactMedicalConditionDao get contactMedicalConditionDao;
  ContactMedicalImagesDao get contactMedicalImagesDao;
  ContactMedicalRecordDao get contactMedicalRecordDao;
  ContactMedicationDao get contactMedicationDao;
  ContactMedicationReminderDao get contactMedicationReminderDao;
  ContactMedicineAllergiesDao get contactMedicineAllergiesDao;
  ContactRelationShipDao get contactRelationshipDao;
  ContactsAttributeDao get contactsAttributeDao;
  ContactsDao get contactsDao;
  ContactsMedicalImagesTypeDao get contactsMedicalImagesTypeDao;
  ContactVitalsDao get contactVitalsDao;
  ContactVitalsValueDao get contactVitalsValueDao;
  CustomVitalsDao get customVitalsDao;
  MedicineListDao get medicineListDao;
  NewsConfigDao get newsConfigDao;
  NotificationDao get notificationDao;
  RemindersDao get remindersDao;
  ReveraDoctorAppointmentSlotsDao get reveraDoctorAppointmentSlotsDao;
  ReveraDoctorsDao get reveraDoctorsDao;
  ShareDao get shareDao;
  TagsDao get tagsDao;
  UsersDao get usersDao;
  VitalsDao get vitalsDao;
  PreferredWorkDayDao get preferredWorkDayDao;
  DoctorReportDao get doctorReportDao;
  DoctorPrescriptionDao get doctorPrescriptionDao;

  // Add other DAOs here if necessary

  static Future<AppDatabase> getInstance(String path) async {
    return await $FloorAppDatabase.databaseBuilder(path).build();
  }
}
