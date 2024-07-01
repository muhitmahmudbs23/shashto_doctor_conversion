import 'package:json_annotation/json_annotation.dart';

part 'contacts.g.dart';

@JsonSerializable()
class Contacts {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;

  @JsonKey(name: 'country_of_birth')
  final String countryOfBirth;

  @JsonKey(name: 'estimated_age')
  final String estimatedAge;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'nationality')
  final String nationality;

  @JsonKey(name: 'national_id')
  final String nationalId;

  @JsonKey(name: 'nid_photo_one')
  final String nidPhotoOne;

  @JsonKey(name: 'nid_photo_two')
  final String nidPhotoTwo;

  @JsonKey(name: 'have_medical_insurance')
  final bool haveMedicalInsurance;

  @JsonKey(name: 'no_of_children')
  final int noOfChildren;

  @JsonKey(name: 'medical_insurance_name')
  final String medicalInsuranceName;

  @JsonKey(name: 'medical_insurance_id')
  final String medicalInsuranceId;

  @JsonKey(name: 'mid_photo_one')
  final String midPhotoOne;

  @JsonKey(name: 'mid_photo_two')
  final String midPhotoTwo;

  @JsonKey(name: 'ethnicity')
  final String ethnicity;

  @JsonKey(name: 'religion')
  final String religion;

  @JsonKey(name: 'occupation')
  final String occupation;

  @JsonKey(name: 'education_level')
  final String educationLevel;

  @JsonKey(name: 'merital_status')
  final String meritalStatus;

  @JsonKey(name: 'have_children')
  final bool haveChildren;

  @JsonKey(name: 'blood_group')
  final String bloodGroup;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'height')
  final String height;

  @JsonKey(name: 'weight')
  final String weight;

  @JsonKey(name: 'bmi')
  final String bmi;

  @JsonKey(name: 'alergies')
  final String alergies;

  @JsonKey(name: 'profile_photo')
  final String profilePhoto;

  @JsonKey(name: 'is_findable')
  final bool isFindable;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_uid')
  final int createdUid;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_uid')
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

  factory Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsToJson(this);

  @override
  String toString() {
    return 'Contacts{id: $id, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, countryOfBirth: $countryOfBirth, estimatedAge: $estimatedAge, gender: $gender, status: $status, nationality: $nationality, nationalId: $nationalId, nidPhotoOne: $nidPhotoOne, nidPhotoTwo: $nidPhotoTwo, haveMedicalInsurance: $haveMedicalInsurance, noOfChildren: $noOfChildren, medicalInsuranceName: $medicalInsuranceName, medicalInsuranceId: $medicalInsuranceId, midPhotoOne: $midPhotoOne, midPhotoTwo: $midPhotoTwo, ethnicity: $ethnicity, religion: $religion, occupation: $occupation, educationLevel: $educationLevel, meritalStatus: $meritalStatus, haveChildren: $haveChildren, bloodGroup: $bloodGroup, email: $email, username: $username, phone: $phone, height: $height, weight: $weight, bmi: $bmi, alergies: $alergies, profilePhoto: $profilePhoto, isFindable: $isFindable, createdDate: $createdDate, createdUid: $createdUid, updatedDate: $updatedDate, updatedUid: $updatedUid}';
  }
}
