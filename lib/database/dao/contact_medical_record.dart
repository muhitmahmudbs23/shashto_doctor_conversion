import 'package:floor/floor.dart';
import '../entity/contact_medical_records.dart';
import '../non_entity/clinical_record.dart';
import 'base_dao.dart';

@dao
abstract class ContactMedicalRecordDao extends BaseDao<ContactMedicalRecord> {
  @Query('SELECT * FROM contacts_medical_record WHERE id = :contactMedicalRecordId')
  Future<ContactMedicalRecord?> getContactMedicalRecordById(int contactMedicalRecordId);

  @Query('''
    SELECT contacts_medical_record.*, contacts_medical_images_type.id as contacts_medical_images_type_id, contacts_medical_images_type.report_type, 
    contacts_medical_images_type.report_sub_type FROM contacts_medical_record, contacts_medical_images_type, tags 
    WHERE contacts_medical_record.contact_id = :contactId AND contacts_medical_record.module_id = 4 
    AND contacts_medical_record.id = contacts_medical_images_type.contact_medical_record_id 
    AND contacts_medical_images_type.report_type = tags.tag_id 
    AND tags.tag_type = :tagType 
    ORDER BY contacts_medical_record.id DESC LIMIT 2''')
  Future<List<ClinicalRecord>> getDashboardClinicalRecords(int contactId, String tagType);

  @Query('''
    SELECT contacts_medical_record.*, contacts_medical_images_type.id as contacts_medical_images_type_id, contacts_medical_images_type.report_type, 
    contacts_medical_images_type.report_sub_type FROM contacts_medical_record, contacts_medical_images_type, tags 
    WHERE contacts_medical_record.contact_id = :contactId AND contacts_medical_record.module_id = 4 
    AND contacts_medical_record.id = contacts_medical_images_type.contact_medical_record_id 
    AND contacts_medical_images_type.report_type = tags.tag_id 
    AND tags.tag_type = :tagType 
    ORDER BY contacts_medical_record.record_date DESC''')
  Future<List<ClinicalRecord>> getClinicalRecords(int contactId, String tagType);
}
