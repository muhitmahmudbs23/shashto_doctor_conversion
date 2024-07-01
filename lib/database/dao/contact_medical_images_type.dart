import 'package:floor/floor.dart';
import '../entity/contacts_medical_images_type.dart';
import 'base_dao.dart';

@dao
abstract class ContactsMedicalImagesTypeDao extends BaseDao<ContactsMedicalImagesType> {
  @Query('SELECT * FROM contacts_medical_images_type WHERE contact_medical_record_id = :contactMedicalRecordId')
  Future<ContactsMedicalImagesType?> getContactMedicalImagesTypeByContactMedicalRecordId(int contactMedicalRecordId);
}
