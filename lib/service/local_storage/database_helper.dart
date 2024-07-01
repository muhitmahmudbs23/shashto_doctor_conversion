import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'shashto_doctor.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    
     db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY,
        username TEXT,
        email TEXT,
        first_name TEXT,
        last_name TEXT,
        profile_name TEXT,
        contact_id INTEGER,
        revera_id TEXT,
        user_type TEXT,
        security_question TEXT,
        security_answer TEXT,
        status BOOLEAN,
        terms_and_condition_accepted BOOLEAN,
        created_date TEXT,
        created_uid INTEGER,
        updated_date TEXT,
        updated_uid INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE contacts (
        id INTEGER PRIMARY KEY,
        first_name TEXT,
        last_name TEXT,
        date_of_birth TEXT,
        country_of_birth TEXT,
        estimated_age TEXT,
        gender TEXT,
        status BOOLEAN,
        nationality TEXT,
        national_id TEXT,
        nid_photo_one TEXT,
        nid_photo_two TEXT,
        have_medical_insurance BOOLEAN,
        no_of_children INTEGER,
        medical_insurance_name TEXT,
        medical_insurance_id TEXT,
        mid_photo_one TEXT,
        mid_photo_two TEXT,
        ethnicity TEXT,
        religion TEXT,
        occupation TEXT,
        education_level TEXT,
        merital_status TEXT,
        have_children BOOLEAN,
        blood_group TEXT,
        email TEXT,
        username TEXT,
        phone TEXT,
        height TEXT,
        weight TEXT,
        bmi TEXT,
        alergies TEXT,
        profile_photo TEXT,
        is_findable BOOLEAN,
        created_date TEXT,
        created_uid INTEGER,
        updated_date TEXT,
        updated_uid INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE contacts_attribute (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        title TEXT,
        attribute_key TEXT,
        attribute_value TEXT,
        order_number INTEGER,
        created_date TEXT,
        created_uid INTEGER,
        updated_date TEXT,
        updated_uid INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE contact_medical_condition (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        name TEXT,
        year_of_diagnosis TEXT,
        tag_id INTEGER,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contacts_immunization (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        contact_medical_record_id INTEGER,
        name TEXT,
        dosage INTEGER,
        date TEXT,
        next_due_date TEXT,
        is_reminder_set BOOLEAN,
        notes TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contacts_medical_record (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        module_id INTEGER,
        institution_name TEXT,
        provider_name TEXT,
        record_date TEXT,
        notes TEXT,
        custom_report_name TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contacts_medical_images_type (
        id INTEGER PRIMARY KEY,
        contact_medical_record_id INTEGER,
        report_type INTEGER,
        report_sub_type INTEGER,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contacts_medical_images (
        id INTEGER PRIMARY KEY,
        contact_medical_images_type_id INTEGER,
        image_path TEXT,
        report_type TEXT,
        report_sub_type TEXT,
        date TEXT,
        is_ocr_enabled BOOLEAN,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_relationship (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        related_contact_id INTEGER,
        relationship_type TEXT,
        is_emergency_contact BOOLEAN,
        is_linked_profile BOOLEAN,
        is_children BOOLEAN,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_address (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        address_line_1 TEXT,
        address_line_2 TEXT,
        city TEXT,
        state TEXT,
        country TEXT,
        post_code TEXT,
        is_primary BOOLEAN,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE tags (
        tag_id INTEGER PRIMARY KEY,
        name TEXT,
        url TEXT,
        parent_id INTEGER,
        tag_type TEXT,
        created_date TEXT,
        updated_date TEXT,
        created_by TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE medicines (
        id INTEGER PRIMARY KEY,
        brand_name TEXT,
        generic_name TEXT,
        short_name TEXT,
        company TEXT,
        category TEXT,
        created_date TEXT,
        updated_date TEXT,
        created_uid INTEGER,
        updated_uid INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE contact_medication (
        id INTEGER PRIMARY KEY,
        medicine_id INTEGER,
        contact_medical_record_id INTEGER,
        generic_name TEXT,
        name TEXT,
        medicine_type TEXT,
        no_of_quantity TEXT,
        dosage INTEGER,
        duration INTEGER,
        frequency TEXT,
        start_date TEXT,
        end_date TEXT,
        is_reminder_set BOOLEAN,
        is_ongoing BOOLEAN,
        type TEXT,
        notes TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_medicine_allergies (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        medicine_id INTEGER,
        generic_name TEXT,
        notes TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE vitals (
        vital_id INTEGER PRIMARY KEY,
        name TEXT,
        short_name TEXT,
        description TEXT,
        unit TEXT,
        url TEXT,
        image_list_path TEXT,
        image_details_path TEXT,
        created_date TEXT,
        updated_date TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_vitals (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        vitals_type_id INTEGER,
        custom_vitals_type_id INTEGER,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_vitals_value (
        id INTEGER PRIMARY KEY,
        contact_medical_record_id INTEGER,
        contact_vitals_id INTEGER,
        vitals_value TEXT,
        vitals_datetime TEXT,
        created_date TEXT,
        updated_date TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_appointments (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        appointment_date TEXT,
        appointment_type TEXT,
        doctor_name TEXT,
        notes TEXT,
        status TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_appointment_details (
        id INTEGER PRIMARY KEY,
        appointment_id INTEGER,
        symptom TEXT,
        diagnosis TEXT,
        prescription TEXT,
        advice TEXT,
        follow_up_date TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE reminders (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        type TEXT,
        actual_id INTEGER,
        start_time TEXT,
        only_date TEXT,
        only_time TEXT,
        end_time TEXT,
        is_ongoing_medicine BOOLEAN,
        job_id INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE notification (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        type TEXT,
        actual_id INTEGER,
        start_time TEXT,
        taken BOOLEAN,
        latter BOOLEAN,
        seen BOOLEAN
      )
    ''');

     db.execute('''
      CREATE TABLE contact_diary (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        diary_date TEXT,
        title TEXT,
        description TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE news_config (
        id INTEGER PRIMARY KEY,
        name TEXT,
        url TEXT,
        active BOOLEAN
      )
    ''');

     db.execute('''
      CREATE TABLE contact_medication_reminder (
        id INTEGER PRIMARY KEY,
        contact_medication_id INTEGER,
        time TEXT,
        date_day TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE custom_vitals (
        vital_id INTEGER PRIMARY KEY,
        name TEXT,
        short_name TEXT,
        description TEXT,
        unit TEXT,
        url TEXT,
        image_list_path TEXT,
        image_details_path TEXT,
        created_date TEXT,
        updated_date TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE share (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        receiver_revera_id TEXT,
        sender_revera_id TEXT,
        receiver_profile_name TEXT,
        sender_profile_name TEXT,
        sharing_file TEXT,
        sharing_datetime TEXT,
        status BOOLEAN,
        life_style BOOLEAN,
        next_of_kin BOOLEAN,
        immunization_history BOOLEAN,
        medical_conditions BOOLEAN,
        is_accepted INTEGER,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE contact_location (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        latitude REAL,
        longitude REAL,
        location_date TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE revera_doctors (
        id INTEGER PRIMARY KEY,
        digital_sign_image TEXT,
        name TEXT,
        designation TEXT,
        institution TEXT,
        specialization TEXT,
        description TEXT,
        status BOOLEAN,
        contact_id INTEGER,
        revera_id TEXT,
        profile_name TEXT,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE revera_doctor_appointment_slots (
        id INTEGER PRIMARY KEY,
        shashto_doc_id INTEGER,
        slot_request_id INTEGER,
        date TEXT,
        time TEXT,
        time_slot TEXT,
        start_time TEXT,
        end_time TEXT,
        status BOOLEAN,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT,
        time_stamp INTEGER
      )
    ''');

     db.execute('''
      CREATE TABLE chat_history (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        message TEXT,
        message_type TEXT,
        created_date TEXT,
        created_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE call_history (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        call_type TEXT,
        call_duration INTEGER,
        created_date TEXT,
        created_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE message_history (
        id INTEGER PRIMARY KEY,
        contact_id INTEGER,
        message TEXT,
        created_date TEXT,
        created_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE rating_tag_table (
        id INTEGER PRIMARY KEY,
        key TEXT,
        value REAL
      )
    ''');

     db.execute('''
      CREATE TABLE preferred_work_day (
        id INTEGER PRIMARY KEY,
        week_day INTEGER,
        shashto_doctor_id INTEGER,
        start_time TEXT,
        end_time TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE doctor_report (
        id INTEGER PRIMARY KEY,
        follow_up_date TEXT,
        presenting_complaints TEXT,
        prior_medical_conditions TEXT,
        allergies TEXT,
        medicines TEXT,
        diagnosis TEXT,
        investigations TEXT,
        treatment_plan TEXT,
        additional_notes TEXT,
        contact_appointment_details_id INTEGER,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');

     db.execute('''
      CREATE TABLE doctor_prescription (
        id INTEGER PRIMARY KEY,
        file_url TEXT,
        signed_file_url TEXT,
        doctor_report_id INTEGER,
        status BOOLEAN,
        is_signed BOOLEAN,
        created_date TEXT,
        created_by TEXT,
        updated_date TEXT,
        updated_by TEXT
      )
    ''');
  }

  Future<void> clearDatabase() async {
    final db = await database;
    await db.delete('users');
    await db.delete('contacts');
    await db.delete('contacts_attribute');
    await db.delete('contact_medical_condition');
    await db.delete('contacts_immunization');
    await db.delete('contacts_medical_record');
    await db.delete('contacts_medical_images_type');
    await db.delete('contacts_medical_images');
    await db.delete('contact_relationship');
    await db.delete('contact_address');
    await db.delete('tags');
    await db.delete('medicines');
    await db.delete('contact_medication');
    await db.delete('contact_medicine_allergies');
    await db.delete('vitals');
    await db.delete('contact_vitals');
    await db.delete('contact_vitals_value');
    await db.delete('contact_appointments');
    await db.delete('contact_appointment_details');
    await db.delete('reminders');
    await db.delete('notification');
    await db.delete('contact_diary');
    await db.delete('news_config');
    await db.delete('contact_medication_reminder');
    await db.delete('custom_vitals');
    await db.delete('share');
    await db.delete('contact_location');
    await db.delete('revera_doctors');
    await db.delete('revera_doctor_appointment_slots');
    await db.delete('chat_history');
    await db.delete('call_history');
    await db.delete('message_history');
    await db.delete('rating_tag_table');
    await db.delete('preferred_work_day');
    await db.delete('doctor_report');
    await db.delete('doctor_prescription');
  }
}
