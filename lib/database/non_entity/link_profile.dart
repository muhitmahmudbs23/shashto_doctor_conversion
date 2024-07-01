import 'package:floor/floor.dart';


@entity
class LinkProfile {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'first_name')
  final String firstName;

  @ColumnInfo(name: 'last_name')
  final String lastName;

  @ColumnInfo(name: 'date_of_birth')
  final String dateOfBirth;

  @ColumnInfo(name: 'country_of_birth')
  final String countryOfBirth;

  @ColumnInfo(name: 'estimated_age')
  final String estimatedAge;

  @ColumnInfo(name: 'gender')
  final String gender;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'nationality')
  final String nationality;

  @ColumnInfo(name: 'national_id')
  final String nationalId;

  @ColumnInfo(name: 'nid_photo_one')
  final String nidPhotoOne;

  @ColumnInfo(name: 'nid_photo_two')
  final String nidPhotoTwo;

  @ColumnInfo(name: 'have_medical_insurance')
  final bool haveMedicalInsurance;

  @ColumnInfo(name: 'no_of_children')
  final int noOfChildren;

  @ColumnInfo(name: 'medical_insurance_name')
  final String medicalInsuranceName;

  @ColumnInfo(name: 'medical_insurance_id')
  final String medicalInsuranceId;

  @ColumnInfo(name: 'mid_photo_one')
  final String midPhotoOne;

  @ColumnInfo(name: 'mid_photo_two')
  final String midPhotoTwo;

  @ColumnInfo(name: 'ethnicity')
  final String ethnicity;

  @ColumnInfo(name: 'religion')
  final String religion;

  @ColumnInfo(name: 'occupation')
  final String occupation;

  @ColumnInfo(name: 'education_level')
  final String educationLevel;

  @ColumnInfo(name: 'merital_status')
  final String meritalStatus;

  @ColumnInfo(name: 'have_children')
  final bool haveChildren;

  @ColumnInfo(name: 'blood_group')
  final String bloodGroup;

  @ColumnInfo(name: 'email')
  final String email;

  @ColumnInfo(name: 'username')
  final String username;

  @ColumnInfo(name: 'phone')
  final String phone;

  @ColumnInfo(name: 'height')
  final String height;

  @ColumnInfo(name: 'weight')
  final String weight;

  @ColumnInfo(name: 'bmi')
  final String bmi;

  @ColumnInfo(name: 'alergies')
  final String alergies;

  @ColumnInfo(name: 'profile_photo')
  final String profilePhoto;

  @ColumnInfo(name: 'is_findable')
  final bool isFindable;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_uid')
  final int createdUid;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_uid')
  final int updatedUid;
  bool isSelected;

  LinkProfile(
    this.id,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.countryOfBirth,
    this.estimatedAge,
    this.gender,
    this.status,
    this.nationality,
    this.nationalId,
    this.nidPhotoOne,
    this.nidPhotoTwo,
    this.haveMedicalInsurance,
    this.noOfChildren,
    this.medicalInsuranceName,
    this.medicalInsuranceId,
    this.midPhotoOne,
    this.midPhotoTwo,
    this.ethnicity,
    this.religion,
    this.occupation,
    this.educationLevel,
    this.meritalStatus,
    this.haveChildren,
    this.bloodGroup,
    this.email,
    this.username,
    this.phone,
    this.height,
    this.weight,
    this.bmi,
    this.alergies,
    this.profilePhoto,
    this.isFindable,
    this.createdDate,
    this.createdUid,
    this.updatedDate,
    this.updatedUid, {
    this.isSelected = false,
  });
}
