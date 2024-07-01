import 'package:floor/floor.dart';
import '../entity/contact_medical_images.dart';
import 'base_dao.dart';

@dao
abstract class ContactMedicalImagesDao extends BaseDao<ContactMedicalImages> {
  @Query('SELECT * FROM contacts_medical_images WHERE contact_medical_images_type_id = :contactMedicalImageTypeId')
  Future<List<ContactMedicalImages>> getContactMedicalImagesByContactMedicalImageTypeId(int contactMedicalImageTypeId);

  @Query(
      'SELECT contacts_medical_images.* FROM contacts_medical_images, contacts_medical_images_type WHERE '
      'contacts_medical_images_type.contact_medical_record_id = :contactMedicalRecordId AND '
      'contacts_medical_images_type.id = contacts_medical_images.contact_medical_images_type_id')
  Future<List<ContactMedicalImages>> getContactMedicalImagesByContactMedicalRecordId(int contactMedicalRecordId);

  @Query('SELECT image_path FROM contacts_medical_images WHERE contact_medical_images_type_id = :contactMedicalImageTypeId LIMIT 1')
  Future<String?> getImagePathByContactMedicalImageTypeId(int contactMedicalImageTypeId);
}
