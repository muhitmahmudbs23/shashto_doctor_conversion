import 'package:floor/floor.dart';

@Entity(tableName: 'contacts')
class Contacts {
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

  Contacts({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.countryOfBirth,
    required this.estimatedAge,
    required this.gender,
    required this.status,
    required this.nationality,
    required this.nationalId,
    required this.nidPhotoOne,
    required this.nidPhotoTwo,
    required this.haveMedicalInsurance,
    required this.noOfChildren,
    required this.medicalInsuranceName,
    required this.medicalInsuranceId,
    required this.midPhotoOne,
    required this.midPhotoTwo,
    required this.ethnicity,
    required this.religion,
    required this.occupation,
    required this.educationLevel,
    required this.meritalStatus,
    required this.haveChildren,
    required this.bloodGroup,
    required this.email,
    required this.username,
    required this.phone,
    required this.height,
    required this.weight,
    required this.bmi,
    required this.alergies,
    required this.profilePhoto,
    required this.isFindable,
    required this.createdDate,
    required this.createdUid,
    required this.updatedDate,
    required this.updatedUid,
  });

  @override
  String toString() {
    return 'Contacts{id: $id, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, countryOfBirth: $countryOfBirth, estimatedAge: $estimatedAge, gender: $gender, status: $status, nationality: $nationality, nationalId: $nationalId, nidPhotoOne: $nidPhotoOne, nidPhotoTwo: $nidPhotoTwo, haveMedicalInsurance: $haveMedicalInsurance, noOfChildren: $noOfChildren, medicalInsuranceName: $medicalInsuranceName, medicalInsuranceId: $medicalInsuranceId, midPhotoOne: $midPhotoOne, midPhotoTwo: $midPhotoTwo, ethnicity: $ethnicity, religion: $religion, occupation: $occupation, educationLevel: $educationLevel, meritalStatus: $meritalStatus, haveChildren: $haveChildren, bloodGroup: $bloodGroup, email: $email, username: $username, phone: $phone, height: $height, weight: $weight, bmi: $bmi, alergies: $alergies, profilePhoto: $profilePhoto, isFindable: $isFindable, createdDate: $createdDate, createdUid: $createdUid, updatedDate: $updatedDate, updatedUid: $updatedUid}';
  }
}
