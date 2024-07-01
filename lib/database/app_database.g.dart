// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  RatingTagDao? _ratingTagDaoInstance;

  ChatHistoryDao? _chatHistoryDaoInstance;

  ContactAddressDao? _contactAddressDaoInstance;

  CallHistoryDao? _callHistoryDaoInstance;

  MessageHistoryDao? _messageHistoryDaoInstance;

  ContactAppointmentDetailsDao? _contactAppointmentDetailsDaoInstance;

  ContactAppointmentsDao? _contactAppointmentsDaoInstance;

  ContactDairyDao? _contactDairyDaoInstance;

  ContactImmunizationDao? _contactImmunizationDaoInstance;

  ContactLocationDao? _contactLocationDaoInstance;

  ContactMedicalConditionDao? _contactMedicalConditionDaoInstance;

  ContactMedicalImagesDao? _contactMedicalImagesDaoInstance;

  ContactMedicalRecordDao? _contactMedicalRecordDaoInstance;

  ContactMedicationDao? _contactMedicationDaoInstance;

  ContactMedicationReminderDao? _contactMedicationReminderDaoInstance;

  ContactMedicineAllergiesDao? _contactMedicineAllergiesDaoInstance;

  ContactRelationShipDao? _contactRelationshipDaoInstance;

  ContactsAttributeDao? _contactsAttributeDaoInstance;

  ContactsDao? _contactsDaoInstance;

  ContactsMedicalImagesTypeDao? _contactsMedicalImagesTypeDaoInstance;

  ContactVitalsDao? _contactVitalsDaoInstance;

  ContactVitalsValueDao? _contactVitalsValueDaoInstance;

  CustomVitalsDao? _customVitalsDaoInstance;

  MedicineListDao? _medicineListDaoInstance;

  NewsConfigDao? _newsConfigDaoInstance;

  NotificationDao? _notificationDaoInstance;

  RemindersDao? _remindersDaoInstance;

  ReveraDoctorAppointmentSlotsDao? _reveraDoctorAppointmentSlotsDaoInstance;

  ReveraDoctorsDao? _reveraDoctorsDaoInstance;

  ShareDao? _shareDaoInstance;

  TagsDao? _tagsDaoInstance;

  UsersDao? _usersDaoInstance;

  VitalsDao? _vitalsDaoInstance;

  PreferredWorkDayDao? _preferredWorkDayDaoInstance;

  DoctorReportDao? _doctorReportDaoInstance;

  DoctorPrescriptionDao? _doctorPrescriptionDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `users` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `username` TEXT NOT NULL, `email` TEXT NOT NULL, `first_name` TEXT NOT NULL, `last_name` TEXT NOT NULL, `profile_name` TEXT NOT NULL, `contact_id` INTEGER NOT NULL, `revera_id` TEXT NOT NULL, `user_type` TEXT NOT NULL, `security_question` TEXT NOT NULL, `security_answer` TEXT NOT NULL, `status` INTEGER NOT NULL, `terms_and_condition_accepted` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_uid` INTEGER, `updated_date` TEXT NOT NULL, `updated_uid` INTEGER)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts` (`id` INTEGER NOT NULL, `first_name` TEXT, `last_name` TEXT, `date_of_birth` TEXT, `country_of_birth` TEXT, `estimated_age` TEXT, `gender` TEXT, `status` INTEGER, `nationality` TEXT, `national_id` TEXT, `nid_photo_one` TEXT, `nid_photo_two` TEXT, `have_medical_insurance` INTEGER, `no_of_children` INTEGER, `medical_insurance_name` TEXT, `medical_insurance_id` TEXT, `mid_photo_one` TEXT, `mid_photo_two` TEXT, `ethnicity` TEXT, `religion` TEXT, `occupation` TEXT, `education_level` TEXT, `merital_status` TEXT, `have_children` INTEGER, `blood_group` TEXT, `email` TEXT, `username` TEXT, `phone` TEXT, `height` TEXT, `weight` TEXT, `bmi` TEXT, `alergies` TEXT, `profile_photo` TEXT, `is_findable` INTEGER, `created_date` TEXT, `created_uid` INTEGER, `createdBy` TEXT, `updatedBy` TEXT, `updated_date` TEXT, `updated_uid` INTEGER, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_attribute` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `title` TEXT NOT NULL, `attribute_key` TEXT NOT NULL, `attribute_value` TEXT NOT NULL, `order_number` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_uid` INTEGER NOT NULL, `updated_date` TEXT NOT NULL, `updated_uid` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_medical_condition` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `name` TEXT NOT NULL, `year_of_diagnosis` TEXT NOT NULL, `tag_id` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_immunization` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `contact_medical_record_id` INTEGER NOT NULL, `name` TEXT NOT NULL, `dosage` INTEGER NOT NULL, `date` TEXT NOT NULL, `next_due_date` TEXT NOT NULL, `is_reminder_set` INTEGER NOT NULL, `notes` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_medical_record` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `module_id` INTEGER NOT NULL, `institution_name` TEXT NOT NULL, `provider_name` TEXT NOT NULL, `record_date` TEXT NOT NULL, `notes` TEXT NOT NULL, `custom_report_name` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_medical_images_type` (`id` INTEGER NOT NULL, `contact_medical_record_id` INTEGER NOT NULL, `report_type` INTEGER NOT NULL, `report_sub_type` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_medical_images` (`id` INTEGER NOT NULL, `contact_medical_images_type_id` INTEGER NOT NULL, `image_path` TEXT NOT NULL, `report_type` TEXT NOT NULL, `report_sub_type` TEXT NOT NULL, `date` TEXT NOT NULL, `is_ocr_enabled` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_relationship` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `related_contact_id` INTEGER NOT NULL, `relationship_type` TEXT NOT NULL, `is_emergency_contact` INTEGER NOT NULL, `is_linked_profile` INTEGER NOT NULL, `is_children` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_address` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `address_type` TEXT NOT NULL, `address1` TEXT NOT NULL, `address2` TEXT NOT NULL, `city` TEXT NOT NULL, `state` TEXT NOT NULL, `post_code` TEXT NOT NULL, `country` TEXT NOT NULL, `consent_type` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `tags` (`tag_id` INTEGER, `name` TEXT NOT NULL, `url` TEXT NOT NULL, `parent_id` INTEGER NOT NULL, `tag_type` TEXT NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`tag_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `medicines` (`id` INTEGER NOT NULL, `brand_name` TEXT NOT NULL, `generic_name` TEXT NOT NULL, `short_name` TEXT NOT NULL, `company` TEXT NOT NULL, `category` TEXT NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `created_uid` INTEGER NOT NULL, `updated_uid` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_medication` (`id` INTEGER NOT NULL, `medicine_id` INTEGER NOT NULL, `contact_medical_record_id` INTEGER NOT NULL, `generic_name` TEXT NOT NULL, `name` TEXT NOT NULL, `medicine_type` TEXT NOT NULL, `no_of_quantity` TEXT NOT NULL, `dosage` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `frequency` TEXT NOT NULL, `start_date` TEXT NOT NULL, `end_date` TEXT NOT NULL, `is_reminder_set` INTEGER NOT NULL, `is_ongoing` INTEGER NOT NULL, `type` TEXT NOT NULL, `notes` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, `med_id` INTEGER NOT NULL, `med_brand_name` TEXT NOT NULL, `med_generic_name` TEXT NOT NULL, `med_short_name` TEXT NOT NULL, `med_company` TEXT NOT NULL, `med_category` TEXT NOT NULL, `med_created_date` TEXT NOT NULL, `med_updated_date` TEXT NOT NULL, `med_created_uid` INTEGER NOT NULL, `med_updated_uid` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_vitals` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `vitals_type_id` INTEGER NOT NULL, `custom_vitals_type_id` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_medicine_allergies` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `medicine_id` INTEGER NOT NULL, `generic_name` TEXT NOT NULL, `notes` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `vitals` (`vital_id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `short_name` TEXT NOT NULL, `description` TEXT NOT NULL, `unit` TEXT NOT NULL, `url` TEXT NOT NULL, `image_list_path` TEXT NOT NULL, `image_details_path` TEXT NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_vitals_value` (`id` INTEGER NOT NULL, `contact_medical_record_id` INTEGER NOT NULL, `contact_vitals_id` INTEGER NOT NULL, `vitals_value` TEXT NOT NULL, `vitals_datetime` TEXT NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, FOREIGN KEY (`contact_vitals_id`) REFERENCES `contact_vitals` (`id`) ON UPDATE CASCADE ON DELETE CASCADE, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_appointments` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `appointment_date` TEXT NOT NULL, `time_stamp` INTEGER NOT NULL, `appointment_time` TEXT NOT NULL, `appointment_type` TEXT NOT NULL, `provider_name` TEXT NOT NULL, `institution_name` TEXT NOT NULL, `serial_no` TEXT NOT NULL, `notes` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_appointment_details` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `appointment_id` INTEGER NOT NULL, `shashto_slot_id` INTEGER NOT NULL, `share_file_id` INTEGER NOT NULL, `shashto_doc_id` INTEGER NOT NULL, `chat_history` TEXT NOT NULL, `doctors_note` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `reminders` (`id` INTEGER, `contact_id` INTEGER NOT NULL, `type` TEXT NOT NULL, `actual_id` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `only_date` TEXT NOT NULL, `only_time` TEXT NOT NULL, `end_time` INTEGER NOT NULL, `is_ongoing_medicine` INTEGER NOT NULL, `job_id` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `notification` (`id` INTEGER, `contact_id` INTEGER NOT NULL, `type` TEXT NOT NULL, `actual_id` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `taken` INTEGER NOT NULL, `latter` INTEGER NOT NULL, `seen` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_diary` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `module_id` INTEGER NOT NULL, `diary_datetime` TEXT NOT NULL, `diary_notes` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `news_config` (`id` INTEGER, `name` TEXT NOT NULL, `url` TEXT NOT NULL, `active` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contact_medication_reminder` (`id` INTEGER NOT NULL, `contact_medication_id` INTEGER NOT NULL, `time` TEXT NOT NULL, `date_day` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `custom_vitals` (`vital_id` INTEGER NOT NULL, `name` TEXT NOT NULL, `short_name` TEXT NOT NULL, `description` TEXT NOT NULL, `unit` TEXT NOT NULL, `url` TEXT NOT NULL, `image_list_path` TEXT NOT NULL, `image_details_path` TEXT NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, PRIMARY KEY (`vital_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Share` (`id` INTEGER, `contact_id` INTEGER NOT NULL, `receiver_revera_id` TEXT NOT NULL, `sender_revera_id` TEXT NOT NULL, `receiver_profile_name` TEXT NOT NULL, `sender_profile_name` TEXT NOT NULL, `sharing_file` TEXT NOT NULL, `sharing_datetime` TEXT NOT NULL, `status` INTEGER NOT NULL, `life_style` INTEGER NOT NULL, `next_of_kin` INTEGER NOT NULL, `immunization_history` INTEGER NOT NULL, `medical_conditions` INTEGER NOT NULL, `is_accepted` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `contacts_location` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `latitude` REAL NOT NULL, `longitude` REAL NOT NULL, `address` TEXT NOT NULL, `country` TEXT NOT NULL, `state` TEXT NOT NULL, `city` TEXT NOT NULL, `post_code` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `revera_doctors` (`id` INTEGER, `digitalSignImage` TEXT, `name` TEXT, `designation` TEXT, `institution` TEXT, `specialization` TEXT, `description` TEXT, `status` INTEGER, `contactId` INTEGER, `reveraId` TEXT, `profileName` TEXT, `createdDate` TEXT, `createdBy` TEXT, `updatedDate` TEXT, `updatedBy` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `revera_doctor_appointment_slots` (`id` INTEGER, `shashto_doc_id` INTEGER NOT NULL, `slot_request_id` INTEGER NOT NULL, `date` TEXT NOT NULL, `time` TEXT NOT NULL, `time_slot` TEXT NOT NULL, `start_time` TEXT NOT NULL, `end_time` TEXT NOT NULL, `status` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, `time_stamp` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `chat_history` (`id` INTEGER NOT NULL, `appointment_id` INTEGER NOT NULL, `sender_contact_id` INTEGER NOT NULL, `recipient_contact_id` INTEGER NOT NULL, `sender_profile_name` TEXT NOT NULL, `recipient_profile_name` TEXT NOT NULL, `message` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `revera_call_history_table` (`id` INTEGER NOT NULL, `contact_appointment_details_id` INTEGER NOT NULL, `start_time` TEXT NOT NULL, `end_time` TEXT NOT NULL, `duration` REAL NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `revera_message_history_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `contact_appointment_details_id` INTEGER NOT NULL, `profile_name` TEXT NOT NULL, `message` TEXT NOT NULL, `date_time` TEXT NOT NULL, `timestamp` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `rating_tag_table` (`id` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` REAL NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `preferred_work_day` (`id` INTEGER NOT NULL, `week_day` INTEGER NOT NULL, `shashto_doctor_id` INTEGER NOT NULL, `start_time` TEXT NOT NULL, `end_time` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `doctor_report` (`id` INTEGER NOT NULL, `follow_up_date` TEXT NOT NULL, `presenting_complaints` TEXT NOT NULL, `prior_medical_conditions` TEXT NOT NULL, `allergies` TEXT NOT NULL, `medicines` TEXT NOT NULL, `diagnosis` TEXT NOT NULL, `investigations` TEXT NOT NULL, `treatment_plan` TEXT NOT NULL, `additional_notes` TEXT NOT NULL, `contact_appointment_details_id` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `doctor_prescription` (`id` INTEGER NOT NULL, `file_url` TEXT NOT NULL, `signed_file_url` TEXT NOT NULL, `doctor_report_id` INTEGER NOT NULL, `status` INTEGER NOT NULL, `is_signed` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ReveraAppointmentDetails` (`notes` TEXT, `sharing_file` TEXT, `life_style` INTEGER, `next_of_kin` INTEGER, `immunization_history` INTEGER, `medical_conditions` INTEGER, `status` INTEGER, `contact_id` INTEGER, `name` TEXT, `first_name` TEXT, `last_name` TEXT, `profile_name` TEXT, `profile_photo` TEXT, `date` TEXT, `appointment_date` TEXT, `time` TEXT, `appointment_time` TEXT, `time_slot` TEXT, `revera_id` TEXT, `time_stamp` INTEGER, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `appointment_id` INTEGER NOT NULL, `shashto_slot_id` INTEGER NOT NULL, `share_file_id` INTEGER NOT NULL, `shashto_doc_id` INTEGER NOT NULL, `chat_history` TEXT NOT NULL, `doctors_note` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ClinicalRecord` (`contacts_medical_images_type_id` INTEGER, `report_type` INTEGER, `report_sub_type` INTEGER, `id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `module_id` INTEGER NOT NULL, `institution_name` TEXT NOT NULL, `provider_name` TEXT NOT NULL, `record_date` TEXT NOT NULL, `notes` TEXT NOT NULL, `custom_report_name` TEXT NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `EmergencyContacts` (`relationship_type` TEXT, `address1` TEXT, `is_linked_profile` INTEGER, `id` INTEGER NOT NULL, `first_name` TEXT, `last_name` TEXT, `date_of_birth` TEXT, `country_of_birth` TEXT, `estimated_age` TEXT, `gender` TEXT, `status` INTEGER, `nationality` TEXT, `national_id` TEXT, `nid_photo_one` TEXT, `nid_photo_two` TEXT, `have_medical_insurance` INTEGER, `no_of_children` INTEGER, `medical_insurance_name` TEXT, `medical_insurance_id` TEXT, `mid_photo_one` TEXT, `mid_photo_two` TEXT, `ethnicity` TEXT, `religion` TEXT, `occupation` TEXT, `education_level` TEXT, `merital_status` TEXT, `have_children` INTEGER, `blood_group` TEXT, `email` TEXT, `username` TEXT, `phone` TEXT, `height` TEXT, `weight` TEXT, `bmi` TEXT, `alergies` TEXT, `profile_photo` TEXT, `is_findable` INTEGER, `created_date` TEXT, `created_uid` INTEGER, `createdBy` TEXT, `updatedBy` TEXT, `updated_date` TEXT, `updated_uid` INTEGER, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Children` (`relationshipType` TEXT, `isLinkedProfile` INTEGER, `birthWeight` TEXT, `typeOfDelivery` TEXT, `isExpanded` INTEGER NOT NULL, `id` INTEGER NOT NULL, `first_name` TEXT, `last_name` TEXT, `date_of_birth` TEXT, `country_of_birth` TEXT, `estimated_age` TEXT, `gender` TEXT, `status` INTEGER, `nationality` TEXT, `national_id` TEXT, `nid_photo_one` TEXT, `nid_photo_two` TEXT, `have_medical_insurance` INTEGER, `no_of_children` INTEGER, `medical_insurance_name` TEXT, `medical_insurance_id` TEXT, `mid_photo_one` TEXT, `mid_photo_two` TEXT, `ethnicity` TEXT, `religion` TEXT, `occupation` TEXT, `education_level` TEXT, `merital_status` TEXT, `have_children` INTEGER, `blood_group` TEXT, `email` TEXT, `username` TEXT, `phone` TEXT, `height` TEXT, `weight` TEXT, `bmi` TEXT, `alergies` TEXT, `profile_photo` TEXT, `is_findable` INTEGER, `created_date` TEXT, `created_uid` INTEGER, `createdBy` TEXT, `updatedBy` TEXT, `updated_date` TEXT, `updated_uid` INTEGER, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `LinkProfile` (`id` INTEGER NOT NULL, `first_name` TEXT NOT NULL, `last_name` TEXT NOT NULL, `date_of_birth` TEXT NOT NULL, `country_of_birth` TEXT NOT NULL, `estimated_age` TEXT NOT NULL, `gender` TEXT NOT NULL, `status` INTEGER NOT NULL, `nationality` TEXT NOT NULL, `national_id` TEXT NOT NULL, `nid_photo_one` TEXT NOT NULL, `nid_photo_two` TEXT NOT NULL, `have_medical_insurance` INTEGER NOT NULL, `no_of_children` INTEGER NOT NULL, `medical_insurance_name` TEXT NOT NULL, `medical_insurance_id` TEXT NOT NULL, `mid_photo_one` TEXT NOT NULL, `mid_photo_two` TEXT NOT NULL, `ethnicity` TEXT NOT NULL, `religion` TEXT NOT NULL, `occupation` TEXT NOT NULL, `education_level` TEXT NOT NULL, `merital_status` TEXT NOT NULL, `have_children` INTEGER NOT NULL, `blood_group` TEXT NOT NULL, `email` TEXT NOT NULL, `username` TEXT NOT NULL, `phone` TEXT NOT NULL, `height` TEXT NOT NULL, `weight` TEXT NOT NULL, `bmi` TEXT NOT NULL, `alergies` TEXT NOT NULL, `profile_photo` TEXT NOT NULL, `is_findable` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_uid` INTEGER NOT NULL, `updated_date` TEXT NOT NULL, `updated_uid` INTEGER NOT NULL, `isSelected` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `DailyTest` (`id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `vitals_type_id` INTEGER NOT NULL, `custom_vitals_type_id` INTEGER NOT NULL, `created_date` TEXT NOT NULL, `created_by` TEXT NOT NULL, `updated_date` TEXT NOT NULL, `updated_by` TEXT NOT NULL, `vital_id` INTEGER, `name` TEXT, `short_name` TEXT, `description` TEXT, `unit` TEXT, `url` TEXT, `image_list_path` TEXT, `image_details_path` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PrescriptionDetails` (`id` INTEGER NOT NULL, `follow_up_date` TEXT NOT NULL, `presenting_complaints` TEXT NOT NULL, `prior_medical_conditions` TEXT NOT NULL, `allergies` TEXT NOT NULL, `medicines` TEXT NOT NULL, `diagnosis` TEXT NOT NULL, `investigations` TEXT NOT NULL, `treatment_plan` TEXT NOT NULL, `additional_notes` TEXT NOT NULL, `contact_appointment_details_id` INTEGER NOT NULL, `file_url` TEXT NOT NULL, `signed_file_url` TEXT NOT NULL, `doctor_report_id` INTEGER NOT NULL, `status` INTEGER NOT NULL, `is_signed` INTEGER NOT NULL, `updated_date` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE INDEX `index_contacts_medical_record_contact_id_module_id` ON `contacts_medical_record` (`contact_id`, `module_id`)');
        await database.execute(
            'CREATE INDEX `index_contacts_medical_images_type_contact_medical_record_id` ON `contacts_medical_images_type` (`contact_medical_record_id`)');
        await database.execute(
            'CREATE INDEX `index_contacts_medical_images_contact_medical_images_type_id` ON `contacts_medical_images` (`contact_medical_images_type_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_relationship_contact_id_related_contact_id` ON `contact_relationship` (`contact_id`, `related_contact_id`)');
        await database.execute(
            'CREATE INDEX `index_tags_parent_id_tag_type` ON `tags` (`parent_id`, `tag_type`)');
        await database.execute(
            'CREATE INDEX `index_contact_medication_contact_medical_record_id` ON `contact_medication` (`contact_medical_record_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_vitals_contact_id` ON `contact_vitals` (`contact_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_medicine_allergies_contact_id` ON `contact_medicine_allergies` (`contact_id`)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_contact_vitals_value_contact_medical_record_id` ON `contact_vitals_value` (`contact_medical_record_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_vitals_value_contact_vitals_id` ON `contact_vitals_value` (`contact_vitals_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_appointments_contact_id` ON `contact_appointments` (`contact_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_appointment_details_appointment_id` ON `contact_appointment_details` (`appointment_id`)');
        await database.execute(
            'CREATE INDEX `index_reminders_contact_id` ON `reminders` (`contact_id`)');
        await database.execute(
            'CREATE INDEX `index_notification_contact_id` ON `notification` (`contact_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_diary_contact_id` ON `contact_diary` (`contact_id`)');
        await database.execute(
            'CREATE INDEX `index_contact_medication_reminder_contact_medication_id` ON `contact_medication_reminder` (`contact_medication_id`)');
        await database.execute(
            'CREATE INDEX `index_chat_history_appointment_id` ON `chat_history` (`appointment_id`)');
        await database.execute(
            'CREATE INDEX `index_revera_call_history_table_id` ON `revera_call_history_table` (`id`)');
        await database.execute(
            'CREATE INDEX `index_revera_message_history_table_id` ON `revera_message_history_table` (`id`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  RatingTagDao get ratingTagDao {
    return _ratingTagDaoInstance ??= _$RatingTagDao(database, changeListener);
  }

  @override
  ChatHistoryDao get chatHistoryDao {
    return _chatHistoryDaoInstance ??=
        _$ChatHistoryDao(database, changeListener);
  }

  @override
  ContactAddressDao get contactAddressDao {
    return _contactAddressDaoInstance ??=
        _$ContactAddressDao(database, changeListener);
  }

  @override
  CallHistoryDao get callHistoryDao {
    return _callHistoryDaoInstance ??=
        _$CallHistoryDao(database, changeListener);
  }

  @override
  MessageHistoryDao get messageHistoryDao {
    return _messageHistoryDaoInstance ??=
        _$MessageHistoryDao(database, changeListener);
  }

  @override
  ContactAppointmentDetailsDao get contactAppointmentDetailsDao {
    return _contactAppointmentDetailsDaoInstance ??=
        _$ContactAppointmentDetailsDao(database, changeListener);
  }

  @override
  ContactAppointmentsDao get contactAppointmentsDao {
    return _contactAppointmentsDaoInstance ??=
        _$ContactAppointmentsDao(database, changeListener);
  }

  @override
  ContactDairyDao get contactDairyDao {
    return _contactDairyDaoInstance ??=
        _$ContactDairyDao(database, changeListener);
  }

  @override
  ContactImmunizationDao get contactImmunizationDao {
    return _contactImmunizationDaoInstance ??=
        _$ContactImmunizationDao(database, changeListener);
  }

  @override
  ContactLocationDao get contactLocationDao {
    return _contactLocationDaoInstance ??=
        _$ContactLocationDao(database, changeListener);
  }

  @override
  ContactMedicalConditionDao get contactMedicalConditionDao {
    return _contactMedicalConditionDaoInstance ??=
        _$ContactMedicalConditionDao(database, changeListener);
  }

  @override
  ContactMedicalImagesDao get contactMedicalImagesDao {
    return _contactMedicalImagesDaoInstance ??=
        _$ContactMedicalImagesDao(database, changeListener);
  }

  @override
  ContactMedicalRecordDao get contactMedicalRecordDao {
    return _contactMedicalRecordDaoInstance ??=
        _$ContactMedicalRecordDao(database, changeListener);
  }

  @override
  ContactMedicationDao get contactMedicationDao {
    return _contactMedicationDaoInstance ??=
        _$ContactMedicationDao(database, changeListener);
  }

  @override
  ContactMedicationReminderDao get contactMedicationReminderDao {
    return _contactMedicationReminderDaoInstance ??=
        _$ContactMedicationReminderDao(database, changeListener);
  }

  @override
  ContactMedicineAllergiesDao get contactMedicineAllergiesDao {
    return _contactMedicineAllergiesDaoInstance ??=
        _$ContactMedicineAllergiesDao(database, changeListener);
  }

  @override
  ContactRelationShipDao get contactRelationshipDao {
    return _contactRelationshipDaoInstance ??=
        _$ContactRelationShipDao(database, changeListener);
  }

  @override
  ContactsAttributeDao get contactsAttributeDao {
    return _contactsAttributeDaoInstance ??=
        _$ContactsAttributeDao(database, changeListener);
  }

  @override
  ContactsDao get contactsDao {
    return _contactsDaoInstance ??= _$ContactsDao(database, changeListener);
  }

  @override
  ContactsMedicalImagesTypeDao get contactsMedicalImagesTypeDao {
    return _contactsMedicalImagesTypeDaoInstance ??=
        _$ContactsMedicalImagesTypeDao(database, changeListener);
  }

  @override
  ContactVitalsDao get contactVitalsDao {
    return _contactVitalsDaoInstance ??=
        _$ContactVitalsDao(database, changeListener);
  }

  @override
  ContactVitalsValueDao get contactVitalsValueDao {
    return _contactVitalsValueDaoInstance ??=
        _$ContactVitalsValueDao(database, changeListener);
  }

  @override
  CustomVitalsDao get customVitalsDao {
    return _customVitalsDaoInstance ??=
        _$CustomVitalsDao(database, changeListener);
  }

  @override
  MedicineListDao get medicineListDao {
    return _medicineListDaoInstance ??=
        _$MedicineListDao(database, changeListener);
  }

  @override
  NewsConfigDao get newsConfigDao {
    return _newsConfigDaoInstance ??= _$NewsConfigDao(database, changeListener);
  }

  @override
  NotificationDao get notificationDao {
    return _notificationDaoInstance ??=
        _$NotificationDao(database, changeListener);
  }

  @override
  RemindersDao get remindersDao {
    return _remindersDaoInstance ??= _$RemindersDao(database, changeListener);
  }

  @override
  ReveraDoctorAppointmentSlotsDao get reveraDoctorAppointmentSlotsDao {
    return _reveraDoctorAppointmentSlotsDaoInstance ??=
        _$ReveraDoctorAppointmentSlotsDao(database, changeListener);
  }

  @override
  ReveraDoctorsDao get reveraDoctorsDao {
    return _reveraDoctorsDaoInstance ??=
        _$ReveraDoctorsDao(database, changeListener);
  }

  @override
  ShareDao get shareDao {
    return _shareDaoInstance ??= _$ShareDao(database, changeListener);
  }

  @override
  TagsDao get tagsDao {
    return _tagsDaoInstance ??= _$TagsDao(database, changeListener);
  }

  @override
  UsersDao get usersDao {
    return _usersDaoInstance ??= _$UsersDao(database, changeListener);
  }

  @override
  VitalsDao get vitalsDao {
    return _vitalsDaoInstance ??= _$VitalsDao(database, changeListener);
  }

  @override
  PreferredWorkDayDao get preferredWorkDayDao {
    return _preferredWorkDayDaoInstance ??=
        _$PreferredWorkDayDao(database, changeListener);
  }

  @override
  DoctorReportDao get doctorReportDao {
    return _doctorReportDaoInstance ??=
        _$DoctorReportDao(database, changeListener);
  }

  @override
  DoctorPrescriptionDao get doctorPrescriptionDao {
    return _doctorPrescriptionDaoInstance ??=
        _$DoctorPrescriptionDao(database, changeListener);
  }
}

class _$RatingTagDao extends RatingTagDao {
  _$RatingTagDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _ratingTagInsertionAdapter = InsertionAdapter(
            database,
            'rating_tag_table',
            (RatingTag item) => <String, Object?>{
                  'id': item.id,
                  'key': item.key,
                  'value': item.value
                }),
        _ratingTagUpdateAdapter = UpdateAdapter(
            database,
            'rating_tag_table',
            ['id'],
            (RatingTag item) => <String, Object?>{
                  'id': item.id,
                  'key': item.key,
                  'value': item.value
                }),
        _ratingTagDeletionAdapter = DeletionAdapter(
            database,
            'rating_tag_table',
            ['id'],
            (RatingTag item) => <String, Object?>{
                  'id': item.id,
                  'key': item.key,
                  'value': item.value
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<RatingTag> _ratingTagInsertionAdapter;

  final UpdateAdapter<RatingTag> _ratingTagUpdateAdapter;

  final DeletionAdapter<RatingTag> _ratingTagDeletionAdapter;

  @override
  Future<List<RatingTag>> getRatingTagList() async {
    return _queryAdapter.queryList('SELECT * FROM rating_tag_table',
        mapper: (Map<String, Object?> row) => RatingTag(
            id: row['id'] as int,
            key: row['key'] as String,
            value: row['value'] as double));
  }

  @override
  Future<void> insert(RatingTag object) async {
    await _ratingTagInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(RatingTag object) async {
    await _ratingTagInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<RatingTag> list) async {
    await _ratingTagInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<RatingTag> list) async {
    await _ratingTagInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(RatingTag object) async {
    await _ratingTagUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<RatingTag> list) async {
    await _ratingTagUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(RatingTag object) async {
    await _ratingTagDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<RatingTag> list) async {
    await _ratingTagDeletionAdapter.deleteList(list);
  }
}

class _$ChatHistoryDao extends ChatHistoryDao {
  _$ChatHistoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _chatHistoryInsertionAdapter = InsertionAdapter(
            database,
            'chat_history',
            (ChatHistory item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'sender_contact_id': item.senderContactId,
                  'recipient_contact_id': item.recipientContactId,
                  'sender_profile_name': item.senderProfileName,
                  'recipient_profile_name': item.recipientProfileName,
                  'message': item.message,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                }),
        _chatHistoryUpdateAdapter = UpdateAdapter(
            database,
            'chat_history',
            ['id'],
            (ChatHistory item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'sender_contact_id': item.senderContactId,
                  'recipient_contact_id': item.recipientContactId,
                  'sender_profile_name': item.senderProfileName,
                  'recipient_profile_name': item.recipientProfileName,
                  'message': item.message,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                }),
        _chatHistoryDeletionAdapter = DeletionAdapter(
            database,
            'chat_history',
            ['id'],
            (ChatHistory item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'sender_contact_id': item.senderContactId,
                  'recipient_contact_id': item.recipientContactId,
                  'sender_profile_name': item.senderProfileName,
                  'recipient_profile_name': item.recipientProfileName,
                  'message': item.message,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ChatHistory> _chatHistoryInsertionAdapter;

  final UpdateAdapter<ChatHistory> _chatHistoryUpdateAdapter;

  final DeletionAdapter<ChatHistory> _chatHistoryDeletionAdapter;

  @override
  Future<List<ChatHistory>> getChatHistory(int appointmentId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM chat_history WHERE appointment_id = ?1 ORDER BY datetime(timestamp) DESC',
        mapper: (Map<String, Object?> row) => ChatHistory(id: row['id'] as int, appointmentId: row['appointment_id'] as int, senderContactId: row['sender_contact_id'] as int, recipientContactId: row['recipient_contact_id'] as int, senderProfileName: row['sender_profile_name'] as String, recipientProfileName: row['recipient_profile_name'] as String, message: row['message'] as String, timestamp: _dateTimeConverter.decode(row['timestamp'] as int)),
        arguments: [appointmentId]);
  }

  @override
  Future<void> deleteById(int id) async {
    await _queryAdapter.queryNoReturn('DELETE FROM chat_history WHERE id = ?1',
        arguments: [id]);
  }

  @override
  Future<void> insert(ChatHistory object) async {
    await _chatHistoryInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ChatHistory object) async {
    await _chatHistoryInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ChatHistory> list) async {
    await _chatHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ChatHistory> list) async {
    await _chatHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ChatHistory object) async {
    await _chatHistoryUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ChatHistory> list) async {
    await _chatHistoryUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ChatHistory object) async {
    await _chatHistoryDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ChatHistory> list) async {
    await _chatHistoryDeletionAdapter.deleteList(list);
  }
}

class _$ContactAddressDao extends ContactAddressDao {
  _$ContactAddressDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _contactAddressInsertionAdapter = InsertionAdapter(
            database,
            'contact_address',
            (ContactAddress item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'address_type': item.addressType,
                  'address1': item.address1,
                  'address2': item.address2,
                  'city': item.city,
                  'state': item.state,
                  'post_code': item.postCode,
                  'country': item.country,
                  'consent_type': item.consentType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener),
        _contactAddressUpdateAdapter = UpdateAdapter(
            database,
            'contact_address',
            ['id'],
            (ContactAddress item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'address_type': item.addressType,
                  'address1': item.address1,
                  'address2': item.address2,
                  'city': item.city,
                  'state': item.state,
                  'post_code': item.postCode,
                  'country': item.country,
                  'consent_type': item.consentType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener),
        _contactAddressDeletionAdapter = DeletionAdapter(
            database,
            'contact_address',
            ['id'],
            (ContactAddress item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'address_type': item.addressType,
                  'address1': item.address1,
                  'address2': item.address2,
                  'city': item.city,
                  'state': item.state,
                  'post_code': item.postCode,
                  'country': item.country,
                  'consent_type': item.consentType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactAddress> _contactAddressInsertionAdapter;

  final UpdateAdapter<ContactAddress> _contactAddressUpdateAdapter;

  final DeletionAdapter<ContactAddress> _contactAddressDeletionAdapter;

  @override
  Future<ContactAddress?> getAddressByContactId(int contactId) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_address WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactAddress(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            addressType: row['address_type'] as String,
            address1: row['address1'] as String,
            address2: row['address2'] as String,
            city: row['city'] as String,
            state: row['state'] as String,
            postCode: row['post_code'] as String,
            country: row['country'] as String,
            consentType: row['consent_type'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Future<ContactAddress?> getContactAddressByContactId(int contactId) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_address WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactAddress(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            addressType: row['address_type'] as String,
            address1: row['address1'] as String,
            address2: row['address2'] as String,
            city: row['city'] as String,
            state: row['state'] as String,
            postCode: row['post_code'] as String,
            country: row['country'] as String,
            consentType: row['consent_type'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Stream<ContactAddress?> getLiveContactAddressByContactId(int contactId) {
    return _queryAdapter.queryStream(
        'SELECT * FROM contact_address WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactAddress(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            addressType: row['address_type'] as String,
            address1: row['address1'] as String,
            address2: row['address2'] as String,
            city: row['city'] as String,
            state: row['state'] as String,
            postCode: row['post_code'] as String,
            country: row['country'] as String,
            consentType: row['consent_type'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId],
        queryableName: 'contact_address',
        isView: false);
  }

  @override
  Future<void> insert(ContactAddress object) async {
    await _contactAddressInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactAddress object) async {
    await _contactAddressInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactAddress> list) async {
    await _contactAddressInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactAddress> list) async {
    await _contactAddressInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactAddress object) async {
    await _contactAddressUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactAddress> list) async {
    await _contactAddressUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactAddress object) async {
    await _contactAddressDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactAddress> list) async {
    await _contactAddressDeletionAdapter.deleteList(list);
  }
}

class _$CallHistoryDao extends CallHistoryDao {
  _$CallHistoryDao(
    this.database,
    this.changeListener,
  )   : _callHistoryInsertionAdapter = InsertionAdapter(
            database,
            'revera_call_history_table',
            (CallHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'duration': item.duration
                }),
        _callHistoryUpdateAdapter = UpdateAdapter(
            database,
            'revera_call_history_table',
            ['id'],
            (CallHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'duration': item.duration
                }),
        _callHistoryDeletionAdapter = DeletionAdapter(
            database,
            'revera_call_history_table',
            ['id'],
            (CallHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'duration': item.duration
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final InsertionAdapter<CallHistory> _callHistoryInsertionAdapter;

  final UpdateAdapter<CallHistory> _callHistoryUpdateAdapter;

  final DeletionAdapter<CallHistory> _callHistoryDeletionAdapter;

  @override
  Future<void> insert(CallHistory object) async {
    await _callHistoryInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(CallHistory object) async {
    await _callHistoryInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<CallHistory> list) async {
    await _callHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<CallHistory> list) async {
    await _callHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(CallHistory object) async {
    await _callHistoryUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<CallHistory> list) async {
    await _callHistoryUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(CallHistory object) async {
    await _callHistoryDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<CallHistory> list) async {
    await _callHistoryDeletionAdapter.deleteList(list);
  }
}

class _$MessageHistoryDao extends MessageHistoryDao {
  _$MessageHistoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _messageHistoryInsertionAdapter = InsertionAdapter(
            database,
            'revera_message_history_table',
            (MessageHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'profile_name': item.profileName,
                  'message': item.message,
                  'date_time': item.dateTime,
                  'timestamp': item.timestamp
                }),
        _messageHistoryUpdateAdapter = UpdateAdapter(
            database,
            'revera_message_history_table',
            ['id'],
            (MessageHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'profile_name': item.profileName,
                  'message': item.message,
                  'date_time': item.dateTime,
                  'timestamp': item.timestamp
                }),
        _messageHistoryDeletionAdapter = DeletionAdapter(
            database,
            'revera_message_history_table',
            ['id'],
            (MessageHistory item) => <String, Object?>{
                  'id': item.id,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'profile_name': item.profileName,
                  'message': item.message,
                  'date_time': item.dateTime,
                  'timestamp': item.timestamp
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MessageHistory> _messageHistoryInsertionAdapter;

  final UpdateAdapter<MessageHistory> _messageHistoryUpdateAdapter;

  final DeletionAdapter<MessageHistory> _messageHistoryDeletionAdapter;

  @override
  Future<List<MessageHistory>> getMessageHistory(
      int appointmentDetailsId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM revera_message_history_table WHERE contact_appointment_details_id = ?1 ORDER BY datetime(timestamp) DESC',
        mapper: (Map<String, Object?> row) => MessageHistory(id: row['id'] as int?, contactAppointmentDetailsId: row['contact_appointment_details_id'] as int, profileName: row['profile_name'] as String, message: row['message'] as String, dateTime: row['date_time'] as String, timestamp: row['timestamp'] as int),
        arguments: [appointmentDetailsId]);
  }

  @override
  Future<void> insert(MessageHistory object) async {
    await _messageHistoryInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(MessageHistory object) async {
    await _messageHistoryInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<MessageHistory> list) async {
    await _messageHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<MessageHistory> list) async {
    await _messageHistoryInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(MessageHistory object) async {
    await _messageHistoryUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<MessageHistory> list) async {
    await _messageHistoryUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(MessageHistory object) async {
    await _messageHistoryDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<MessageHistory> list) async {
    await _messageHistoryDeletionAdapter.deleteList(list);
  }
}

class _$ContactAppointmentDetailsDao extends ContactAppointmentDetailsDao {
  _$ContactAppointmentDetailsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactAppointmentDetailsInsertionAdapter = InsertionAdapter(
            database,
            'contact_appointment_details',
            (ContactAppointmentDetails item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'shashto_slot_id': item.shashtoSlotId,
                  'share_file_id': item.shareFileId,
                  'shashto_doc_id': item.shashtoDoctorId,
                  'chat_history': item.chatHistory,
                  'doctors_note': item.doctorsNote,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactAppointmentDetailsUpdateAdapter = UpdateAdapter(
            database,
            'contact_appointment_details',
            ['id'],
            (ContactAppointmentDetails item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'shashto_slot_id': item.shashtoSlotId,
                  'share_file_id': item.shareFileId,
                  'shashto_doc_id': item.shashtoDoctorId,
                  'chat_history': item.chatHistory,
                  'doctors_note': item.doctorsNote,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactAppointmentDetailsDeletionAdapter = DeletionAdapter(
            database,
            'contact_appointment_details',
            ['id'],
            (ContactAppointmentDetails item) => <String, Object?>{
                  'id': item.id,
                  'appointment_id': item.appointmentId,
                  'shashto_slot_id': item.shashtoSlotId,
                  'share_file_id': item.shareFileId,
                  'shashto_doc_id': item.shashtoDoctorId,
                  'chat_history': item.chatHistory,
                  'doctors_note': item.doctorsNote,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactAppointmentDetails>
      _contactAppointmentDetailsInsertionAdapter;

  final UpdateAdapter<ContactAppointmentDetails>
      _contactAppointmentDetailsUpdateAdapter;

  final DeletionAdapter<ContactAppointmentDetails>
      _contactAppointmentDetailsDeletionAdapter;

  @override
  Future<ReveraAppointmentDetails?> getAppointmentsByContactIdAndDate(
    int contactId,
    String date,
  ) async {
    return _queryAdapter.query(
        'SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, contact_appointments.appointment_time, contact_appointments.appointment_date, contact_appointments.time_stamp, share.life_style, share.next_of_kin, share.immunization_history, share.medical_conditions, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time FROM contact_appointment_details INNER JOIN contact_appointments ON contact_appointment_details.appointment_id = contact_appointments.id INNER JOIN users ON users.contact_id = contact_appointments.contact_id INNER JOIN contacts ON contacts.id = contact_appointments.contact_id INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id LEFT JOIN share ON share.id = contact_appointment_details.share_file_id WHERE revera_doctor_appointment_slots.date LIKE ?2 AND revera_doctors.contact_id = ?1 ORDER BY contact_appointments.id DESC',
        mapper: (Map<String, Object?> row) => ReveraAppointmentDetails(notes: row['notes'] as String?, sharingFile: row['sharing_file'] as String?, isLifeStyle: row['life_style'] == null ? null : (row['life_style'] as int) != 0, isNextOfKin: row['next_of_kin'] == null ? null : (row['next_of_kin'] as int) != 0, isImmunizationHistory: row['immunization_history'] == null ? null : (row['immunization_history'] as int) != 0, isMedicalConditions: row['medical_conditions'] == null ? null : (row['medical_conditions'] as int) != 0, sharingFileStatus: row['status'] == null ? null : (row['status'] as int) != 0, contactId: row['contact_id'] as int?, name: row['name'] as String?, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, profileName: row['profile_name'] as String?, profilePhoto: row['profile_photo'] as String?, date: row['date'] as String?, appointmentDate: row['appointment_date'] as String?, time: row['time'] as String?, appointmentTime: row['appointment_time'] as String?, timeSlot: row['time_slot'] as String?, reveraId: row['revera_id'] as String?, timeStamp: row['time_stamp'] as int?, id: row['id'] as int, appointmentId: row['appointment_id'] as int, shashtoSlotId: row['shashto_slot_id'] as int, shareFileId: row['share_file_id'] as int, shashtoDoctorId: row['shashto_doc_id'] as int, chatHistory: row['chat_history'] as String, doctorsNote: row['doctors_note'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactId, date]);
  }

  @override
  Future<List<ReveraAppointmentDetails>> getSchemeDateByContactId(
    int contactId,
    int from,
    int to,
  ) async {
    return _queryAdapter.queryList(
        'SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, contact_appointments.appointment_date, contact_appointments.time_stamp, share.life_style, share.next_of_kin, share.immunization_history, share.medical_conditions, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time FROM contact_appointments INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id INNER JOIN users ON users.contact_id = contact_appointments.contact_id INNER JOIN contacts ON contacts.id = contact_appointments.contact_id INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id LEFT JOIN share ON share.id = contact_appointment_details.share_file_id WHERE (revera_doctor_appointment_slots.time_stamp >= ?2 AND revera_doctor_appointment_slots.time_stamp < ?3) AND revera_doctors.contact_id = ?1 AND contact_appointments.appointment_type = \'shashto\' ORDER BY contact_appointments.id DESC',
        mapper: (Map<String, Object?> row) => ReveraAppointmentDetails(notes: row['notes'] as String?, sharingFile: row['sharing_file'] as String?, isLifeStyle: row['life_style'] == null ? null : (row['life_style'] as int) != 0, isNextOfKin: row['next_of_kin'] == null ? null : (row['next_of_kin'] as int) != 0, isImmunizationHistory: row['immunization_history'] == null ? null : (row['immunization_history'] as int) != 0, isMedicalConditions: row['medical_conditions'] == null ? null : (row['medical_conditions'] as int) != 0, sharingFileStatus: row['status'] == null ? null : (row['status'] as int) != 0, contactId: row['contact_id'] as int?, name: row['name'] as String?, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, profileName: row['profile_name'] as String?, profilePhoto: row['profile_photo'] as String?, date: row['date'] as String?, appointmentDate: row['appointment_date'] as String?, time: row['time'] as String?, appointmentTime: row['appointment_time'] as String?, timeSlot: row['time_slot'] as String?, reveraId: row['revera_id'] as String?, timeStamp: row['time_stamp'] as int?, id: row['id'] as int, appointmentId: row['appointment_id'] as int, shashtoSlotId: row['shashto_slot_id'] as int, shareFileId: row['share_file_id'] as int, shashtoDoctorId: row['shashto_doc_id'] as int, chatHistory: row['chat_history'] as String, doctorsNote: row['doctors_note'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactId, from, to]);
  }

  @override
  Future<ReveraAppointmentDetails?> getBookedAppointmentById(
      int appointmentId) async {
    return _queryAdapter.query(
        'SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time FROM contact_appointments INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id INNER JOIN users ON users.contact_id = contact_appointments.contact_id INNER JOIN contacts ON contacts.id = contact_appointments.contact_id INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id LEFT JOIN share ON share.id = contact_appointment_details.share_file_id WHERE contact_appointments.id = ?1 AND revera_doctors.id = contact_appointment_details.shashto_doc_id',
        mapper: (Map<String, Object?> row) => ReveraAppointmentDetails(notes: row['notes'] as String?, sharingFile: row['sharing_file'] as String?, isLifeStyle: row['life_style'] == null ? null : (row['life_style'] as int) != 0, isNextOfKin: row['next_of_kin'] == null ? null : (row['next_of_kin'] as int) != 0, isImmunizationHistory: row['immunization_history'] == null ? null : (row['immunization_history'] as int) != 0, isMedicalConditions: row['medical_conditions'] == null ? null : (row['medical_conditions'] as int) != 0, sharingFileStatus: row['status'] == null ? null : (row['status'] as int) != 0, contactId: row['contact_id'] as int?, name: row['name'] as String?, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, profileName: row['profile_name'] as String?, profilePhoto: row['profile_photo'] as String?, date: row['date'] as String?, appointmentDate: row['appointment_date'] as String?, time: row['time'] as String?, appointmentTime: row['appointment_time'] as String?, timeSlot: row['time_slot'] as String?, reveraId: row['revera_id'] as String?, timeStamp: row['time_stamp'] as int?, id: row['id'] as int, appointmentId: row['appointment_id'] as int, shashtoSlotId: row['shashto_slot_id'] as int, shareFileId: row['share_file_id'] as int, shashtoDoctorId: row['shashto_doc_id'] as int, chatHistory: row['chat_history'] as String, doctorsNote: row['doctors_note'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [appointmentId]);
  }

  @override
  Future<ReveraAppointmentDetails?> getReveraAppointmentById(
      int appointmentId) async {
    return _queryAdapter.query(
        'SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, share.sharing_file, share.status, revera_doctors.name, revera_doctors.profile_name, revera_doctors.contact_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time FROM contact_appointments INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id INNER JOIN contacts ON contacts.id = revera_doctors.contact_id INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id LEFT JOIN share ON share.id = contact_appointment_details.share_file_id WHERE contact_appointments.id = ?1',
        mapper: (Map<String, Object?> row) => ReveraAppointmentDetails(notes: row['notes'] as String?, sharingFile: row['sharing_file'] as String?, isLifeStyle: row['life_style'] == null ? null : (row['life_style'] as int) != 0, isNextOfKin: row['next_of_kin'] == null ? null : (row['next_of_kin'] as int) != 0, isImmunizationHistory: row['immunization_history'] == null ? null : (row['immunization_history'] as int) != 0, isMedicalConditions: row['medical_conditions'] == null ? null : (row['medical_conditions'] as int) != 0, sharingFileStatus: row['status'] == null ? null : (row['status'] as int) != 0, contactId: row['contact_id'] as int?, name: row['name'] as String?, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, profileName: row['profile_name'] as String?, profilePhoto: row['profile_photo'] as String?, date: row['date'] as String?, appointmentDate: row['appointment_date'] as String?, time: row['time'] as String?, appointmentTime: row['appointment_time'] as String?, timeSlot: row['time_slot'] as String?, reveraId: row['revera_id'] as String?, timeStamp: row['time_stamp'] as int?, id: row['id'] as int, appointmentId: row['appointment_id'] as int, shashtoSlotId: row['shashto_slot_id'] as int, shareFileId: row['share_file_id'] as int, shashtoDoctorId: row['shashto_doc_id'] as int, chatHistory: row['chat_history'] as String, doctorsNote: row['doctors_note'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [appointmentId]);
  }

  @override
  Future<ContactAppointmentDetails?> getContactAppointmentDetails(
      int id) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_appointment_details WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ContactAppointmentDetails(
            id: row['id'] as int,
            appointmentId: row['appointment_id'] as int,
            shashtoSlotId: row['shashto_slot_id'] as int,
            shareFileId: row['share_file_id'] as int,
            shashtoDoctorId: row['shashto_doc_id'] as int,
            chatHistory: row['chat_history'] as String,
            doctorsNote: row['doctors_note'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insert(ContactAppointmentDetails object) async {
    await _contactAppointmentDetailsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactAppointmentDetails object) async {
    await _contactAppointmentDetailsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactAppointmentDetails> list) async {
    await _contactAppointmentDetailsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactAppointmentDetails> list) async {
    await _contactAppointmentDetailsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactAppointmentDetails object) async {
    await _contactAppointmentDetailsUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactAppointmentDetails> list) async {
    await _contactAppointmentDetailsUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactAppointmentDetails object) async {
    await _contactAppointmentDetailsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactAppointmentDetails> list) async {
    await _contactAppointmentDetailsDeletionAdapter.deleteList(list);
  }
}

class _$ContactAppointmentsDao extends ContactAppointmentsDao {
  _$ContactAppointmentsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactAppointmentsInsertionAdapter = InsertionAdapter(
            database,
            'contact_appointments',
            (ContactAppointments item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'appointment_date': item.appointmentDate,
                  'time_stamp': item.timeStamp,
                  'appointment_time': item.appointmentTime,
                  'appointment_type': item.appointmentType,
                  'provider_name': item.providerName,
                  'institution_name': item.institutionName,
                  'serial_no': item.serialNo,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactAppointmentsUpdateAdapter = UpdateAdapter(
            database,
            'contact_appointments',
            ['id'],
            (ContactAppointments item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'appointment_date': item.appointmentDate,
                  'time_stamp': item.timeStamp,
                  'appointment_time': item.appointmentTime,
                  'appointment_type': item.appointmentType,
                  'provider_name': item.providerName,
                  'institution_name': item.institutionName,
                  'serial_no': item.serialNo,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactAppointmentsDeletionAdapter = DeletionAdapter(
            database,
            'contact_appointments',
            ['id'],
            (ContactAppointments item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'appointment_date': item.appointmentDate,
                  'time_stamp': item.timeStamp,
                  'appointment_time': item.appointmentTime,
                  'appointment_type': item.appointmentType,
                  'provider_name': item.providerName,
                  'institution_name': item.institutionName,
                  'serial_no': item.serialNo,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactAppointments>
      _contactAppointmentsInsertionAdapter;

  final UpdateAdapter<ContactAppointments> _contactAppointmentsUpdateAdapter;

  final DeletionAdapter<ContactAppointments>
      _contactAppointmentsDeletionAdapter;

  @override
  Future<ContactAppointments?> getContactAppointment(int appointmentId) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_appointments WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ContactAppointments(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            appointmentDate: row['appointment_date'] as String,
            timeStamp: row['time_stamp'] as int,
            appointmentTime: row['appointment_time'] as String,
            appointmentType: row['appointment_type'] as String,
            providerName: row['provider_name'] as String,
            institutionName: row['institution_name'] as String,
            serialNo: row['serial_no'] as String,
            notes: row['notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [appointmentId]);
  }

  @override
  Future<void> insert(ContactAppointments object) async {
    await _contactAppointmentsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactAppointments object) async {
    await _contactAppointmentsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactAppointments> list) async {
    await _contactAppointmentsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactAppointments> list) async {
    await _contactAppointmentsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactAppointments object) async {
    await _contactAppointmentsUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactAppointments> list) async {
    await _contactAppointmentsUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactAppointments object) async {
    await _contactAppointmentsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactAppointments> list) async {
    await _contactAppointmentsDeletionAdapter.deleteList(list);
  }
}

class _$ContactDairyDao extends ContactDairyDao {
  _$ContactDairyDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactDairyInsertionAdapter = InsertionAdapter(
            database,
            'contact_diary',
            (ContactDairy item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'diary_datetime': item.diaryDatetime,
                  'diary_notes': item.diaryNotes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactDairyUpdateAdapter = UpdateAdapter(
            database,
            'contact_diary',
            ['id'],
            (ContactDairy item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'diary_datetime': item.diaryDatetime,
                  'diary_notes': item.diaryNotes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactDairyDeletionAdapter = DeletionAdapter(
            database,
            'contact_diary',
            ['id'],
            (ContactDairy item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'diary_datetime': item.diaryDatetime,
                  'diary_notes': item.diaryNotes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactDairy> _contactDairyInsertionAdapter;

  final UpdateAdapter<ContactDairy> _contactDairyUpdateAdapter;

  final DeletionAdapter<ContactDairy> _contactDairyDeletionAdapter;

  @override
  Future<List<ContactDairy>> getContactDairy(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_diary WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactDairy(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            moduleId: row['module_id'] as int,
            diaryDatetime: row['diary_datetime'] as String,
            diaryNotes: row['diary_notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactDairy object) async {
    await _contactDairyInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactDairy object) async {
    await _contactDairyInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactDairy> list) async {
    await _contactDairyInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactDairy> list) async {
    await _contactDairyInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactDairy object) async {
    await _contactDairyUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactDairy> list) async {
    await _contactDairyUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactDairy object) async {
    await _contactDairyDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactDairy> list) async {
    await _contactDairyDeletionAdapter.deleteList(list);
  }
}

class _$ContactImmunizationDao extends ContactImmunizationDao {
  _$ContactImmunizationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _contactImmunizationInsertionAdapter = InsertionAdapter(
            database,
            'contacts_immunization',
            (ContactImmunization item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'name': item.name,
                  'dosage': item.dosage,
                  'date': item.date,
                  'next_due_date': item.nextDueDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener),
        _contactImmunizationUpdateAdapter = UpdateAdapter(
            database,
            'contacts_immunization',
            ['id'],
            (ContactImmunization item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'name': item.name,
                  'dosage': item.dosage,
                  'date': item.date,
                  'next_due_date': item.nextDueDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener),
        _contactImmunizationDeletionAdapter = DeletionAdapter(
            database,
            'contacts_immunization',
            ['id'],
            (ContactImmunization item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'name': item.name,
                  'dosage': item.dosage,
                  'date': item.date,
                  'next_due_date': item.nextDueDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactImmunization>
      _contactImmunizationInsertionAdapter;

  final UpdateAdapter<ContactImmunization> _contactImmunizationUpdateAdapter;

  final DeletionAdapter<ContactImmunization>
      _contactImmunizationDeletionAdapter;

  @override
  Stream<List<ContactImmunization>> getContactsImmunizationByContactId(
      int contactId) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM contacts_immunization WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactImmunization(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            contactMedicalRecordId: row['contact_medical_record_id'] as int,
            name: row['name'] as String,
            dosage: row['dosage'] as int,
            date: row['date'] as String,
            nextDueDate: row['next_due_date'] as String,
            isReminder: (row['is_reminder_set'] as int) != 0,
            notes: row['notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId],
        queryableName: 'contacts_immunization',
        isView: false);
  }

  @override
  Future<ContactImmunization?> getContactImmunization(
      int immunizationId) async {
    return _queryAdapter.query(
        'SELECT * FROM contacts_immunization WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ContactImmunization(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            contactMedicalRecordId: row['contact_medical_record_id'] as int,
            name: row['name'] as String,
            dosage: row['dosage'] as int,
            date: row['date'] as String,
            nextDueDate: row['next_due_date'] as String,
            isReminder: (row['is_reminder_set'] as int) != 0,
            notes: row['notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [immunizationId]);
  }

  @override
  Future<void> insert(ContactImmunization object) async {
    await _contactImmunizationInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactImmunization object) async {
    await _contactImmunizationInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactImmunization> list) async {
    await _contactImmunizationInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactImmunization> list) async {
    await _contactImmunizationInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactImmunization object) async {
    await _contactImmunizationUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactImmunization> list) async {
    await _contactImmunizationUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactImmunization object) async {
    await _contactImmunizationDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactImmunization> list) async {
    await _contactImmunizationDeletionAdapter.deleteList(list);
  }
}

class _$ContactLocationDao extends ContactLocationDao {
  _$ContactLocationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactLocationInsertionAdapter = InsertionAdapter(
            database,
            'contacts_location',
            (ContactLocation item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'address': item.address,
                  'country': item.country,
                  'state': item.state,
                  'city': item.city,
                  'post_code': item.postCode,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactLocationUpdateAdapter = UpdateAdapter(
            database,
            'contacts_location',
            ['id'],
            (ContactLocation item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'address': item.address,
                  'country': item.country,
                  'state': item.state,
                  'city': item.city,
                  'post_code': item.postCode,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactLocationDeletionAdapter = DeletionAdapter(
            database,
            'contacts_location',
            ['id'],
            (ContactLocation item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'latitude': item.latitude,
                  'longitude': item.longitude,
                  'address': item.address,
                  'country': item.country,
                  'state': item.state,
                  'city': item.city,
                  'post_code': item.postCode,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactLocation> _contactLocationInsertionAdapter;

  final UpdateAdapter<ContactLocation> _contactLocationUpdateAdapter;

  final DeletionAdapter<ContactLocation> _contactLocationDeletionAdapter;

  @override
  Future<String?> getContactCountry(int contactId) async {
    return _queryAdapter.query(
        'SELECT country FROM contacts_location WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [contactId]);
  }

  @override
  Future<ContactLocation?> getContactLocation(int contactId) async {
    return _queryAdapter.query(
        'SELECT * FROM contacts_location WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactLocation(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            latitude: row['latitude'] as double,
            longitude: row['longitude'] as double,
            address: row['address'] as String,
            country: row['country'] as String,
            state: row['state'] as String,
            city: row['city'] as String,
            postCode: row['post_code'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactLocation object) async {
    await _contactLocationInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactLocation object) async {
    await _contactLocationInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactLocation> list) async {
    await _contactLocationInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactLocation> list) async {
    await _contactLocationInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactLocation object) async {
    await _contactLocationUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactLocation> list) async {
    await _contactLocationUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactLocation object) async {
    await _contactLocationDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactLocation> list) async {
    await _contactLocationDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicalConditionDao extends ContactMedicalConditionDao {
  _$ContactMedicalConditionDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactMedicalConditionInsertionAdapter = InsertionAdapter(
            database,
            'contact_medical_condition',
            (ContactMedicalCondition item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'name': item.name,
                  'year_of_diagnosis': item.yearOfDiagnosis,
                  'tag_id': item.tagId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalConditionUpdateAdapter = UpdateAdapter(
            database,
            'contact_medical_condition',
            ['id'],
            (ContactMedicalCondition item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'name': item.name,
                  'year_of_diagnosis': item.yearOfDiagnosis,
                  'tag_id': item.tagId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalConditionDeletionAdapter = DeletionAdapter(
            database,
            'contact_medical_condition',
            ['id'],
            (ContactMedicalCondition item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'name': item.name,
                  'year_of_diagnosis': item.yearOfDiagnosis,
                  'tag_id': item.tagId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactMedicalCondition>
      _contactMedicalConditionInsertionAdapter;

  final UpdateAdapter<ContactMedicalCondition>
      _contactMedicalConditionUpdateAdapter;

  final DeletionAdapter<ContactMedicalCondition>
      _contactMedicalConditionDeletionAdapter;

  @override
  Future<List<ContactMedicalCondition>> getContactsMedicalConditionById(
      int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_medical_condition WHERE contact_id = ?1 ORDER BY id DESC',
        mapper: (Map<String, Object?> row) => ContactMedicalCondition(id: row['id'] as int, contactId: row['contact_id'] as int, name: row['name'] as String, yearOfDiagnosis: row['year_of_diagnosis'] as String, tagId: row['tag_id'] as int, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactMedicalCondition object) async {
    await _contactMedicalConditionInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedicalCondition object) async {
    await _contactMedicalConditionInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedicalCondition> list) async {
    await _contactMedicalConditionInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedicalCondition> list) async {
    await _contactMedicalConditionInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedicalCondition object) async {
    await _contactMedicalConditionUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedicalCondition> list) async {
    await _contactMedicalConditionUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedicalCondition object) async {
    await _contactMedicalConditionDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedicalCondition> list) async {
    await _contactMedicalConditionDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicalImagesDao extends ContactMedicalImagesDao {
  _$ContactMedicalImagesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactMedicalImagesInsertionAdapter = InsertionAdapter(
            database,
            'contacts_medical_images',
            (ContactMedicalImages item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_images_type_id':
                      item.contactMedicalImagesTypeId,
                  'image_path': item.imagePath,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'date': item.date,
                  'is_ocr_enabled': item.isOcrEnabled ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalImagesUpdateAdapter = UpdateAdapter(
            database,
            'contacts_medical_images',
            ['id'],
            (ContactMedicalImages item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_images_type_id':
                      item.contactMedicalImagesTypeId,
                  'image_path': item.imagePath,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'date': item.date,
                  'is_ocr_enabled': item.isOcrEnabled ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalImagesDeletionAdapter = DeletionAdapter(
            database,
            'contacts_medical_images',
            ['id'],
            (ContactMedicalImages item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_images_type_id':
                      item.contactMedicalImagesTypeId,
                  'image_path': item.imagePath,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'date': item.date,
                  'is_ocr_enabled': item.isOcrEnabled ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactMedicalImages>
      _contactMedicalImagesInsertionAdapter;

  final UpdateAdapter<ContactMedicalImages> _contactMedicalImagesUpdateAdapter;

  final DeletionAdapter<ContactMedicalImages>
      _contactMedicalImagesDeletionAdapter;

  @override
  Future<List<ContactMedicalImages>>
      getContactMedicalImagesByContactMedicalImageTypeId(
          int contactMedicalImageTypeId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contacts_medical_images WHERE contact_medical_images_type_id = ?1',
        mapper: (Map<String, Object?> row) => ContactMedicalImages(id: row['id'] as int, contactMedicalImagesTypeId: row['contact_medical_images_type_id'] as int, imagePath: row['image_path'] as String, reportType: row['report_type'] as String, reportSubType: row['report_sub_type'] as String, date: row['date'] as String, isOcrEnabled: (row['is_ocr_enabled'] as int) != 0, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactMedicalImageTypeId]);
  }

  @override
  Future<List<ContactMedicalImages>>
      getContactMedicalImagesByContactMedicalRecordId(
          int contactMedicalRecordId) async {
    return _queryAdapter.queryList(
        'SELECT contacts_medical_images.* FROM contacts_medical_images, contacts_medical_images_type WHERE contacts_medical_images_type.contact_medical_record_id = ?1 AND contacts_medical_images_type.id = contacts_medical_images.contact_medical_images_type_id',
        mapper: (Map<String, Object?> row) => ContactMedicalImages(id: row['id'] as int, contactMedicalImagesTypeId: row['contact_medical_images_type_id'] as int, imagePath: row['image_path'] as String, reportType: row['report_type'] as String, reportSubType: row['report_sub_type'] as String, date: row['date'] as String, isOcrEnabled: (row['is_ocr_enabled'] as int) != 0, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactMedicalRecordId]);
  }

  @override
  Future<String?> getImagePathByContactMedicalImageTypeId(
      int contactMedicalImageTypeId) async {
    return _queryAdapter.query(
        'SELECT image_path FROM contacts_medical_images WHERE contact_medical_images_type_id = ?1 LIMIT 1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [contactMedicalImageTypeId]);
  }

  @override
  Future<void> insert(ContactMedicalImages object) async {
    await _contactMedicalImagesInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedicalImages object) async {
    await _contactMedicalImagesInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedicalImages> list) async {
    await _contactMedicalImagesInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedicalImages> list) async {
    await _contactMedicalImagesInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedicalImages object) async {
    await _contactMedicalImagesUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedicalImages> list) async {
    await _contactMedicalImagesUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedicalImages object) async {
    await _contactMedicalImagesDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedicalImages> list) async {
    await _contactMedicalImagesDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicalRecordDao extends ContactMedicalRecordDao {
  _$ContactMedicalRecordDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactMedicalRecordInsertionAdapter = InsertionAdapter(
            database,
            'contacts_medical_record',
            (ContactMedicalRecord item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'institution_name': item.institutionName,
                  'provider_name': item.providerName,
                  'record_date': item.recordDate,
                  'notes': item.notes,
                  'custom_report_name': item.customReportName,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalRecordUpdateAdapter = UpdateAdapter(
            database,
            'contacts_medical_record',
            ['id'],
            (ContactMedicalRecord item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'institution_name': item.institutionName,
                  'provider_name': item.providerName,
                  'record_date': item.recordDate,
                  'notes': item.notes,
                  'custom_report_name': item.customReportName,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicalRecordDeletionAdapter = DeletionAdapter(
            database,
            'contacts_medical_record',
            ['id'],
            (ContactMedicalRecord item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'module_id': item.moduleId,
                  'institution_name': item.institutionName,
                  'provider_name': item.providerName,
                  'record_date': item.recordDate,
                  'notes': item.notes,
                  'custom_report_name': item.customReportName,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactMedicalRecord>
      _contactMedicalRecordInsertionAdapter;

  final UpdateAdapter<ContactMedicalRecord> _contactMedicalRecordUpdateAdapter;

  final DeletionAdapter<ContactMedicalRecord>
      _contactMedicalRecordDeletionAdapter;

  @override
  Future<ContactMedicalRecord?> getContactMedicalRecordById(
      int contactMedicalRecordId) async {
    return _queryAdapter.query(
        'SELECT * FROM contacts_medical_record WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ContactMedicalRecord(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            moduleId: row['module_id'] as int,
            institutionName: row['institution_name'] as String,
            providerName: row['provider_name'] as String,
            recordDate: row['record_date'] as String,
            notes: row['notes'] as String,
            customReportName: row['custom_report_name'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactMedicalRecordId]);
  }

  @override
  Future<List<ClinicalRecord>> getDashboardClinicalRecords(
    int contactId,
    String tagType,
  ) async {
    return _queryAdapter.queryList(
        'SELECT contacts_medical_record.*, contacts_medical_images_type.id as contacts_medical_images_type_id, contacts_medical_images_type.report_type,      contacts_medical_images_type.report_sub_type FROM contacts_medical_record, contacts_medical_images_type, tags      WHERE contacts_medical_record.contact_id = ?1 AND contacts_medical_record.module_id = 4      AND contacts_medical_record.id = contacts_medical_images_type.contact_medical_record_id      AND contacts_medical_images_type.report_type = tags.tag_id      AND tags.tag_type = ?2      ORDER BY contacts_medical_record.id DESC LIMIT 2',
        mapper: (Map<String, Object?> row) => ClinicalRecord(contactsMedicalImagesTypeId: row['contacts_medical_images_type_id'] as int?, reportType: row['report_type'] as int?, reportSubType: row['report_sub_type'] as int?, id: row['id'] as int, contactId: row['contact_id'] as int, moduleId: row['module_id'] as int, institutionName: row['institution_name'] as String, providerName: row['provider_name'] as String, recordDate: row['record_date'] as String, notes: row['notes'] as String, customReportName: row['custom_report_name'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactId, tagType]);
  }

  @override
  Future<List<ClinicalRecord>> getClinicalRecords(
    int contactId,
    String tagType,
  ) async {
    return _queryAdapter.queryList(
        'SELECT contacts_medical_record.*, contacts_medical_images_type.id as contacts_medical_images_type_id, contacts_medical_images_type.report_type,      contacts_medical_images_type.report_sub_type FROM contacts_medical_record, contacts_medical_images_type, tags      WHERE contacts_medical_record.contact_id = ?1 AND contacts_medical_record.module_id = 4      AND contacts_medical_record.id = contacts_medical_images_type.contact_medical_record_id      AND contacts_medical_images_type.report_type = tags.tag_id      AND tags.tag_type = ?2      ORDER BY contacts_medical_record.record_date DESC',
        mapper: (Map<String, Object?> row) => ClinicalRecord(contactsMedicalImagesTypeId: row['contacts_medical_images_type_id'] as int?, reportType: row['report_type'] as int?, reportSubType: row['report_sub_type'] as int?, id: row['id'] as int, contactId: row['contact_id'] as int, moduleId: row['module_id'] as int, institutionName: row['institution_name'] as String, providerName: row['provider_name'] as String, recordDate: row['record_date'] as String, notes: row['notes'] as String, customReportName: row['custom_report_name'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactId, tagType]);
  }

  @override
  Future<void> insert(ContactMedicalRecord object) async {
    await _contactMedicalRecordInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedicalRecord object) async {
    await _contactMedicalRecordInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedicalRecord> list) async {
    await _contactMedicalRecordInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedicalRecord> list) async {
    await _contactMedicalRecordInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedicalRecord object) async {
    await _contactMedicalRecordUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedicalRecord> list) async {
    await _contactMedicalRecordUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedicalRecord object) async {
    await _contactMedicalRecordDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedicalRecord> list) async {
    await _contactMedicalRecordDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicationDao extends ContactMedicationDao {
  _$ContactMedicationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactMedicationInsertionAdapter = InsertionAdapter(
            database,
            'contact_medication',
            (ContactMedication item) => <String, Object?>{
                  'id': item.id,
                  'medicine_id': item.medicineId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'generic_name': item.genericName,
                  'name': item.name,
                  'medicine_type': item.medicineType,
                  'no_of_quantity': item.noOfQuantity,
                  'dosage': item.dosage,
                  'duration': item.duration,
                  'frequency': item.frequency,
                  'start_date': item.startDate,
                  'end_date': item.endDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'is_ongoing': item.isOngoing ? 1 : 0,
                  'type': item.type,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'med_id': item.medId,
                  'med_brand_name': item.medBrandName,
                  'med_generic_name': item.medGenericName,
                  'med_short_name': item.medShortName,
                  'med_company': item.medCompany,
                  'med_category': item.medCategory,
                  'med_created_date': item.medCreatedDate,
                  'med_updated_date': item.medUpdatedDate,
                  'med_created_uid': item.medCreatedUid,
                  'med_updated_uid': item.medUpdatedUid
                }),
        _contactMedicationUpdateAdapter = UpdateAdapter(
            database,
            'contact_medication',
            ['id'],
            (ContactMedication item) => <String, Object?>{
                  'id': item.id,
                  'medicine_id': item.medicineId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'generic_name': item.genericName,
                  'name': item.name,
                  'medicine_type': item.medicineType,
                  'no_of_quantity': item.noOfQuantity,
                  'dosage': item.dosage,
                  'duration': item.duration,
                  'frequency': item.frequency,
                  'start_date': item.startDate,
                  'end_date': item.endDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'is_ongoing': item.isOngoing ? 1 : 0,
                  'type': item.type,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'med_id': item.medId,
                  'med_brand_name': item.medBrandName,
                  'med_generic_name': item.medGenericName,
                  'med_short_name': item.medShortName,
                  'med_company': item.medCompany,
                  'med_category': item.medCategory,
                  'med_created_date': item.medCreatedDate,
                  'med_updated_date': item.medUpdatedDate,
                  'med_created_uid': item.medCreatedUid,
                  'med_updated_uid': item.medUpdatedUid
                }),
        _contactMedicationDeletionAdapter = DeletionAdapter(
            database,
            'contact_medication',
            ['id'],
            (ContactMedication item) => <String, Object?>{
                  'id': item.id,
                  'medicine_id': item.medicineId,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'generic_name': item.genericName,
                  'name': item.name,
                  'medicine_type': item.medicineType,
                  'no_of_quantity': item.noOfQuantity,
                  'dosage': item.dosage,
                  'duration': item.duration,
                  'frequency': item.frequency,
                  'start_date': item.startDate,
                  'end_date': item.endDate,
                  'is_reminder_set': item.isReminder ? 1 : 0,
                  'is_ongoing': item.isOngoing ? 1 : 0,
                  'type': item.type,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'med_id': item.medId,
                  'med_brand_name': item.medBrandName,
                  'med_generic_name': item.medGenericName,
                  'med_short_name': item.medShortName,
                  'med_company': item.medCompany,
                  'med_category': item.medCategory,
                  'med_created_date': item.medCreatedDate,
                  'med_updated_date': item.medUpdatedDate,
                  'med_created_uid': item.medCreatedUid,
                  'med_updated_uid': item.medUpdatedUid
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactMedication> _contactMedicationInsertionAdapter;

  final UpdateAdapter<ContactMedication> _contactMedicationUpdateAdapter;

  final DeletionAdapter<ContactMedication> _contactMedicationDeletionAdapter;

  @override
  Future<List<ContactMedication>> _getMedicationsByContactIdAndType(
    int contactId,
    String type,
  ) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_medication WHERE contact_medical_record_id IN (SELECT id FROM contacts_medical_record WHERE contact_id = ?1) AND type = ?2',
        mapper: (Map<String, Object?> row) => ContactMedication(id: row['id'] as int, medicineId: row['medicine_id'] as int, contactMedicalRecordId: row['contact_medical_record_id'] as int, genericName: row['generic_name'] as String, name: row['name'] as String, medicineType: row['medicine_type'] as String, noOfQuantity: row['no_of_quantity'] as String, dosage: row['dosage'] as int, duration: row['duration'] as int, frequency: row['frequency'] as String, startDate: row['start_date'] as String, endDate: row['end_date'] as String, isReminder: (row['is_reminder_set'] as int) != 0, isOngoing: (row['is_ongoing'] as int) != 0, type: row['type'] as String, notes: row['notes'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String, medId: row['med_id'] as int, medBrandName: row['med_brand_name'] as String, medGenericName: row['med_generic_name'] as String, medShortName: row['med_short_name'] as String, medCompany: row['med_company'] as String, medCategory: row['med_category'] as String, medCreatedDate: row['med_created_date'] as String, medUpdatedDate: row['med_updated_date'] as String, medCreatedUid: row['med_created_uid'] as int, medUpdatedUid: row['med_updated_uid'] as int),
        arguments: [contactId, type]);
  }

  @override
  Future<ContactMedication?> getContactMedicationById(
      int contactMedicationId) async {
    return _queryAdapter.query('SELECT * FROM contact_medication WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ContactMedication(
            id: row['id'] as int,
            medicineId: row['medicine_id'] as int,
            contactMedicalRecordId: row['contact_medical_record_id'] as int,
            genericName: row['generic_name'] as String,
            name: row['name'] as String,
            medicineType: row['medicine_type'] as String,
            noOfQuantity: row['no_of_quantity'] as String,
            dosage: row['dosage'] as int,
            duration: row['duration'] as int,
            frequency: row['frequency'] as String,
            startDate: row['start_date'] as String,
            endDate: row['end_date'] as String,
            isReminder: (row['is_reminder_set'] as int) != 0,
            isOngoing: (row['is_ongoing'] as int) != 0,
            type: row['type'] as String,
            notes: row['notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String,
            medId: row['med_id'] as int,
            medBrandName: row['med_brand_name'] as String,
            medGenericName: row['med_generic_name'] as String,
            medShortName: row['med_short_name'] as String,
            medCompany: row['med_company'] as String,
            medCategory: row['med_category'] as String,
            medCreatedDate: row['med_created_date'] as String,
            medUpdatedDate: row['med_updated_date'] as String,
            medCreatedUid: row['med_created_uid'] as int,
            medUpdatedUid: row['med_updated_uid'] as int),
        arguments: [contactMedicationId]);
  }

  @override
  Future<ContactMedication?> getContactMedicationByContactMedicationReminderId(
      int contactMedicationReminderId) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_medication WHERE id IN (SELECT contact_medication_id FROM contact_medication_reminder WHERE id = ?1)',
        mapper: (Map<String, Object?> row) => ContactMedication(id: row['id'] as int, medicineId: row['medicine_id'] as int, contactMedicalRecordId: row['contact_medical_record_id'] as int, genericName: row['generic_name'] as String, name: row['name'] as String, medicineType: row['medicine_type'] as String, noOfQuantity: row['no_of_quantity'] as String, dosage: row['dosage'] as int, duration: row['duration'] as int, frequency: row['frequency'] as String, startDate: row['start_date'] as String, endDate: row['end_date'] as String, isReminder: (row['is_reminder_set'] as int) != 0, isOngoing: (row['is_ongoing'] as int) != 0, type: row['type'] as String, notes: row['notes'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String, medId: row['med_id'] as int, medBrandName: row['med_brand_name'] as String, medGenericName: row['med_generic_name'] as String, medShortName: row['med_short_name'] as String, medCompany: row['med_company'] as String, medCategory: row['med_category'] as String, medCreatedDate: row['med_created_date'] as String, medUpdatedDate: row['med_updated_date'] as String, medCreatedUid: row['med_created_uid'] as int, medUpdatedUid: row['med_updated_uid'] as int),
        arguments: [contactMedicationReminderId]);
  }

  @override
  Future<List<ContactMedicationReminder>> findRemindersByContactMedicationId(
      int contactMedicationId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_medication_reminder WHERE contact_medication_id = ?1',
        mapper: (Map<String, Object?> row) => ContactMedicationReminder(id: row['id'] as int, contactMedicationId: row['contact_medication_id'] as int, time: row['time'] as String, dateDay: row['date_day'] as String, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactMedicationId]);
  }

  @override
  Future<void> insert(ContactMedication object) async {
    await _contactMedicationInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedication object) async {
    await _contactMedicationInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedication> list) async {
    await _contactMedicationInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedication> list) async {
    await _contactMedicationInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedication object) async {
    await _contactMedicationUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedication> list) async {
    await _contactMedicationUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedication object) async {
    await _contactMedicationDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedication> list) async {
    await _contactMedicationDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicationReminderDao extends ContactMedicationReminderDao {
  _$ContactMedicationReminderDao(
    this.database,
    this.changeListener,
  )   : _contactMedicationReminderInsertionAdapter = InsertionAdapter(
            database,
            'contact_medication_reminder',
            (ContactMedicationReminder item) => <String, Object?>{
                  'id': item.id,
                  'contact_medication_id': item.contactMedicationId,
                  'time': item.time,
                  'date_day': item.dateDay,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicationReminderUpdateAdapter = UpdateAdapter(
            database,
            'contact_medication_reminder',
            ['id'],
            (ContactMedicationReminder item) => <String, Object?>{
                  'id': item.id,
                  'contact_medication_id': item.contactMedicationId,
                  'time': item.time,
                  'date_day': item.dateDay,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicationReminderDeletionAdapter = DeletionAdapter(
            database,
            'contact_medication_reminder',
            ['id'],
            (ContactMedicationReminder item) => <String, Object?>{
                  'id': item.id,
                  'contact_medication_id': item.contactMedicationId,
                  'time': item.time,
                  'date_day': item.dateDay,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final InsertionAdapter<ContactMedicationReminder>
      _contactMedicationReminderInsertionAdapter;

  final UpdateAdapter<ContactMedicationReminder>
      _contactMedicationReminderUpdateAdapter;

  final DeletionAdapter<ContactMedicationReminder>
      _contactMedicationReminderDeletionAdapter;

  @override
  Future<void> insert(ContactMedicationReminder object) async {
    await _contactMedicationReminderInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedicationReminder object) async {
    await _contactMedicationReminderInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedicationReminder> list) async {
    await _contactMedicationReminderInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedicationReminder> list) async {
    await _contactMedicationReminderInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedicationReminder object) async {
    await _contactMedicationReminderUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedicationReminder> list) async {
    await _contactMedicationReminderUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedicationReminder object) async {
    await _contactMedicationReminderDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedicationReminder> list) async {
    await _contactMedicationReminderDeletionAdapter.deleteList(list);
  }
}

class _$ContactMedicineAllergiesDao extends ContactMedicineAllergiesDao {
  _$ContactMedicineAllergiesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactMedicineAllergiesInsertionAdapter = InsertionAdapter(
            database,
            'contact_medicine_allergies',
            (ContactMedicineAllergies item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'medicine_id': item.medicineId,
                  'generic_name': item.genericName,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicineAllergiesUpdateAdapter = UpdateAdapter(
            database,
            'contact_medicine_allergies',
            ['id'],
            (ContactMedicineAllergies item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'medicine_id': item.medicineId,
                  'generic_name': item.genericName,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactMedicineAllergiesDeletionAdapter = DeletionAdapter(
            database,
            'contact_medicine_allergies',
            ['id'],
            (ContactMedicineAllergies item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'medicine_id': item.medicineId,
                  'generic_name': item.genericName,
                  'notes': item.notes,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactMedicineAllergies>
      _contactMedicineAllergiesInsertionAdapter;

  final UpdateAdapter<ContactMedicineAllergies>
      _contactMedicineAllergiesUpdateAdapter;

  final DeletionAdapter<ContactMedicineAllergies>
      _contactMedicineAllergiesDeletionAdapter;

  @override
  Future<List<ContactMedicineAllergies>> getDrugAllergiesByContactId(
      int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_medicine_allergies WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactMedicineAllergies(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            medicineId: row['medicine_id'] as int,
            genericName: row['generic_name'] as String,
            notes: row['notes'] as String,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactMedicineAllergies object) async {
    await _contactMedicineAllergiesInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactMedicineAllergies object) async {
    await _contactMedicineAllergiesInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactMedicineAllergies> list) async {
    await _contactMedicineAllergiesInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactMedicineAllergies> list) async {
    await _contactMedicineAllergiesInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactMedicineAllergies object) async {
    await _contactMedicineAllergiesUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactMedicineAllergies> list) async {
    await _contactMedicineAllergiesUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactMedicineAllergies object) async {
    await _contactMedicineAllergiesDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactMedicineAllergies> list) async {
    await _contactMedicineAllergiesDeletionAdapter.deleteList(list);
  }
}

class _$ContactRelationShipDao extends ContactRelationShipDao {
  _$ContactRelationShipDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactRelationshipInsertionAdapter = InsertionAdapter(
            database,
            'contact_relationship',
            (ContactRelationship item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'related_contact_id': item.relatedContactId,
                  'relationship_type': item.relationshipType,
                  'is_emergency_contact': item.isEmergencyContact ? 1 : 0,
                  'is_linked_profile': item.isLinkedProfile ? 1 : 0,
                  'is_children': item.isChildren ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactRelationshipUpdateAdapter = UpdateAdapter(
            database,
            'contact_relationship',
            ['id'],
            (ContactRelationship item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'related_contact_id': item.relatedContactId,
                  'relationship_type': item.relationshipType,
                  'is_emergency_contact': item.isEmergencyContact ? 1 : 0,
                  'is_linked_profile': item.isLinkedProfile ? 1 : 0,
                  'is_children': item.isChildren ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactRelationshipDeletionAdapter = DeletionAdapter(
            database,
            'contact_relationship',
            ['id'],
            (ContactRelationship item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'related_contact_id': item.relatedContactId,
                  'relationship_type': item.relationshipType,
                  'is_emergency_contact': item.isEmergencyContact ? 1 : 0,
                  'is_linked_profile': item.isLinkedProfile ? 1 : 0,
                  'is_children': item.isChildren ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactRelationship>
      _contactRelationshipInsertionAdapter;

  final UpdateAdapter<ContactRelationship> _contactRelationshipUpdateAdapter;

  final DeletionAdapter<ContactRelationship>
      _contactRelationshipDeletionAdapter;

  @override
  Future<List<EmergencyContacts>> getEmergencyContactsByContactId(
      int contactId) async {
    return _queryAdapter.queryList(
        'SELECT contacts.*, contact_relationship.relationship_type, contact_relationship.is_linked_profile, contact_address.address1 FROM contacts, contact_relationship, contact_address WHERE contact_relationship.contact_id = ?1 AND contacts.id = contact_relationship.related_contact_id AND contact_relationship.related_contact_id = contact_address.contact_id AND contact_relationship.is_emergency_contact = 1',
        mapper: (Map<String, Object?> row) => EmergencyContacts(id: row['id'] as int, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, dateOfBirth: row['date_of_birth'] as String?, countryOfBirth: row['country_of_birth'] as String?, estimatedAge: row['estimated_age'] as String?, gender: row['gender'] as String?, status: row['status'] == null ? null : (row['status'] as int) != 0, nationality: row['nationality'] as String?, nationalId: row['national_id'] as String?, nidPhotoOne: row['nid_photo_one'] as String?, nidPhotoTwo: row['nid_photo_two'] as String?, haveMedicalInsurance: row['have_medical_insurance'] == null ? null : (row['have_medical_insurance'] as int) != 0, noOfChildren: row['no_of_children'] as int?, medicalInsuranceName: row['medical_insurance_name'] as String?, medicalInsuranceId: row['medical_insurance_id'] as String?, midPhotoOne: row['mid_photo_one'] as String?, midPhotoTwo: row['mid_photo_two'] as String?, ethnicity: row['ethnicity'] as String?, religion: row['religion'] as String?, occupation: row['occupation'] as String?, educationLevel: row['education_level'] as String?, meritalStatus: row['merital_status'] as String?, haveChildren: row['have_children'] == null ? null : (row['have_children'] as int) != 0, bloodGroup: row['blood_group'] as String?, email: row['email'] as String?, username: row['username'] as String?, phone: row['phone'] as String?, height: row['height'] as String?, weight: row['weight'] as String?, bmi: row['bmi'] as String?, alergies: row['alergies'] as String?, profilePhoto: row['profile_photo'] as String?, isFindable: row['is_findable'] == null ? null : (row['is_findable'] as int) != 0, createdDate: row['created_date'] as String?, createdUid: row['created_uid'] as int?, updatedDate: row['updated_date'] as String?, updatedUid: row['updated_uid'] as int?, relationshipType: row['relationship_type'] as String?, address: row['address1'] as String?, isLinkedProfile: row['is_linked_profile'] == null ? null : (row['is_linked_profile'] as int) != 0),
        arguments: [contactId]);
  }

  @override
  Future<ContactRelationship?> getContactRelationshipByRelatedContactId(
      int relatedContactId) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_relationship WHERE related_contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactRelationship(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            relatedContactId: row['related_contact_id'] as int,
            relationshipType: row['relationship_type'] as String,
            isEmergencyContact: (row['is_emergency_contact'] as int) != 0,
            isLinkedProfile: (row['is_linked_profile'] as int) != 0,
            isChildren: (row['is_children'] as int) != 0,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [relatedContactId]);
  }

  @override
  Future<List<Children>> getChildrenContactsByContactId(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT contacts.*, contact_relationship.relationship_type, contact_relationship.is_linked_profile FROM contacts, contact_relationship WHERE contact_relationship.contact_id = ?1 AND contacts.id = contact_relationship.related_contact_id AND contact_relationship.is_children = 1',
        mapper: (Map<String, Object?> row) => Children(relationshipType: row['relationshipType'] as String?, isLinkedProfile: row['isLinkedProfile'] == null ? null : (row['isLinkedProfile'] as int) != 0, birthWeight: row['birthWeight'] as String?, typeOfDelivery: row['typeOfDelivery'] as String?, isExpanded: (row['isExpanded'] as int) != 0, id: row['id'] as int, firstName: row['first_name'] as String?, lastName: row['last_name'] as String?, dateOfBirth: row['date_of_birth'] as String?, countryOfBirth: row['country_of_birth'] as String?, estimatedAge: row['estimated_age'] as String?, gender: row['gender'] as String?, status: row['status'] == null ? null : (row['status'] as int) != 0, nationality: row['nationality'] as String?, nationalId: row['national_id'] as String?, nidPhotoOne: row['nid_photo_one'] as String?, nidPhotoTwo: row['nid_photo_two'] as String?, haveMedicalInsurance: row['have_medical_insurance'] == null ? null : (row['have_medical_insurance'] as int) != 0, noOfChildren: row['no_of_children'] as int?, medicalInsuranceName: row['medical_insurance_name'] as String?, medicalInsuranceId: row['medical_insurance_id'] as String?, midPhotoOne: row['mid_photo_one'] as String?, midPhotoTwo: row['mid_photo_two'] as String?, ethnicity: row['ethnicity'] as String?, religion: row['religion'] as String?, occupation: row['occupation'] as String?, educationLevel: row['education_level'] as String?, meritalStatus: row['merital_status'] as String?, haveChildren: row['have_children'] == null ? null : (row['have_children'] as int) != 0, bloodGroup: row['blood_group'] as String?, email: row['email'] as String?, username: row['username'] as String?, phone: row['phone'] as String?, height: row['height'] as String?, weight: row['weight'] as String?, bmi: row['bmi'] as String?, alergies: row['alergies'] as String?, profilePhoto: row['profile_photo'] as String?, isFindable: row['is_findable'] == null ? null : (row['is_findable'] as int) != 0, createdDate: row['created_date'] as String?, createdUid: row['created_uid'] as int?, updatedDate: row['updated_date'] as String?, updatedUid: row['updated_uid'] as int?),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactRelationship object) async {
    await _contactRelationshipInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactRelationship object) async {
    await _contactRelationshipInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactRelationship> list) async {
    await _contactRelationshipInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactRelationship> list) async {
    await _contactRelationshipInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactRelationship object) async {
    await _contactRelationshipUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactRelationship> list) async {
    await _contactRelationshipUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactRelationship object) async {
    await _contactRelationshipDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactRelationship> list) async {
    await _contactRelationshipDeletionAdapter.deleteList(list);
  }
}

class _$ContactsAttributeDao extends ContactsAttributeDao {
  _$ContactsAttributeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactsAttributeInsertionAdapter = InsertionAdapter(
            database,
            'contacts_attribute',
            (ContactsAttribute item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'title': item.title,
                  'attribute_key': item.attributeKey,
                  'attribute_value': item.attributeValue,
                  'order_number': item.orderNumber,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _contactsAttributeUpdateAdapter = UpdateAdapter(
            database,
            'contacts_attribute',
            ['id'],
            (ContactsAttribute item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'title': item.title,
                  'attribute_key': item.attributeKey,
                  'attribute_value': item.attributeValue,
                  'order_number': item.orderNumber,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _contactsAttributeDeletionAdapter = DeletionAdapter(
            database,
            'contacts_attribute',
            ['id'],
            (ContactsAttribute item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'title': item.title,
                  'attribute_key': item.attributeKey,
                  'attribute_value': item.attributeValue,
                  'order_number': item.orderNumber,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactsAttribute> _contactsAttributeInsertionAdapter;

  final UpdateAdapter<ContactsAttribute> _contactsAttributeUpdateAdapter;

  final DeletionAdapter<ContactsAttribute> _contactsAttributeDeletionAdapter;

  @override
  Future<List<ContactsAttribute>> getContactsAttributeById(
      int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contacts_attribute WHERE contact_id = ?1 ORDER BY order_number',
        mapper: (Map<String, Object?> row) => ContactsAttribute(id: row['id'] as int, contactId: row['contact_id'] as int, title: row['title'] as String, attributeKey: row['attribute_key'] as String, attributeValue: row['attribute_value'] as String, orderNumber: row['order_number'] as int, createdDate: row['created_date'] as String, createdUid: row['created_uid'] as int, updatedDate: row['updated_date'] as String, updatedUid: row['updated_uid'] as int),
        arguments: [contactId]);
  }

  @override
  Future<String?> getChildBirthWeight(int childContactId) async {
    return _queryAdapter.query(
        'SELECT contacts_attribute.attribute_value FROM contacts_attribute WHERE contacts_attribute.contact_id = ?1 AND contacts_attribute.attribute_key = \"birth_weight\"',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [childContactId]);
  }

  @override
  Future<String?> getChildDeliveryType(int childContactId) async {
    return _queryAdapter.query(
        'SELECT contacts_attribute.attribute_value FROM contacts_attribute WHERE contacts_attribute.contact_id = ?1 AND contacts_attribute.attribute_key = \"type_of_delivery\"',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [childContactId]);
  }

  @override
  Future<List<ContactsAttribute>> getContactsAttributeListById(
      int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contacts_attribute WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ContactsAttribute(
            id: row['id'] as int,
            contactId: row['contact_id'] as int,
            title: row['title'] as String,
            attributeKey: row['attribute_key'] as String,
            attributeValue: row['attribute_value'] as String,
            orderNumber: row['order_number'] as int,
            createdDate: row['created_date'] as String,
            createdUid: row['created_uid'] as int,
            updatedDate: row['updated_date'] as String,
            updatedUid: row['updated_uid'] as int),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactsAttribute object) async {
    await _contactsAttributeInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactsAttribute object) async {
    await _contactsAttributeInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactsAttribute> list) async {
    await _contactsAttributeInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactsAttribute> list) async {
    await _contactsAttributeInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactsAttribute object) async {
    await _contactsAttributeUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactsAttribute> list) async {
    await _contactsAttributeUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactsAttribute object) async {
    await _contactsAttributeDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactsAttribute> list) async {
    await _contactsAttributeDeletionAdapter.deleteList(list);
  }
}

class _$ContactsDao extends ContactsDao {
  _$ContactsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactsInsertionAdapter = InsertionAdapter(
            database,
            'contacts',
            (Contacts item) => <String, Object?>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'date_of_birth': item.dateOfBirth,
                  'country_of_birth': item.countryOfBirth,
                  'estimated_age': item.estimatedAge,
                  'gender': item.gender,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'nationality': item.nationality,
                  'national_id': item.nationalId,
                  'nid_photo_one': item.nidPhotoOne,
                  'nid_photo_two': item.nidPhotoTwo,
                  'have_medical_insurance': item.haveMedicalInsurance == null
                      ? null
                      : (item.haveMedicalInsurance! ? 1 : 0),
                  'no_of_children': item.noOfChildren,
                  'medical_insurance_name': item.medicalInsuranceName,
                  'medical_insurance_id': item.medicalInsuranceId,
                  'mid_photo_one': item.midPhotoOne,
                  'mid_photo_two': item.midPhotoTwo,
                  'ethnicity': item.ethnicity,
                  'religion': item.religion,
                  'occupation': item.occupation,
                  'education_level': item.educationLevel,
                  'merital_status': item.meritalStatus,
                  'have_children': item.haveChildren == null
                      ? null
                      : (item.haveChildren! ? 1 : 0),
                  'blood_group': item.bloodGroup,
                  'email': item.email,
                  'username': item.username,
                  'phone': item.phone,
                  'height': item.height,
                  'weight': item.weight,
                  'bmi': item.bmi,
                  'alergies': item.alergies,
                  'profile_photo': item.profilePhoto,
                  'is_findable': item.isFindable == null
                      ? null
                      : (item.isFindable! ? 1 : 0),
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'createdBy': item.createdBy,
                  'updatedBy': item.updatedBy,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _contactsUpdateAdapter = UpdateAdapter(
            database,
            'contacts',
            ['id'],
            (Contacts item) => <String, Object?>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'date_of_birth': item.dateOfBirth,
                  'country_of_birth': item.countryOfBirth,
                  'estimated_age': item.estimatedAge,
                  'gender': item.gender,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'nationality': item.nationality,
                  'national_id': item.nationalId,
                  'nid_photo_one': item.nidPhotoOne,
                  'nid_photo_two': item.nidPhotoTwo,
                  'have_medical_insurance': item.haveMedicalInsurance == null
                      ? null
                      : (item.haveMedicalInsurance! ? 1 : 0),
                  'no_of_children': item.noOfChildren,
                  'medical_insurance_name': item.medicalInsuranceName,
                  'medical_insurance_id': item.medicalInsuranceId,
                  'mid_photo_one': item.midPhotoOne,
                  'mid_photo_two': item.midPhotoTwo,
                  'ethnicity': item.ethnicity,
                  'religion': item.religion,
                  'occupation': item.occupation,
                  'education_level': item.educationLevel,
                  'merital_status': item.meritalStatus,
                  'have_children': item.haveChildren == null
                      ? null
                      : (item.haveChildren! ? 1 : 0),
                  'blood_group': item.bloodGroup,
                  'email': item.email,
                  'username': item.username,
                  'phone': item.phone,
                  'height': item.height,
                  'weight': item.weight,
                  'bmi': item.bmi,
                  'alergies': item.alergies,
                  'profile_photo': item.profilePhoto,
                  'is_findable': item.isFindable == null
                      ? null
                      : (item.isFindable! ? 1 : 0),
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'createdBy': item.createdBy,
                  'updatedBy': item.updatedBy,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _contactsDeletionAdapter = DeletionAdapter(
            database,
            'contacts',
            ['id'],
            (Contacts item) => <String, Object?>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'date_of_birth': item.dateOfBirth,
                  'country_of_birth': item.countryOfBirth,
                  'estimated_age': item.estimatedAge,
                  'gender': item.gender,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'nationality': item.nationality,
                  'national_id': item.nationalId,
                  'nid_photo_one': item.nidPhotoOne,
                  'nid_photo_two': item.nidPhotoTwo,
                  'have_medical_insurance': item.haveMedicalInsurance == null
                      ? null
                      : (item.haveMedicalInsurance! ? 1 : 0),
                  'no_of_children': item.noOfChildren,
                  'medical_insurance_name': item.medicalInsuranceName,
                  'medical_insurance_id': item.medicalInsuranceId,
                  'mid_photo_one': item.midPhotoOne,
                  'mid_photo_two': item.midPhotoTwo,
                  'ethnicity': item.ethnicity,
                  'religion': item.religion,
                  'occupation': item.occupation,
                  'education_level': item.educationLevel,
                  'merital_status': item.meritalStatus,
                  'have_children': item.haveChildren == null
                      ? null
                      : (item.haveChildren! ? 1 : 0),
                  'blood_group': item.bloodGroup,
                  'email': item.email,
                  'username': item.username,
                  'phone': item.phone,
                  'height': item.height,
                  'weight': item.weight,
                  'bmi': item.bmi,
                  'alergies': item.alergies,
                  'profile_photo': item.profilePhoto,
                  'is_findable': item.isFindable == null
                      ? null
                      : (item.isFindable! ? 1 : 0),
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'createdBy': item.createdBy,
                  'updatedBy': item.updatedBy,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Contacts> _contactsInsertionAdapter;

  final UpdateAdapter<Contacts> _contactsUpdateAdapter;

  final DeletionAdapter<Contacts> _contactsDeletionAdapter;

  @override
  Future<Contacts?> getLiveContactById(int contactId) async {
    return _queryAdapter.query('SELECT * FROM contacts WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Contacts(
            id: row['id'] as int,
            firstName: row['first_name'] as String?,
            lastName: row['last_name'] as String?,
            dateOfBirth: row['date_of_birth'] as String?,
            countryOfBirth: row['country_of_birth'] as String?,
            estimatedAge: row['estimated_age'] as String?,
            gender: row['gender'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            nationality: row['nationality'] as String?,
            nationalId: row['national_id'] as String?,
            nidPhotoOne: row['nid_photo_one'] as String?,
            nidPhotoTwo: row['nid_photo_two'] as String?,
            haveMedicalInsurance: row['have_medical_insurance'] == null
                ? null
                : (row['have_medical_insurance'] as int) != 0,
            noOfChildren: row['no_of_children'] as int?,
            medicalInsuranceName: row['medical_insurance_name'] as String?,
            medicalInsuranceId: row['medical_insurance_id'] as String?,
            midPhotoOne: row['mid_photo_one'] as String?,
            midPhotoTwo: row['mid_photo_two'] as String?,
            ethnicity: row['ethnicity'] as String?,
            religion: row['religion'] as String?,
            occupation: row['occupation'] as String?,
            educationLevel: row['education_level'] as String?,
            meritalStatus: row['merital_status'] as String?,
            haveChildren: row['have_children'] == null
                ? null
                : (row['have_children'] as int) != 0,
            bloodGroup: row['blood_group'] as String?,
            email: row['email'] as String?,
            username: row['username'] as String?,
            phone: row['phone'] as String?,
            height: row['height'] as String?,
            weight: row['weight'] as String?,
            bmi: row['bmi'] as String?,
            alergies: row['alergies'] as String?,
            profilePhoto: row['profile_photo'] as String?,
            isFindable: row['is_findable'] == null
                ? null
                : (row['is_findable'] as int) != 0,
            createdDate: row['created_date'] as String?,
            createdUid: row['created_uid'] as int?,
            updatedDate: row['updated_date'] as String?,
            updatedUid: row['updated_uid'] as int?,
            createdBy: row['createdBy'] as String?,
            updatedBy: row['updatedBy'] as String?),
        arguments: [contactId]);
  }

  @override
  Future<Contacts?> getSingleContactById(int contactId) async {
    return _queryAdapter.query('SELECT * FROM contacts WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Contacts(
            id: row['id'] as int,
            firstName: row['first_name'] as String?,
            lastName: row['last_name'] as String?,
            dateOfBirth: row['date_of_birth'] as String?,
            countryOfBirth: row['country_of_birth'] as String?,
            estimatedAge: row['estimated_age'] as String?,
            gender: row['gender'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            nationality: row['nationality'] as String?,
            nationalId: row['national_id'] as String?,
            nidPhotoOne: row['nid_photo_one'] as String?,
            nidPhotoTwo: row['nid_photo_two'] as String?,
            haveMedicalInsurance: row['have_medical_insurance'] == null
                ? null
                : (row['have_medical_insurance'] as int) != 0,
            noOfChildren: row['no_of_children'] as int?,
            medicalInsuranceName: row['medical_insurance_name'] as String?,
            medicalInsuranceId: row['medical_insurance_id'] as String?,
            midPhotoOne: row['mid_photo_one'] as String?,
            midPhotoTwo: row['mid_photo_two'] as String?,
            ethnicity: row['ethnicity'] as String?,
            religion: row['religion'] as String?,
            occupation: row['occupation'] as String?,
            educationLevel: row['education_level'] as String?,
            meritalStatus: row['merital_status'] as String?,
            haveChildren: row['have_children'] == null
                ? null
                : (row['have_children'] as int) != 0,
            bloodGroup: row['blood_group'] as String?,
            email: row['email'] as String?,
            username: row['username'] as String?,
            phone: row['phone'] as String?,
            height: row['height'] as String?,
            weight: row['weight'] as String?,
            bmi: row['bmi'] as String?,
            alergies: row['alergies'] as String?,
            profilePhoto: row['profile_photo'] as String?,
            isFindable: row['is_findable'] == null
                ? null
                : (row['is_findable'] as int) != 0,
            createdDate: row['created_date'] as String?,
            createdUid: row['created_uid'] as int?,
            updatedDate: row['updated_date'] as String?,
            updatedUid: row['updated_uid'] as int?,
            createdBy: row['createdBy'] as String?,
            updatedBy: row['updatedBy'] as String?),
        arguments: [contactId]);
  }

  @override
  Future<Contacts?> getContactById(int contactId) async {
    return _queryAdapter.query('SELECT * FROM contacts WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Contacts(
            id: row['id'] as int,
            firstName: row['first_name'] as String?,
            lastName: row['last_name'] as String?,
            dateOfBirth: row['date_of_birth'] as String?,
            countryOfBirth: row['country_of_birth'] as String?,
            estimatedAge: row['estimated_age'] as String?,
            gender: row['gender'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            nationality: row['nationality'] as String?,
            nationalId: row['national_id'] as String?,
            nidPhotoOne: row['nid_photo_one'] as String?,
            nidPhotoTwo: row['nid_photo_two'] as String?,
            haveMedicalInsurance: row['have_medical_insurance'] == null
                ? null
                : (row['have_medical_insurance'] as int) != 0,
            noOfChildren: row['no_of_children'] as int?,
            medicalInsuranceName: row['medical_insurance_name'] as String?,
            medicalInsuranceId: row['medical_insurance_id'] as String?,
            midPhotoOne: row['mid_photo_one'] as String?,
            midPhotoTwo: row['mid_photo_two'] as String?,
            ethnicity: row['ethnicity'] as String?,
            religion: row['religion'] as String?,
            occupation: row['occupation'] as String?,
            educationLevel: row['education_level'] as String?,
            meritalStatus: row['merital_status'] as String?,
            haveChildren: row['have_children'] == null
                ? null
                : (row['have_children'] as int) != 0,
            bloodGroup: row['blood_group'] as String?,
            email: row['email'] as String?,
            username: row['username'] as String?,
            phone: row['phone'] as String?,
            height: row['height'] as String?,
            weight: row['weight'] as String?,
            bmi: row['bmi'] as String?,
            alergies: row['alergies'] as String?,
            profilePhoto: row['profile_photo'] as String?,
            isFindable: row['is_findable'] == null
                ? null
                : (row['is_findable'] as int) != 0,
            createdDate: row['created_date'] as String?,
            createdUid: row['created_uid'] as int?,
            updatedDate: row['updated_date'] as String?,
            updatedUid: row['updated_uid'] as int?,
            createdBy: row['createdBy'] as String?,
            updatedBy: row['updatedBy'] as String?),
        arguments: [contactId]);
  }

  @override
  Future<int?> haveChildren(int contactId) async {
    return _queryAdapter.query(
        'SELECT have_children FROM contacts WHERE id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [contactId]);
  }

  @override
  Future<List<LinkProfile?>> getLinkedProfiles(int parentContactId) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT contacts.* FROM contacts, contact_relationship WHERE contacts.id = ?1 OR (contact_relationship.contact_id = ?1 AND contact_relationship.is_linked_profile = 1 AND contacts.id = contact_relationship.related_contact_id) OR (contact_relationship.related_contact_id = ?1 AND contacts.id = contact_relationship.contact_id) ORDER BY contacts.id',
        mapper: (Map<String, Object?> row) => LinkProfile(row['id'] as int, row['first_name'] as String, row['last_name'] as String, row['date_of_birth'] as String, row['country_of_birth'] as String, row['estimated_age'] as String, row['gender'] as String, (row['status'] as int) != 0, row['nationality'] as String, row['national_id'] as String, row['nid_photo_one'] as String, row['nid_photo_two'] as String, (row['have_medical_insurance'] as int) != 0, row['no_of_children'] as int, row['medical_insurance_name'] as String, row['medical_insurance_id'] as String, row['mid_photo_one'] as String, row['mid_photo_two'] as String, row['ethnicity'] as String, row['religion'] as String, row['occupation'] as String, row['education_level'] as String, row['merital_status'] as String, (row['have_children'] as int) != 0, row['blood_group'] as String, row['email'] as String, row['username'] as String, row['phone'] as String, row['height'] as String, row['weight'] as String, row['bmi'] as String, row['alergies'] as String, row['profile_photo'] as String, (row['is_findable'] as int) != 0, row['created_date'] as String, row['created_uid'] as int, row['updated_date'] as String, row['updated_uid'] as int, isSelected: (row['isSelected'] as int) != 0),
        arguments: [parentContactId]);
  }

  @override
  Future<int?> getContactChildCount(int contactId) async {
    return _queryAdapter.query(
        'SELECT no_of_children FROM contacts WHERE id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [contactId]);
  }

  @override
  Future<void> insert(Contacts object) async {
    await _contactsInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Contacts object) async {
    await _contactsInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Contacts> list) async {
    await _contactsInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Contacts> list) async {
    await _contactsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Contacts object) async {
    await _contactsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Contacts> list) async {
    await _contactsUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Contacts object) async {
    await _contactsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Contacts> list) async {
    await _contactsDeletionAdapter.deleteList(list);
  }
}

class _$ContactsMedicalImagesTypeDao extends ContactsMedicalImagesTypeDao {
  _$ContactsMedicalImagesTypeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _contactsMedicalImagesTypeInsertionAdapter = InsertionAdapter(
            database,
            'contacts_medical_images_type',
            (ContactsMedicalImagesType item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactsMedicalImagesTypeUpdateAdapter = UpdateAdapter(
            database,
            'contacts_medical_images_type',
            ['id'],
            (ContactsMedicalImagesType item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactsMedicalImagesTypeDeletionAdapter = DeletionAdapter(
            database,
            'contacts_medical_images_type',
            ['id'],
            (ContactsMedicalImagesType item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'report_type': item.reportType,
                  'report_sub_type': item.reportSubType,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactsMedicalImagesType>
      _contactsMedicalImagesTypeInsertionAdapter;

  final UpdateAdapter<ContactsMedicalImagesType>
      _contactsMedicalImagesTypeUpdateAdapter;

  final DeletionAdapter<ContactsMedicalImagesType>
      _contactsMedicalImagesTypeDeletionAdapter;

  @override
  Future<ContactsMedicalImagesType?>
      getContactMedicalImagesTypeByContactMedicalRecordId(
          int contactMedicalRecordId) async {
    return _queryAdapter.query(
        'SELECT * FROM contacts_medical_images_type WHERE contact_medical_record_id = ?1',
        mapper: (Map<String, Object?> row) => ContactsMedicalImagesType(id: row['id'] as int, contactMedicalRecordId: row['contact_medical_record_id'] as int, reportType: row['report_type'] as int, reportSubType: row['report_sub_type'] as int, createdDate: row['created_date'] as String, createdBy: row['created_by'] as String, updatedDate: row['updated_date'] as String, updatedBy: row['updated_by'] as String),
        arguments: [contactMedicalRecordId]);
  }

  @override
  Future<void> insert(ContactsMedicalImagesType object) async {
    await _contactsMedicalImagesTypeInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactsMedicalImagesType object) async {
    await _contactsMedicalImagesTypeInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactsMedicalImagesType> list) async {
    await _contactsMedicalImagesTypeInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactsMedicalImagesType> list) async {
    await _contactsMedicalImagesTypeInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactsMedicalImagesType object) async {
    await _contactsMedicalImagesTypeUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactsMedicalImagesType> list) async {
    await _contactsMedicalImagesTypeUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactsMedicalImagesType object) async {
    await _contactsMedicalImagesTypeDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactsMedicalImagesType> list) async {
    await _contactsMedicalImagesTypeDeletionAdapter.deleteList(list);
  }
}

class _$ContactVitalsDao extends ContactVitalsDao {
  _$ContactVitalsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _contactVitalsInsertionAdapter = InsertionAdapter(
            database,
            'contact_vitals',
            (ContactVitals item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'vitals_type_id': item.vitalsTypeId,
                  'custom_vitals_type_id': item.customVitalsTypeId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactVitalsUpdateAdapter = UpdateAdapter(
            database,
            'contact_vitals',
            ['id'],
            (ContactVitals item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'vitals_type_id': item.vitalsTypeId,
                  'custom_vitals_type_id': item.customVitalsTypeId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                }),
        _contactVitalsDeletionAdapter = DeletionAdapter(
            database,
            'contact_vitals',
            ['id'],
            (ContactVitals item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'vitals_type_id': item.vitalsTypeId,
                  'custom_vitals_type_id': item.customVitalsTypeId,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactVitals> _contactVitalsInsertionAdapter;

  final UpdateAdapter<ContactVitals> _contactVitalsUpdateAdapter;

  final DeletionAdapter<ContactVitals> _contactVitalsDeletionAdapter;

  @override
  Future<List<DailyTest>> getDailyTestByContactId(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT contact_vitals.*, vitals.* FROM contact_vitals, vitals WHERE contact_vitals.contact_id = ?1 AND contact_vitals.vitals_type_id = vitals.vital_id',
        mapper: (Map<String, Object?> row) => DailyTest(row['id'] as int, row['contact_id'] as int, row['vitals_type_id'] as int, row['custom_vitals_type_id'] as int, row['created_date'] as String, row['created_by'] as String, row['updated_date'] as String, row['updated_by'] as String, row['vital_id'] as int?, row['name'] as String?, row['short_name'] as String?, row['description'] as String?, row['unit'] as String?, row['url'] as String?, row['image_list_path'] as String?, row['image_details_path'] as String?),
        arguments: [contactId]);
  }

  @override
  Stream<List<DailyTest>> getDailyTestLiveByContactId(int contactId) {
    return _queryAdapter.queryListStream(
        'SELECT contact_vitals.*, vitals.* FROM contact_vitals, vitals WHERE contact_vitals.contact_id = ?1 AND contact_vitals.vitals_type_id = vitals.vital_id',
        mapper: (Map<String, Object?> row) => DailyTest(
            row['id'] as int,
            row['contact_id'] as int,
            row['vitals_type_id'] as int,
            row['custom_vitals_type_id'] as int,
            row['created_date'] as String,
            row['created_by'] as String,
            row['updated_date'] as String,
            row['updated_by'] as String,
            row['vital_id'] as int?,
            row['name'] as String?,
            row['short_name'] as String?,
            row['description'] as String?,
            row['unit'] as String?,
            row['url'] as String?,
            row['image_list_path'] as String?,
            row['image_details_path'] as String?),
        arguments: [contactId],
        queryableName: 'contact_vitals',
        isView: false);
  }

  @override
  Future<List<DailyTest>> getCustomDailyTestByContactId(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT contact_vitals.*, custom_vitals.* FROM contact_vitals, custom_vitals WHERE contact_vitals.contact_id = ?1 AND contact_vitals.custom_vitals_type_id = custom_vitals.vital_id',
        mapper: (Map<String, Object?> row) => DailyTest(row['id'] as int, row['contact_id'] as int, row['vitals_type_id'] as int, row['custom_vitals_type_id'] as int, row['created_date'] as String, row['created_by'] as String, row['updated_date'] as String, row['updated_by'] as String, row['vital_id'] as int?, row['name'] as String?, row['short_name'] as String?, row['description'] as String?, row['unit'] as String?, row['url'] as String?, row['image_list_path'] as String?, row['image_details_path'] as String?),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ContactVitals object) async {
    await _contactVitalsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactVitals object) async {
    await _contactVitalsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactVitals> list) async {
    await _contactVitalsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactVitals> list) async {
    await _contactVitalsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactVitals object) async {
    await _contactVitalsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactVitals> list) async {
    await _contactVitalsUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactVitals object) async {
    await _contactVitalsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactVitals> list) async {
    await _contactVitalsDeletionAdapter.deleteList(list);
  }
}

class _$ContactVitalsValueDao extends ContactVitalsValueDao {
  _$ContactVitalsValueDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _contactVitalsValueInsertionAdapter = InsertionAdapter(
            database,
            'contact_vitals_value',
            (ContactVitalsValue item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'contact_vitals_id': item.contactVitalsId,
                  'vitals_value': item.vitalsValue,
                  'vitals_datetime': item.vitalsDatetime,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                },
            changeListener),
        _contactVitalsValueUpdateAdapter = UpdateAdapter(
            database,
            'contact_vitals_value',
            ['id'],
            (ContactVitalsValue item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'contact_vitals_id': item.contactVitalsId,
                  'vitals_value': item.vitalsValue,
                  'vitals_datetime': item.vitalsDatetime,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                },
            changeListener),
        _contactVitalsValueDeletionAdapter = DeletionAdapter(
            database,
            'contact_vitals_value',
            ['id'],
            (ContactVitalsValue item) => <String, Object?>{
                  'id': item.id,
                  'contact_medical_record_id': item.contactMedicalRecordId,
                  'contact_vitals_id': item.contactVitalsId,
                  'vitals_value': item.vitalsValue,
                  'vitals_datetime': item.vitalsDatetime,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContactVitalsValue>
      _contactVitalsValueInsertionAdapter;

  final UpdateAdapter<ContactVitalsValue> _contactVitalsValueUpdateAdapter;

  final DeletionAdapter<ContactVitalsValue> _contactVitalsValueDeletionAdapter;

  @override
  Stream<List<ContactVitalsValue>> getDailyTestValueByContactVitalsId(
      int contactVitalsId) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM contact_vitals_value WHERE contact_vitals_id = ?1 ORDER BY vitals_datetime DESC',
        mapper: (Map<String, Object?> row) => ContactVitalsValue(
            id: row['id'] as int,
            contactMedicalRecordId: row['contact_medical_record_id'] as int,
            contactVitalsId: row['contact_vitals_id'] as int,
            vitalsValue: row['vitals_value'] as String,
            vitalsDatetime: row['vitals_datetime'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String),
        arguments: [contactVitalsId],
        queryableName: 'contact_vitals_value',
        isView: false);
  }

  @override
  Future<List<ContactVitalsValue>> getVitalsValueByContactVitalsId(
      int contactVitalsId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM contact_vitals_value WHERE contact_vitals_id = ?1 ORDER BY vitals_datetime DESC',
        mapper: (Map<String, Object?> row) => ContactVitalsValue(id: row['id'] as int, contactMedicalRecordId: row['contact_medical_record_id'] as int, contactVitalsId: row['contact_vitals_id'] as int, vitalsValue: row['vitals_value'] as String, vitalsDatetime: row['vitals_datetime'] as String, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String),
        arguments: [contactVitalsId]);
  }

  @override
  Future<ContactVitalsValue?> getDailyTestValueByDate(
    int contactVitalId,
    String startDate,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM contact_vitals_value WHERE contact_vitals_id = ?1 AND vitals_datetime LIKE ?2 ORDER BY vitals_datetime DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => ContactVitalsValue(id: row['id'] as int, contactMedicalRecordId: row['contact_medical_record_id'] as int, contactVitalsId: row['contact_vitals_id'] as int, vitalsValue: row['vitals_value'] as String, vitalsDatetime: row['vitals_datetime'] as String, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String),
        arguments: [contactVitalId, startDate]);
  }

  @override
  Future<void> insert(ContactVitalsValue object) async {
    await _contactVitalsValueInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ContactVitalsValue object) async {
    await _contactVitalsValueInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ContactVitalsValue> list) async {
    await _contactVitalsValueInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ContactVitalsValue> list) async {
    await _contactVitalsValueInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ContactVitalsValue object) async {
    await _contactVitalsValueUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ContactVitalsValue> list) async {
    await _contactVitalsValueUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ContactVitalsValue object) async {
    await _contactVitalsValueDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ContactVitalsValue> list) async {
    await _contactVitalsValueDeletionAdapter.deleteList(list);
  }
}

class _$CustomVitalsDao extends CustomVitalsDao {
  _$CustomVitalsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _customVitalsInsertionAdapter = InsertionAdapter(
            database,
            'custom_vitals',
            (CustomVitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                }),
        _customVitalsUpdateAdapter = UpdateAdapter(
            database,
            'custom_vitals',
            ['vital_id'],
            (CustomVitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                }),
        _customVitalsDeletionAdapter = DeletionAdapter(
            database,
            'custom_vitals',
            ['vital_id'],
            (CustomVitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CustomVitals> _customVitalsInsertionAdapter;

  final UpdateAdapter<CustomVitals> _customVitalsUpdateAdapter;

  final DeletionAdapter<CustomVitals> _customVitalsDeletionAdapter;

  @override
  Future<CustomVitals?> getCustomVitals(int customVitalId) async {
    return _queryAdapter.query(
        'SELECT * FROM custom_vitals WHERE vital_id = ?1',
        mapper: (Map<String, Object?> row) => CustomVitals(
            id: row['vital_id'] as int,
            name: row['name'] as String,
            shortName: row['short_name'] as String,
            description: row['description'] as String,
            unit: row['unit'] as String,
            url: row['url'] as String,
            imageListPath: row['image_list_path'] as String,
            imageDetailsPath: row['image_details_path'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String),
        arguments: [customVitalId]);
  }

  @override
  Future<void> insert(CustomVitals object) async {
    await _customVitalsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(CustomVitals object) async {
    await _customVitalsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<CustomVitals> list) async {
    await _customVitalsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<CustomVitals> list) async {
    await _customVitalsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(CustomVitals object) async {
    await _customVitalsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<CustomVitals> list) async {
    await _customVitalsUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(CustomVitals object) async {
    await _customVitalsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<CustomVitals> list) async {
    await _customVitalsDeletionAdapter.deleteList(list);
  }
}

class _$MedicineListDao extends MedicineListDao {
  _$MedicineListDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _medicinesInsertionAdapter = InsertionAdapter(
            database,
            'medicines',
            (Medicines item) => <String, Object?>{
                  'id': item.id,
                  'brand_name': item.brandName,
                  'generic_name': item.genericName,
                  'short_name': item.shortName,
                  'company': item.company,
                  'category': item.category,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_uid': item.createdUid,
                  'updated_uid': item.updatedUid
                }),
        _medicinesUpdateAdapter = UpdateAdapter(
            database,
            'medicines',
            ['id'],
            (Medicines item) => <String, Object?>{
                  'id': item.id,
                  'brand_name': item.brandName,
                  'generic_name': item.genericName,
                  'short_name': item.shortName,
                  'company': item.company,
                  'category': item.category,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_uid': item.createdUid,
                  'updated_uid': item.updatedUid
                }),
        _medicinesDeletionAdapter = DeletionAdapter(
            database,
            'medicines',
            ['id'],
            (Medicines item) => <String, Object?>{
                  'id': item.id,
                  'brand_name': item.brandName,
                  'generic_name': item.genericName,
                  'short_name': item.shortName,
                  'company': item.company,
                  'category': item.category,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_uid': item.createdUid,
                  'updated_uid': item.updatedUid
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Medicines> _medicinesInsertionAdapter;

  final UpdateAdapter<Medicines> _medicinesUpdateAdapter;

  final DeletionAdapter<Medicines> _medicinesDeletionAdapter;

  @override
  Future<List<Medicines>> getAllMedicines() async {
    return _queryAdapter.queryList('SELECT * FROM medicines',
        mapper: (Map<String, Object?> row) => Medicines(
            id: row['id'] as int,
            brandName: row['brand_name'] as String,
            genericName: row['generic_name'] as String,
            shortName: row['short_name'] as String,
            company: row['company'] as String,
            category: row['category'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdUid: row['created_uid'] as int,
            updatedUid: row['updated_uid'] as int));
  }

  @override
  Future<void> insert(Medicines object) async {
    await _medicinesInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Medicines object) async {
    await _medicinesInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Medicines> list) async {
    await _medicinesInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Medicines> list) async {
    await _medicinesInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Medicines object) async {
    await _medicinesUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Medicines> list) async {
    await _medicinesUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Medicines object) async {
    await _medicinesDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Medicines> list) async {
    await _medicinesDeletionAdapter.deleteList(list);
  }
}

class _$NewsConfigDao extends NewsConfigDao {
  _$NewsConfigDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _newsConfigInsertionAdapter = InsertionAdapter(
            database,
            'news_config',
            (NewsConfig item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url,
                  'active': item.active ? 1 : 0
                }),
        _newsConfigUpdateAdapter = UpdateAdapter(
            database,
            'news_config',
            ['id'],
            (NewsConfig item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url,
                  'active': item.active ? 1 : 0
                }),
        _newsConfigDeletionAdapter = DeletionAdapter(
            database,
            'news_config',
            ['id'],
            (NewsConfig item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url,
                  'active': item.active ? 1 : 0
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<NewsConfig> _newsConfigInsertionAdapter;

  final UpdateAdapter<NewsConfig> _newsConfigUpdateAdapter;

  final DeletionAdapter<NewsConfig> _newsConfigDeletionAdapter;

  @override
  Future<List<NewsConfig>> getAllNewsConfig() async {
    return _queryAdapter.queryList('SELECT * FROM news_config',
        mapper: (Map<String, Object?> row) => NewsConfig(
            id: row['id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            active: (row['active'] as int) != 0));
  }

  @override
  Future<List<NewsConfig>> getAllActiveNewsConfig() async {
    return _queryAdapter.queryList('SELECT * FROM news_config WHERE active = 1',
        mapper: (Map<String, Object?> row) => NewsConfig(
            id: row['id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            active: (row['active'] as int) != 0));
  }

  @override
  Future<int?> getActiveNewsCount() async {
    return _queryAdapter.query(
        'SELECT COUNT(id) FROM news_config WHERE active = 1',
        mapper: (Map<String, Object?> row) => row.values.first as int);
  }

  @override
  Future<void> insert(NewsConfig object) async {
    await _newsConfigInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(NewsConfig object) async {
    await _newsConfigInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<NewsConfig> list) async {
    await _newsConfigInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<NewsConfig> list) async {
    await _newsConfigInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(NewsConfig object) async {
    await _newsConfigUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<NewsConfig> list) async {
    await _newsConfigUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(NewsConfig object) async {
    await _newsConfigDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<NewsConfig> list) async {
    await _newsConfigDeletionAdapter.deleteList(list);
  }
}

class _$NotificationDao extends NotificationDao {
  _$NotificationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _notificationInsertionAdapter = InsertionAdapter(
            database,
            'notification',
            (Notification item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.time),
                  'taken': item.taken ? 1 : 0,
                  'latter': item.latter ? 1 : 0,
                  'seen': item.seen ? 1 : 0
                }),
        _notificationUpdateAdapter = UpdateAdapter(
            database,
            'notification',
            ['id'],
            (Notification item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.time),
                  'taken': item.taken ? 1 : 0,
                  'latter': item.latter ? 1 : 0,
                  'seen': item.seen ? 1 : 0
                }),
        _notificationDeletionAdapter = DeletionAdapter(
            database,
            'notification',
            ['id'],
            (Notification item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.time),
                  'taken': item.taken ? 1 : 0,
                  'latter': item.latter ? 1 : 0,
                  'seen': item.seen ? 1 : 0
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Notification> _notificationInsertionAdapter;

  final UpdateAdapter<Notification> _notificationUpdateAdapter;

  final DeletionAdapter<Notification> _notificationDeletionAdapter;

  @override
  Future<List<Notification>> getNotificationsByContactId(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM notification WHERE contact_id = ?1 ORDER BY start_time DESC',
        mapper: (Map<String, Object?> row) => Notification(id: row['id'] as int?, contactId: row['contact_id'] as int, type: row['type'] as String, actualId: row['actual_id'] as int, time: _dateTimeConverter.decode(row['start_time'] as int), taken: (row['taken'] as int) != 0, latter: (row['latter'] as int) != 0, seen: (row['seen'] as int) != 0),
        arguments: [contactId]);
  }

  @override
  Future<int?> getUnSeenNotificationCount(int contactId) async {
    return _queryAdapter.query(
        'SELECT COUNT(id) FROM notification WHERE contact_id = ?1 AND seen = 0',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [contactId]);
  }

  @override
  Future<List<Notification>> getNotificationsList(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM notification WHERE contact_id = ?1 ORDER BY start_time DESC',
        mapper: (Map<String, Object?> row) => Notification(id: row['id'] as int?, contactId: row['contact_id'] as int, type: row['type'] as String, actualId: row['actual_id'] as int, time: _dateTimeConverter.decode(row['start_time'] as int), taken: (row['taken'] as int) != 0, latter: (row['latter'] as int) != 0, seen: (row['seen'] as int) != 0),
        arguments: [contactId]);
  }

  @override
  Future<int?> getNotificationCount(int contactId) async {
    return _queryAdapter.query(
        'SELECT COUNT(id) FROM notification WHERE contact_id = ?1 AND seen = 0',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [contactId]);
  }

  @override
  Future<List<Notification>> getNotificationsListByActualId(
    int actualId,
    String type,
  ) async {
    return _queryAdapter.queryList(
        'SELECT * FROM notification WHERE actual_id = ?1 AND type = ?2',
        mapper: (Map<String, Object?> row) => Notification(
            id: row['id'] as int?,
            contactId: row['contact_id'] as int,
            type: row['type'] as String,
            actualId: row['actual_id'] as int,
            time: _dateTimeConverter.decode(row['start_time'] as int),
            taken: (row['taken'] as int) != 0,
            latter: (row['latter'] as int) != 0,
            seen: (row['seen'] as int) != 0),
        arguments: [actualId, type]);
  }

  @override
  Future<Notification?> getNotificationByActualId(
    int actualId,
    String type,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM notification WHERE actual_id = ?1 AND type = ?2',
        mapper: (Map<String, Object?> row) => Notification(
            id: row['id'] as int?,
            contactId: row['contact_id'] as int,
            type: row['type'] as String,
            actualId: row['actual_id'] as int,
            time: _dateTimeConverter.decode(row['start_time'] as int),
            taken: (row['taken'] as int) != 0,
            latter: (row['latter'] as int) != 0,
            seen: (row['seen'] as int) != 0),
        arguments: [actualId, type]);
  }

  @override
  Future<void> insert(Notification object) async {
    await _notificationInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Notification object) async {
    await _notificationInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Notification> list) async {
    await _notificationInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Notification> list) async {
    await _notificationInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Notification object) async {
    await _notificationUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Notification> list) async {
    await _notificationUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Notification object) async {
    await _notificationDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Notification> list) async {
    await _notificationDeletionAdapter.deleteList(list);
  }
}

class _$RemindersDao extends RemindersDao {
  _$RemindersDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _remindersInsertionAdapter = InsertionAdapter(
            database,
            'reminders',
            (Reminders item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.startDateTime),
                  'only_date': _dateConverter.encode(item.onlyDate),
                  'only_time': _timeConverter.encode(item.onlyTime),
                  'end_time': _dateTimeConverter.encode(item.endTime),
                  'is_ongoing_medicine': item.isOngoingMedicine ? 1 : 0,
                  'job_id': item.jobId
                }),
        _remindersUpdateAdapter = UpdateAdapter(
            database,
            'reminders',
            ['id'],
            (Reminders item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.startDateTime),
                  'only_date': _dateConverter.encode(item.onlyDate),
                  'only_time': _timeConverter.encode(item.onlyTime),
                  'end_time': _dateTimeConverter.encode(item.endTime),
                  'is_ongoing_medicine': item.isOngoingMedicine ? 1 : 0,
                  'job_id': item.jobId
                }),
        _remindersDeletionAdapter = DeletionAdapter(
            database,
            'reminders',
            ['id'],
            (Reminders item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'type': item.type,
                  'actual_id': item.actualId,
                  'start_time': _dateTimeConverter.encode(item.startDateTime),
                  'only_date': _dateConverter.encode(item.onlyDate),
                  'only_time': _timeConverter.encode(item.onlyTime),
                  'end_time': _dateTimeConverter.encode(item.endTime),
                  'is_ongoing_medicine': item.isOngoingMedicine ? 1 : 0,
                  'job_id': item.jobId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Reminders> _remindersInsertionAdapter;

  final UpdateAdapter<Reminders> _remindersUpdateAdapter;

  final DeletionAdapter<Reminders> _remindersDeletionAdapter;

  @override
  Future<Reminders?> getReminder(
    int actualId,
    String type,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM reminders WHERE actual_id = ?1 AND type = ?2',
        mapper: (Map<String, Object?> row) => Reminders(
            id: row['id'] as int?,
            contactId: row['contact_id'] as int,
            type: row['type'] as String,
            actualId: row['actual_id'] as int,
            startDateTime: _dateTimeConverter.decode(row['start_time'] as int),
            onlyDate: _dateConverter.decode(row['only_date'] as String),
            onlyTime: _timeConverter.decode(row['only_time'] as String),
            endTime: _dateTimeConverter.decode(row['end_time'] as int),
            isOngoingMedicine: (row['is_ongoing_medicine'] as int) != 0,
            jobId: row['job_id'] as int),
        arguments: [actualId, type]);
  }

  @override
  Future<Reminders?> getReminderByJobId(int jobId) async {
    return _queryAdapter.query('SELECT * FROM reminders WHERE job_id = ?1',
        mapper: (Map<String, Object?> row) => Reminders(
            id: row['id'] as int?,
            contactId: row['contact_id'] as int,
            type: row['type'] as String,
            actualId: row['actual_id'] as int,
            startDateTime: _dateTimeConverter.decode(row['start_time'] as int),
            onlyDate: _dateConverter.decode(row['only_date'] as String),
            onlyTime: _timeConverter.decode(row['only_time'] as String),
            endTime: _dateTimeConverter.decode(row['end_time'] as int),
            isOngoingMedicine: (row['is_ongoing_medicine'] as int) != 0,
            jobId: row['job_id'] as int),
        arguments: [jobId]);
  }

  @override
  Future<List<Reminders>> getReminderListForDay(
    int contactId,
    String selectedDate,
    String dayOfWeek,
    String dayOfMonth,
  ) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT reminders.* FROM reminders, contact_medication_reminder, contact_medication WHERE reminders.contact_id = ?1 AND ((reminders.type = \'medication_reminder\' AND reminders.actual_id = contact_medication_reminder.id AND contact_medication_reminder.contact_medication_id = contact_medication.id AND ((contact_medication.frequency = \'Daily\' AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Weekly\' AND contact_medication_reminder.date_day = ?3 AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Monthly\' AND contact_medication_reminder.date_day = ?4 AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Custom\' AND date(reminders.start_time) = date(?2)))) OR ((reminders.type = \'appointment_reminder\' OR reminders.type = \'immunization_reminder\') AND date(reminders.start_time) = date(?2))) ORDER BY time(reminders.only_time)',
        mapper: (Map<String, Object?> row) => Reminders(id: row['id'] as int?, contactId: row['contact_id'] as int, type: row['type'] as String, actualId: row['actual_id'] as int, startDateTime: _dateTimeConverter.decode(row['start_time'] as int), onlyDate: _dateConverter.decode(row['only_date'] as String), onlyTime: _timeConverter.decode(row['only_time'] as String), endTime: _dateTimeConverter.decode(row['end_time'] as int), isOngoingMedicine: (row['is_ongoing_medicine'] as int) != 0, jobId: row['job_id'] as int),
        arguments: [contactId, selectedDate, dayOfWeek, dayOfMonth]);
  }

  @override
  Future<List<String>> getReminderTypeList(
    int contactId,
    String selectedDate,
    String dayOfWeek,
    String dayOfMonth,
  ) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT reminders.type FROM reminders, contact_medication_reminder, contact_medication WHERE reminders.contact_id = ?1 AND ((reminders.type = \'medication_reminder\' AND reminders.actual_id = contact_medication_reminder.id AND contact_medication_reminder.contact_medication_id = contact_medication.id AND ((contact_medication.frequency = \'Daily\' AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Weekly\' AND contact_medication_reminder.date_day = ?3 AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Monthly\' AND contact_medication_reminder.date_day = ?4 AND ((date(reminders.start_time) <= date(?2) AND date(reminders.end_time) >= date(?2)) OR (date(reminders.start_time) <= date(?2) AND reminders.is_ongoing_medicine = 1)))) OR (contact_medication.frequency = \'Custom\' AND date(reminders.start_time) = date(?2)))) OR ((reminders.type = \'appointment_reminder\' OR reminders.type = \'immunization_reminder\') AND date(reminders.start_time) = date(?2))) ORDER BY time(reminders.only_time)',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [contactId, selectedDate, dayOfWeek, dayOfMonth]);
  }

  @override
  Future<void> insert(Reminders object) async {
    await _remindersInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Reminders object) async {
    await _remindersInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Reminders> list) async {
    await _remindersInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Reminders> list) async {
    await _remindersInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Reminders object) async {
    await _remindersUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Reminders> list) async {
    await _remindersUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Reminders object) async {
    await _remindersDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Reminders> list) async {
    await _remindersDeletionAdapter.deleteList(list);
  }
}

class _$ReveraDoctorAppointmentSlotsDao
    extends ReveraDoctorAppointmentSlotsDao {
  _$ReveraDoctorAppointmentSlotsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _reveraDoctorAppointmentSlotsInsertionAdapter = InsertionAdapter(
            database,
            'revera_doctor_appointment_slots',
            (ReveraDoctorAppointmentSlots item) => <String, Object?>{
                  'id': item.id,
                  'shashto_doc_id': item.shashtoDocId,
                  'slot_request_id': item.slotRequestId,
                  'date': item.date,
                  'time': item.time,
                  'time_slot': item.timeSlot,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'status': item.status ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'time_stamp': item.timeStamp
                }),
        _reveraDoctorAppointmentSlotsUpdateAdapter = UpdateAdapter(
            database,
            'revera_doctor_appointment_slots',
            ['id'],
            (ReveraDoctorAppointmentSlots item) => <String, Object?>{
                  'id': item.id,
                  'shashto_doc_id': item.shashtoDocId,
                  'slot_request_id': item.slotRequestId,
                  'date': item.date,
                  'time': item.time,
                  'time_slot': item.timeSlot,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'status': item.status ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'time_stamp': item.timeStamp
                }),
        _reveraDoctorAppointmentSlotsDeletionAdapter = DeletionAdapter(
            database,
            'revera_doctor_appointment_slots',
            ['id'],
            (ReveraDoctorAppointmentSlots item) => <String, Object?>{
                  'id': item.id,
                  'shashto_doc_id': item.shashtoDocId,
                  'slot_request_id': item.slotRequestId,
                  'date': item.date,
                  'time': item.time,
                  'time_slot': item.timeSlot,
                  'start_time': item.startTime,
                  'end_time': item.endTime,
                  'status': item.status ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_by': item.createdBy,
                  'updated_date': item.updatedDate,
                  'updated_by': item.updatedBy,
                  'time_stamp': item.timeStamp
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ReveraDoctorAppointmentSlots>
      _reveraDoctorAppointmentSlotsInsertionAdapter;

  final UpdateAdapter<ReveraDoctorAppointmentSlots>
      _reveraDoctorAppointmentSlotsUpdateAdapter;

  final DeletionAdapter<ReveraDoctorAppointmentSlots>
      _reveraDoctorAppointmentSlotsDeletionAdapter;

  @override
  Future<ReveraDoctorAppointmentSlots?> getReveraDoctorAppointmentSlotById(
      int slotId) async {
    return _queryAdapter.query(
        'SELECT * FROM revera_doctor_appointment_slots WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ReveraDoctorAppointmentSlots(
            id: row['id'] as int?,
            shashtoDocId: row['shashto_doc_id'] as int,
            slotRequestId: row['slot_request_id'] as int,
            date: row['date'] as String,
            time: row['time'] as String,
            timeSlot: row['time_slot'] as String,
            startTime: row['start_time'] as String,
            endTime: row['end_time'] as String,
            status: (row['status'] as int) != 0,
            createdDate: row['created_date'] as String,
            createdBy: row['created_by'] as String,
            updatedDate: row['updated_date'] as String,
            updatedBy: row['updated_by'] as String,
            timeStamp: row['time_stamp'] as int),
        arguments: [slotId]);
  }

  @override
  Future<void> insert(ReveraDoctorAppointmentSlots object) async {
    await _reveraDoctorAppointmentSlotsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ReveraDoctorAppointmentSlots object) async {
    await _reveraDoctorAppointmentSlotsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ReveraDoctorAppointmentSlots> list) async {
    await _reveraDoctorAppointmentSlotsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(
      List<ReveraDoctorAppointmentSlots> list) async {
    await _reveraDoctorAppointmentSlotsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ReveraDoctorAppointmentSlots object) async {
    await _reveraDoctorAppointmentSlotsUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ReveraDoctorAppointmentSlots> list) async {
    await _reveraDoctorAppointmentSlotsUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ReveraDoctorAppointmentSlots object) async {
    await _reveraDoctorAppointmentSlotsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ReveraDoctorAppointmentSlots> list) async {
    await _reveraDoctorAppointmentSlotsDeletionAdapter.deleteList(list);
  }
}

class _$ReveraDoctorsDao extends ReveraDoctorsDao {
  _$ReveraDoctorsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _reveraDoctorsInsertionAdapter = InsertionAdapter(
            database,
            'revera_doctors',
            (ReveraDoctors item) => <String, Object?>{
                  'id': item.id,
                  'digitalSignImage': item.digitalSignImage,
                  'name': item.name,
                  'designation': item.designation,
                  'institution': item.institution,
                  'specialization': item.specialization,
                  'description': item.description,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'contactId': item.contactId,
                  'reveraId': item.reveraId,
                  'profileName': item.profileName,
                  'createdDate': item.createdDate,
                  'createdBy': item.createdBy,
                  'updatedDate': item.updatedDate,
                  'updatedBy': item.updatedBy
                }),
        _reveraDoctorsUpdateAdapter = UpdateAdapter(
            database,
            'revera_doctors',
            ['id'],
            (ReveraDoctors item) => <String, Object?>{
                  'id': item.id,
                  'digitalSignImage': item.digitalSignImage,
                  'name': item.name,
                  'designation': item.designation,
                  'institution': item.institution,
                  'specialization': item.specialization,
                  'description': item.description,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'contactId': item.contactId,
                  'reveraId': item.reveraId,
                  'profileName': item.profileName,
                  'createdDate': item.createdDate,
                  'createdBy': item.createdBy,
                  'updatedDate': item.updatedDate,
                  'updatedBy': item.updatedBy
                }),
        _reveraDoctorsDeletionAdapter = DeletionAdapter(
            database,
            'revera_doctors',
            ['id'],
            (ReveraDoctors item) => <String, Object?>{
                  'id': item.id,
                  'digitalSignImage': item.digitalSignImage,
                  'name': item.name,
                  'designation': item.designation,
                  'institution': item.institution,
                  'specialization': item.specialization,
                  'description': item.description,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'contactId': item.contactId,
                  'reveraId': item.reveraId,
                  'profileName': item.profileName,
                  'createdDate': item.createdDate,
                  'createdBy': item.createdBy,
                  'updatedDate': item.updatedDate,
                  'updatedBy': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ReveraDoctors> _reveraDoctorsInsertionAdapter;

  final UpdateAdapter<ReveraDoctors> _reveraDoctorsUpdateAdapter;

  final DeletionAdapter<ReveraDoctors> _reveraDoctorsDeletionAdapter;

  @override
  Future<ReveraDoctors?> getReveraDoctorById(int id) async {
    return _queryAdapter.query('SELECT * FROM revera_doctors WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ReveraDoctors(
            id: row['id'] as int?,
            digitalSignImage: row['digitalSignImage'] as String?,
            name: row['name'] as String?,
            designation: row['designation'] as String?,
            institution: row['institution'] as String?,
            specialization: row['specialization'] as String?,
            description: row['description'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            contactId: row['contactId'] as int?,
            reveraId: row['reveraId'] as String?,
            profileName: row['profileName'] as String?,
            createdDate: row['createdDate'] as String?,
            createdBy: row['createdBy'] as String?,
            updatedDate: row['updatedDate'] as String?,
            updatedBy: row['updatedBy'] as String?),
        arguments: [id]);
  }

  @override
  Future<String?> getReveraDoctorName(int contactId) async {
    return _queryAdapter.query(
        'SELECT name FROM revera_doctors WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [contactId]);
  }

  @override
  Future<ReveraDoctors?> getDoctorByContactId(int contactId) async {
    return _queryAdapter.query(
        'SELECT * FROM revera_doctors WHERE contact_id = ?1',
        mapper: (Map<String, Object?> row) => ReveraDoctors(
            id: row['id'] as int?,
            digitalSignImage: row['digitalSignImage'] as String?,
            name: row['name'] as String?,
            designation: row['designation'] as String?,
            institution: row['institution'] as String?,
            specialization: row['specialization'] as String?,
            description: row['description'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            contactId: row['contactId'] as int?,
            reveraId: row['reveraId'] as String?,
            profileName: row['profileName'] as String?,
            createdDate: row['createdDate'] as String?,
            createdBy: row['createdBy'] as String?,
            updatedDate: row['updatedDate'] as String?,
            updatedBy: row['updatedBy'] as String?),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(ReveraDoctors object) async {
    await _reveraDoctorsInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(ReveraDoctors object) async {
    await _reveraDoctorsInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<ReveraDoctors> list) async {
    await _reveraDoctorsInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<ReveraDoctors> list) async {
    await _reveraDoctorsInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(ReveraDoctors object) async {
    await _reveraDoctorsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<ReveraDoctors> list) async {
    await _reveraDoctorsUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(ReveraDoctors object) async {
    await _reveraDoctorsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<ReveraDoctors> list) async {
    await _reveraDoctorsDeletionAdapter.deleteList(list);
  }
}

class _$ShareDao extends ShareDao {
  _$ShareDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _shareInsertionAdapter = InsertionAdapter(
            database,
            'Share',
            (Share item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'receiver_revera_id': item.receiverReveraId,
                  'sender_revera_id': item.senderReveraId,
                  'receiver_profile_name': item.receiverProfileName,
                  'sender_profile_name': item.senderProfileName,
                  'sharing_file': item.sharingFile,
                  'sharing_datetime': item.sharingDateTime,
                  'status': item.status ? 1 : 0,
                  'life_style': item.isLifeStyle ? 1 : 0,
                  'next_of_kin': item.isNextOfKin ? 1 : 0,
                  'immunization_history': item.isImmunizationHistory ? 1 : 0,
                  'medical_conditions': item.isMedicalConditions ? 1 : 0,
                  'is_accepted': item.isAccepted,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _shareUpdateAdapter = UpdateAdapter(
            database,
            'Share',
            ['id'],
            (Share item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'receiver_revera_id': item.receiverReveraId,
                  'sender_revera_id': item.senderReveraId,
                  'receiver_profile_name': item.receiverProfileName,
                  'sender_profile_name': item.senderProfileName,
                  'sharing_file': item.sharingFile,
                  'sharing_datetime': item.sharingDateTime,
                  'status': item.status ? 1 : 0,
                  'life_style': item.isLifeStyle ? 1 : 0,
                  'next_of_kin': item.isNextOfKin ? 1 : 0,
                  'immunization_history': item.isImmunizationHistory ? 1 : 0,
                  'medical_conditions': item.isMedicalConditions ? 1 : 0,
                  'is_accepted': item.isAccepted,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _shareDeletionAdapter = DeletionAdapter(
            database,
            'Share',
            ['id'],
            (Share item) => <String, Object?>{
                  'id': item.id,
                  'contact_id': item.contactId,
                  'receiver_revera_id': item.receiverReveraId,
                  'sender_revera_id': item.senderReveraId,
                  'receiver_profile_name': item.receiverProfileName,
                  'sender_profile_name': item.senderProfileName,
                  'sharing_file': item.sharingFile,
                  'sharing_datetime': item.sharingDateTime,
                  'status': item.status ? 1 : 0,
                  'life_style': item.isLifeStyle ? 1 : 0,
                  'next_of_kin': item.isNextOfKin ? 1 : 0,
                  'immunization_history': item.isImmunizationHistory ? 1 : 0,
                  'medical_conditions': item.isMedicalConditions ? 1 : 0,
                  'is_accepted': item.isAccepted,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Share> _shareInsertionAdapter;

  final UpdateAdapter<Share> _shareUpdateAdapter;

  final DeletionAdapter<Share> _shareDeletionAdapter;

  @override
  Future<List<Share>> getShareListByReveraId(String reveraId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM share WHERE sender_revera_id = ?1 ORDER BY datetime(created_date) DESC',
        mapper: (Map<String, Object?> row) => Share(id: row['id'] as int?, contactId: row['contact_id'] as int, receiverReveraId: row['receiver_revera_id'] as String, senderReveraId: row['sender_revera_id'] as String, receiverProfileName: row['receiver_profile_name'] as String, senderProfileName: row['sender_profile_name'] as String, sharingFile: row['sharing_file'] as String, sharingDateTime: row['sharing_datetime'] as String, status: (row['status'] as int) != 0, isLifeStyle: (row['life_style'] as int) != 0, isNextOfKin: (row['next_of_kin'] as int) != 0, isImmunizationHistory: (row['immunization_history'] as int) != 0, isMedicalConditions: (row['medical_conditions'] as int) != 0, isAccepted: row['is_accepted'] as int, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String, createdBy: row['created_by'] as String, updatedBy: row['updated_by'] as String),
        arguments: [reveraId]);
  }

  @override
  Future<List<Share>> getShareListReceivedByReveraId(String reveraId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM share WHERE receiver_revera_id = ?1 AND is_accepted = 1 ORDER BY datetime(created_date) DESC',
        mapper: (Map<String, Object?> row) => Share(id: row['id'] as int?, contactId: row['contact_id'] as int, receiverReveraId: row['receiver_revera_id'] as String, senderReveraId: row['sender_revera_id'] as String, receiverProfileName: row['receiver_profile_name'] as String, senderProfileName: row['sender_profile_name'] as String, sharingFile: row['sharing_file'] as String, sharingDateTime: row['sharing_datetime'] as String, status: (row['status'] as int) != 0, isLifeStyle: (row['life_style'] as int) != 0, isNextOfKin: (row['next_of_kin'] as int) != 0, isImmunizationHistory: (row['immunization_history'] as int) != 0, isMedicalConditions: (row['medical_conditions'] as int) != 0, isAccepted: row['is_accepted'] as int, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String, createdBy: row['created_by'] as String, updatedBy: row['updated_by'] as String),
        arguments: [reveraId]);
  }

  @override
  Future<Share?> getShareById(int shareId) async {
    return _queryAdapter.query('SELECT * FROM share WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Share(
            id: row['id'] as int?,
            contactId: row['contact_id'] as int,
            receiverReveraId: row['receiver_revera_id'] as String,
            senderReveraId: row['sender_revera_id'] as String,
            receiverProfileName: row['receiver_profile_name'] as String,
            senderProfileName: row['sender_profile_name'] as String,
            sharingFile: row['sharing_file'] as String,
            sharingDateTime: row['sharing_datetime'] as String,
            status: (row['status'] as int) != 0,
            isLifeStyle: (row['life_style'] as int) != 0,
            isNextOfKin: (row['next_of_kin'] as int) != 0,
            isImmunizationHistory: (row['immunization_history'] as int) != 0,
            isMedicalConditions: (row['medical_conditions'] as int) != 0,
            isAccepted: row['is_accepted'] as int,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [shareId]);
  }

  @override
  Future<String?> getSharePdfUrlById(int shareId) async {
    return _queryAdapter.query('SELECT sharing_file FROM share WHERE id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [shareId]);
  }

  @override
  Future<void> insert(Share object) async {
    await _shareInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Share object) async {
    await _shareInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Share> list) async {
    await _shareInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Share> list) async {
    await _shareInsertionAdapter.insertList(list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Share object) async {
    await _shareUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Share> list) async {
    await _shareUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Share object) async {
    await _shareDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Share> list) async {
    await _shareDeletionAdapter.deleteList(list);
  }
}

class _$TagsDao extends TagsDao {
  _$TagsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _tagsInsertionAdapter = InsertionAdapter(
            database,
            'tags',
            (Tags item) => <String, Object?>{
                  'tag_id': item.tagId,
                  'name': item.name,
                  'url': item.url,
                  'parent_id': item.parentId,
                  'tag_type': item.tagType,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _tagsUpdateAdapter = UpdateAdapter(
            database,
            'tags',
            ['tag_id'],
            (Tags item) => <String, Object?>{
                  'tag_id': item.tagId,
                  'name': item.name,
                  'url': item.url,
                  'parent_id': item.parentId,
                  'tag_type': item.tagType,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _tagsDeletionAdapter = DeletionAdapter(
            database,
            'tags',
            ['tag_id'],
            (Tags item) => <String, Object?>{
                  'tag_id': item.tagId,
                  'name': item.name,
                  'url': item.url,
                  'parent_id': item.parentId,
                  'tag_type': item.tagType,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Tags> _tagsInsertionAdapter;

  final UpdateAdapter<Tags> _tagsUpdateAdapter;

  final DeletionAdapter<Tags> _tagsDeletionAdapter;

  @override
  Future<List<Tags>> getAllTags() async {
    return _queryAdapter.queryList('SELECT * FROM tags ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<List<Tags>> getAllMedicalConditions() async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE tag_type = \'medical_condition\'',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<List<Tags>> getAllClinicalRecordCategories() async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE parent_id = 0 AND tag_type != \'medical_condition\' ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<List<Tags>> getAllClinicalRecordCategoriesWithOutOthers() async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE parent_id = 0 AND tag_type != \'medical_condition\' AND name NOT LIKE \'Others%\' ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<List<Tags>> getAllClinicalRecordCategoriesOnlyOthers() async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE parent_id = 0 AND tag_type != \'medical_condition\' AND name LIKE \'Others%\' ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<List<Tags>> getCategoriesByTagType(String tagType) async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE parent_id = 0 AND tag_type = ?1 ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(tagId: row['tag_id'] as int?, name: row['name'] as String, url: row['url'] as String, parentId: row['parent_id'] as int, tagType: row['tag_type'] as String, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String, createdBy: row['created_by'] as String, updatedBy: row['updated_by'] as String),
        arguments: [tagType]);
  }

  @override
  Future<List<Tags>> getClinicalRecordSubCategoriesByParentId(
      int parentId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM tags WHERE parent_id = ?1 ORDER BY name',
        mapper: (Map<String, Object?> row) => Tags(
            tagId: row['tag_id'] as int?,
            name: row['name'] as String,
            url: row['url'] as String,
            parentId: row['parent_id'] as int,
            tagType: row['tag_type'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String),
        arguments: [parentId]);
  }

  @override
  Future<int?> getSubCategoriesByParentIdCount(int parentId) async {
    return _queryAdapter.query(
        'SELECT COUNT(tag_id) FROM tags WHERE parent_id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [parentId]);
  }

  @override
  Future<String?> getTagNameById(int tagId) async {
    return _queryAdapter.query('SELECT name FROM tags WHERE tag_id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [tagId]);
  }

  @override
  Future<String?> getTagTypeById(int tagId) async {
    return _queryAdapter.query('SELECT tag_type FROM tags WHERE tag_id = ?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [tagId]);
  }

  @override
  Future<void> insert(Tags object) async {
    await _tagsInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Tags object) async {
    await _tagsInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Tags> list) async {
    await _tagsInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Tags> list) async {
    await _tagsInsertionAdapter.insertList(list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Tags object) async {
    await _tagsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Tags> list) async {
    await _tagsUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Tags object) async {
    await _tagsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Tags> list) async {
    await _tagsDeletionAdapter.deleteList(list);
  }
}

class _$UsersDao extends UsersDao {
  _$UsersDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _usersInsertionAdapter = InsertionAdapter(
            database,
            'users',
            (Users item) => <String, Object?>{
                  'id': item.id,
                  'username': item.username,
                  'email': item.email,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'profile_name': item.profileName,
                  'contact_id': item.contactId,
                  'revera_id': item.reveraId,
                  'user_type': item.userType,
                  'security_question': item.securityQuestion,
                  'security_answer': item.securityAnswer,
                  'status': item.status ? 1 : 0,
                  'terms_and_condition_accepted':
                      item.termsAndConditionAccepted ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _usersUpdateAdapter = UpdateAdapter(
            database,
            'users',
            ['id'],
            (Users item) => <String, Object?>{
                  'id': item.id,
                  'username': item.username,
                  'email': item.email,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'profile_name': item.profileName,
                  'contact_id': item.contactId,
                  'revera_id': item.reveraId,
                  'user_type': item.userType,
                  'security_question': item.securityQuestion,
                  'security_answer': item.securityAnswer,
                  'status': item.status ? 1 : 0,
                  'terms_and_condition_accepted':
                      item.termsAndConditionAccepted ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                }),
        _usersDeletionAdapter = DeletionAdapter(
            database,
            'users',
            ['id'],
            (Users item) => <String, Object?>{
                  'id': item.id,
                  'username': item.username,
                  'email': item.email,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'profile_name': item.profileName,
                  'contact_id': item.contactId,
                  'revera_id': item.reveraId,
                  'user_type': item.userType,
                  'security_question': item.securityQuestion,
                  'security_answer': item.securityAnswer,
                  'status': item.status ? 1 : 0,
                  'terms_and_condition_accepted':
                      item.termsAndConditionAccepted ? 1 : 0,
                  'created_date': item.createdDate,
                  'created_uid': item.createdUid,
                  'updated_date': item.updatedDate,
                  'updated_uid': item.updatedUid
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Users> _usersInsertionAdapter;

  final UpdateAdapter<Users> _usersUpdateAdapter;

  final DeletionAdapter<Users> _usersDeletionAdapter;

  @override
  Future<Users?> getUserById(int userId) async {
    return _queryAdapter.query('SELECT * FROM users WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Users(
            id: row['id'] as int?,
            username: row['username'] as String,
            email: row['email'] as String,
            firstName: row['first_name'] as String,
            lastName: row['last_name'] as String,
            profileName: row['profile_name'] as String,
            contactId: row['contact_id'] as int,
            reveraId: row['revera_id'] as String,
            userType: row['user_type'] as String,
            securityQuestion: row['security_question'] as String,
            securityAnswer: row['security_answer'] as String,
            status: (row['status'] as int) != 0,
            termsAndConditionAccepted:
                (row['terms_and_condition_accepted'] as int) != 0,
            createdDate: row['created_date'] as String,
            createdUid: row['created_uid'] as int?,
            updatedDate: row['updated_date'] as String,
            updatedUid: row['updated_uid'] as int?),
        arguments: [userId]);
  }

  @override
  Future<void> insert(Users object) async {
    await _usersInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Users object) async {
    await _usersInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Users> list) async {
    await _usersInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Users> list) async {
    await _usersInsertionAdapter.insertList(list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Users object) async {
    await _usersUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Users> list) async {
    await _usersUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Users object) async {
    await _usersDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Users> list) async {
    await _usersDeletionAdapter.deleteList(list);
  }
}

class _$VitalsDao extends VitalsDao {
  _$VitalsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _vitalsInsertionAdapter = InsertionAdapter(
            database,
            'vitals',
            (Vitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                }),
        _vitalsUpdateAdapter = UpdateAdapter(
            database,
            'vitals',
            ['vital_id'],
            (Vitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                }),
        _vitalsDeletionAdapter = DeletionAdapter(
            database,
            'vitals',
            ['vital_id'],
            (Vitals item) => <String, Object?>{
                  'vital_id': item.id,
                  'name': item.name,
                  'short_name': item.shortName,
                  'description': item.description,
                  'unit': item.unit,
                  'url': item.url,
                  'image_list_path': item.imageListPath,
                  'image_details_path': item.imageDetailsPath,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Vitals> _vitalsInsertionAdapter;

  final UpdateAdapter<Vitals> _vitalsUpdateAdapter;

  final DeletionAdapter<Vitals> _vitalsDeletionAdapter;

  @override
  Future<List<Vitals>> getAllVitals() async {
    return _queryAdapter.queryList('SELECT * FROM vitals',
        mapper: (Map<String, Object?> row) => Vitals(
            id: row['vital_id'] as int?,
            name: row['name'] as String,
            shortName: row['short_name'] as String,
            description: row['description'] as String,
            unit: row['unit'] as String,
            url: row['url'] as String,
            imageListPath: row['image_list_path'] as String,
            imageDetailsPath: row['image_details_path'] as String,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String));
  }

  @override
  Future<List<Vitals>> getVitals(int contactId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM vitals WHERE vitals.vitalId NOT IN (SELECT contactVitals.vitalsTypeId FROM contact_vitals WHERE contact_vitals.contactId = ?1)',
        mapper: (Map<String, Object?> row) => Vitals(id: row['vital_id'] as int?, name: row['name'] as String, shortName: row['short_name'] as String, description: row['description'] as String, unit: row['unit'] as String, url: row['url'] as String, imageListPath: row['image_list_path'] as String, imageDetailsPath: row['image_details_path'] as String, createdDate: row['created_date'] as String, updatedDate: row['updated_date'] as String),
        arguments: [contactId]);
  }

  @override
  Future<void> insert(Vitals object) async {
    await _vitalsInsertionAdapter.insert(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(Vitals object) async {
    await _vitalsInsertionAdapter.insert(object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<Vitals> list) async {
    await _vitalsInsertionAdapter.insertList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<Vitals> list) async {
    await _vitalsInsertionAdapter.insertList(list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(Vitals object) async {
    await _vitalsUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<Vitals> list) async {
    await _vitalsUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(Vitals object) async {
    await _vitalsDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<Vitals> list) async {
    await _vitalsDeletionAdapter.deleteList(list);
  }
}

class _$PreferredWorkDayDao extends PreferredWorkDayDao {
  _$PreferredWorkDayDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _preferredWorkDayInsertionAdapter = InsertionAdapter(
            database,
            'preferred_work_day',
            (PreferredWorkDay item) => <String, Object?>{
                  'id': item.id,
                  'week_day': item.weekDay,
                  'shashto_doctor_id': item.shashtoDoctorId,
                  'start_time': item.startTime,
                  'end_time': item.endTime
                }),
        _preferredWorkDayUpdateAdapter = UpdateAdapter(
            database,
            'preferred_work_day',
            ['id'],
            (PreferredWorkDay item) => <String, Object?>{
                  'id': item.id,
                  'week_day': item.weekDay,
                  'shashto_doctor_id': item.shashtoDoctorId,
                  'start_time': item.startTime,
                  'end_time': item.endTime
                }),
        _preferredWorkDayDeletionAdapter = DeletionAdapter(
            database,
            'preferred_work_day',
            ['id'],
            (PreferredWorkDay item) => <String, Object?>{
                  'id': item.id,
                  'week_day': item.weekDay,
                  'shashto_doctor_id': item.shashtoDoctorId,
                  'start_time': item.startTime,
                  'end_time': item.endTime
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PreferredWorkDay> _preferredWorkDayInsertionAdapter;

  final UpdateAdapter<PreferredWorkDay> _preferredWorkDayUpdateAdapter;

  final DeletionAdapter<PreferredWorkDay> _preferredWorkDayDeletionAdapter;

  @override
  Future<List<PreferredWorkDay>> getPreferredWorkDays() async {
    return _queryAdapter.queryList('SELECT * FROM preferred_work_day',
        mapper: (Map<String, Object?> row) => PreferredWorkDay(
            id: row['id'] as int,
            weekDay: row['week_day'] as int,
            shashtoDoctorId: row['shashto_doctor_id'] as int,
            startTime: row['start_time'] as String,
            endTime: row['end_time'] as String));
  }

  @override
  Future<List<PreferredWorkDay>> getPreferredWorkDaysByDoctorId(
      int doctorId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM preferred_work_day WHERE shashto_doctor_id = ?1 ORDER BY week_day ASC',
        mapper: (Map<String, Object?> row) => PreferredWorkDay(id: row['id'] as int, weekDay: row['week_day'] as int, shashtoDoctorId: row['shashto_doctor_id'] as int, startTime: row['start_time'] as String, endTime: row['end_time'] as String),
        arguments: [doctorId]);
  }

  @override
  Future<void> insert(PreferredWorkDay object) async {
    await _preferredWorkDayInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(PreferredWorkDay object) async {
    await _preferredWorkDayInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<PreferredWorkDay> list) async {
    await _preferredWorkDayInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<PreferredWorkDay> list) async {
    await _preferredWorkDayInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(PreferredWorkDay object) async {
    await _preferredWorkDayUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<PreferredWorkDay> list) async {
    await _preferredWorkDayUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(PreferredWorkDay object) async {
    await _preferredWorkDayDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<PreferredWorkDay> list) async {
    await _preferredWorkDayDeletionAdapter.deleteList(list);
  }
}

class _$DoctorReportDao extends DoctorReportDao {
  _$DoctorReportDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _doctorReportInsertionAdapter = InsertionAdapter(
            database,
            'doctor_report',
            (DoctorReport item) => <String, Object?>{
                  'id': item.id,
                  'follow_up_date': item.followUpDate,
                  'presenting_complaints': item.presentingComplaints,
                  'prior_medical_conditions': item.priorMedicalConditions,
                  'allergies': item.allergies,
                  'medicines': item.medicines,
                  'diagnosis': item.diagnosis,
                  'investigations': item.investigations,
                  'treatment_plan': item.treatmentPlan,
                  'additional_notes': item.additionalNotes,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _doctorReportUpdateAdapter = UpdateAdapter(
            database,
            'doctor_report',
            ['id'],
            (DoctorReport item) => <String, Object?>{
                  'id': item.id,
                  'follow_up_date': item.followUpDate,
                  'presenting_complaints': item.presentingComplaints,
                  'prior_medical_conditions': item.priorMedicalConditions,
                  'allergies': item.allergies,
                  'medicines': item.medicines,
                  'diagnosis': item.diagnosis,
                  'investigations': item.investigations,
                  'treatment_plan': item.treatmentPlan,
                  'additional_notes': item.additionalNotes,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _doctorReportDeletionAdapter = DeletionAdapter(
            database,
            'doctor_report',
            ['id'],
            (DoctorReport item) => <String, Object?>{
                  'id': item.id,
                  'follow_up_date': item.followUpDate,
                  'presenting_complaints': item.presentingComplaints,
                  'prior_medical_conditions': item.priorMedicalConditions,
                  'allergies': item.allergies,
                  'medicines': item.medicines,
                  'diagnosis': item.diagnosis,
                  'investigations': item.investigations,
                  'treatment_plan': item.treatmentPlan,
                  'additional_notes': item.additionalNotes,
                  'contact_appointment_details_id':
                      item.contactAppointmentDetailsId,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<DoctorReport> _doctorReportInsertionAdapter;

  final UpdateAdapter<DoctorReport> _doctorReportUpdateAdapter;

  final DeletionAdapter<DoctorReport> _doctorReportDeletionAdapter;

  @override
  Future<List<DoctorReport>?> getDoctorReportList() async {
    return _queryAdapter.queryList('SELECT * FROM doctor_report',
        mapper: (Map<String, Object?> row) => DoctorReport(
            id: row['id'] as int,
            followUpDate: row['follow_up_date'] as String,
            presentingComplaints: row['presenting_complaints'] as String,
            priorMedicalConditions: row['prior_medical_conditions'] as String,
            allergies: row['allergies'] as String,
            medicines: row['medicines'] as String,
            diagnosis: row['diagnosis'] as String,
            investigations: row['investigations'] as String,
            treatmentPlan: row['treatment_plan'] as String,
            additionalNotes: row['additional_notes'] as String,
            contactAppointmentDetailsId:
                row['contact_appointment_details_id'] as int,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<PrescriptionDetails?> getPrescriptionDetails(
    int appointmentDetailsId,
    int doctorReportId,
  ) async {
    return _queryAdapter.query(
        'SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id,             doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id      FROM doctor_report, doctor_prescription      WHERE doctor_report.id = ?2        AND doctor_report.contact_appointment_details_id = ?1        AND doctor_report.id = doctor_prescription.doctor_report_id',
        mapper: (Map<String, Object?> row) => PrescriptionDetails(id: row['id'] as int, followUpDate: row['follow_up_date'] as String, presentingComplaints: row['presenting_complaints'] as String, priorMedicalConditions: row['prior_medical_conditions'] as String, allergies: row['allergies'] as String, medicines: row['medicines'] as String, diagnosis: row['diagnosis'] as String, investigations: row['investigations'] as String, treatmentPlan: row['treatment_plan'] as String, additionalNotes: row['additional_notes'] as String, contactAppointmentDetailsId: row['contact_appointment_details_id'] as int, fileUrl: row['file_url'] as String, signedFileUrl: row['signed_file_url'] as String, doctorReportId: row['doctor_report_id'] as int, status: (row['status'] as int) != 0, isSigned: (row['is_signed'] as int) != 0, updatedDate: row['updated_date'] as String),
        arguments: [appointmentDetailsId, doctorReportId]);
  }

  @override
  Future<PrescriptionDetails?> getPrescriptionDetailsByAppointmentDetailsId(
    int appointmentDetailsId,
    bool isSigned,
  ) async {
    return _queryAdapter.query(
        'SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id,             doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id, doctor_prescription.updated_date as updated_date      FROM doctor_report, doctor_prescription      WHERE doctor_report.contact_appointment_details_id = ?1        AND doctor_report.id = doctor_prescription.doctor_report_id        AND doctor_prescription.is_signed = ?2      ORDER BY doctor_report.id DESC',
        mapper: (Map<String, Object?> row) => PrescriptionDetails(id: row['id'] as int, followUpDate: row['follow_up_date'] as String, presentingComplaints: row['presenting_complaints'] as String, priorMedicalConditions: row['prior_medical_conditions'] as String, allergies: row['allergies'] as String, medicines: row['medicines'] as String, diagnosis: row['diagnosis'] as String, investigations: row['investigations'] as String, treatmentPlan: row['treatment_plan'] as String, additionalNotes: row['additional_notes'] as String, contactAppointmentDetailsId: row['contact_appointment_details_id'] as int, fileUrl: row['file_url'] as String, signedFileUrl: row['signed_file_url'] as String, doctorReportId: row['doctor_report_id'] as int, status: (row['status'] as int) != 0, isSigned: (row['is_signed'] as int) != 0, updatedDate: row['updated_date'] as String),
        arguments: [appointmentDetailsId, isSigned ? 1 : 0]);
  }

  @override
  Future<List<PrescriptionDetails>> getAllPrescriptionByStatus(
      bool isSigned) async {
    return _queryAdapter.queryList(
        'SELECT doctor_report.*, doctor_prescription.file_url, doctor_prescription.signed_file_url, doctor_prescription.doctor_report_id,             doctor_prescription.status, doctor_prescription.is_signed, doctor_prescription.id as id, doctor_prescription.updated_date as updated_date      FROM doctor_report, doctor_prescription      WHERE doctor_report.id = doctor_prescription.doctor_report_id        AND doctor_prescription.is_signed = ?1      ORDER BY doctor_report.id DESC',
        mapper: (Map<String, Object?> row) => PrescriptionDetails(id: row['id'] as int, followUpDate: row['follow_up_date'] as String, presentingComplaints: row['presenting_complaints'] as String, priorMedicalConditions: row['prior_medical_conditions'] as String, allergies: row['allergies'] as String, medicines: row['medicines'] as String, diagnosis: row['diagnosis'] as String, investigations: row['investigations'] as String, treatmentPlan: row['treatment_plan'] as String, additionalNotes: row['additional_notes'] as String, contactAppointmentDetailsId: row['contact_appointment_details_id'] as int, fileUrl: row['file_url'] as String, signedFileUrl: row['signed_file_url'] as String, doctorReportId: row['doctor_report_id'] as int, status: (row['status'] as int) != 0, isSigned: (row['is_signed'] as int) != 0, updatedDate: row['updated_date'] as String),
        arguments: [isSigned ? 1 : 0]);
  }

  @override
  Future<void> insert(DoctorReport object) async {
    await _doctorReportInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(DoctorReport object) async {
    await _doctorReportInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<DoctorReport> list) async {
    await _doctorReportInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<DoctorReport> list) async {
    await _doctorReportInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(DoctorReport object) async {
    await _doctorReportUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<DoctorReport> list) async {
    await _doctorReportUpdateAdapter.updateList(list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(DoctorReport object) async {
    await _doctorReportDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<DoctorReport> list) async {
    await _doctorReportDeletionAdapter.deleteList(list);
  }
}

class _$DoctorPrescriptionDao extends DoctorPrescriptionDao {
  _$DoctorPrescriptionDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _doctorPrescriptionInsertionAdapter = InsertionAdapter(
            database,
            'doctor_prescription',
            (DoctorPrescription item) => <String, Object?>{
                  'id': item.id,
                  'file_url': item.fileUrl,
                  'signed_file_url': item.signedFileUrl,
                  'doctor_report_id': item.doctorReportId,
                  'status': item.status ? 1 : 0,
                  'is_signed': item.isSigned ? 1 : 0,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _doctorPrescriptionUpdateAdapter = UpdateAdapter(
            database,
            'doctor_prescription',
            ['id'],
            (DoctorPrescription item) => <String, Object?>{
                  'id': item.id,
                  'file_url': item.fileUrl,
                  'signed_file_url': item.signedFileUrl,
                  'doctor_report_id': item.doctorReportId,
                  'status': item.status ? 1 : 0,
                  'is_signed': item.isSigned ? 1 : 0,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                }),
        _doctorPrescriptionDeletionAdapter = DeletionAdapter(
            database,
            'doctor_prescription',
            ['id'],
            (DoctorPrescription item) => <String, Object?>{
                  'id': item.id,
                  'file_url': item.fileUrl,
                  'signed_file_url': item.signedFileUrl,
                  'doctor_report_id': item.doctorReportId,
                  'status': item.status ? 1 : 0,
                  'is_signed': item.isSigned ? 1 : 0,
                  'created_date': item.createdDate,
                  'updated_date': item.updatedDate,
                  'created_by': item.createdBy,
                  'updated_by': item.updatedBy
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<DoctorPrescription>
      _doctorPrescriptionInsertionAdapter;

  final UpdateAdapter<DoctorPrescription> _doctorPrescriptionUpdateAdapter;

  final DeletionAdapter<DoctorPrescription> _doctorPrescriptionDeletionAdapter;

  @override
  Future<List<DoctorPrescription>?> getDoctorPrescriptionList() async {
    return _queryAdapter.queryList('SELECT * FROM doctor_prescription',
        mapper: (Map<String, Object?> row) => DoctorPrescription(
            id: row['id'] as int,
            fileUrl: row['file_url'] as String,
            signedFileUrl: row['signed_file_url'] as String,
            doctorReportId: row['doctor_report_id'] as int,
            status: (row['status'] as int) != 0,
            isSigned: (row['is_signed'] as int) != 0,
            createdDate: row['created_date'] as String,
            updatedDate: row['updated_date'] as String,
            createdBy: row['created_by'] as String,
            updatedBy: row['updated_by'] as String));
  }

  @override
  Future<void> insert(DoctorPrescription object) async {
    await _doctorPrescriptionInsertionAdapter.insert(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(DoctorPrescription object) async {
    await _doctorPrescriptionInsertionAdapter.insert(
        object, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertList(List<DoctorPrescription> list) async {
    await _doctorPrescriptionInsertionAdapter.insertList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateList(List<DoctorPrescription> list) async {
    await _doctorPrescriptionInsertionAdapter.insertList(
        list, OnConflictStrategy.replace);
  }

  @override
  Future<void> update(DoctorPrescription object) async {
    await _doctorPrescriptionUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<DoctorPrescription> list) async {
    await _doctorPrescriptionUpdateAdapter.updateList(
        list, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteObject(DoctorPrescription object) async {
    await _doctorPrescriptionDeletionAdapter.delete(object);
  }

  @override
  Future<void> deleteList(List<DoctorPrescription> list) async {
    await _doctorPrescriptionDeletionAdapter.deleteList(list);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
final _dateConverter = DateConverter();
final _timeConverter = TimeConverter();
