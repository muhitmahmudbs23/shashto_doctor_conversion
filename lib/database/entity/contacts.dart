import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contacts.g.dart';

@JsonSerializable()
@Entity(tableName: 'contacts')
class Contacts {
  @primaryKey
  @ColumnInfo(name: 'id')
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'first_name')
  @ColumnInfo(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  @ColumnInfo(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'date_of_birth')
  @ColumnInfo(name: 'date_of_birth')
  final String? dateOfBirth;

  @JsonKey(name: 'country_of_birth')
  @ColumnInfo(name: 'country_of_birth')
  final String? countryOfBirth;

  @JsonKey(name: 'estimated_age')
  @ColumnInfo(name: 'estimated_age')
  final String? estimatedAge;

  @JsonKey(name: 'gender')
  @ColumnInfo(name: 'gender')
  final String? gender;

  @JsonKey(name: 'status')
  @ColumnInfo(name: 'status')
  final bool? status;

  @JsonKey(name: 'nationality')
  @ColumnInfo(name: 'nationality')
  final String? nationality;

  @JsonKey(name: 'national_id')
  @ColumnInfo(name: 'national_id')
  final String? nationalId;

  @JsonKey(name: 'nid_photo_one')
  @ColumnInfo(name: 'nid_photo_one')
  final String? nidPhotoOne;

  @JsonKey(name: 'nid_photo_two')
  @ColumnInfo(name: 'nid_photo_two')
  final String? nidPhotoTwo;

  @JsonKey(name: 'have_medical_insurance')
  @ColumnInfo(name: 'have_medical_insurance')
  final bool? haveMedicalInsurance;

  @JsonKey(name: 'no_of_children')
  @ColumnInfo(name: 'no_of_children')
  final int? noOfChildren;

  @JsonKey(name: 'medical_insurance_name')
  @ColumnInfo(name: 'medical_insurance_name')
  final String? medicalInsuranceName;

  @JsonKey(name: 'medical_insurance_id')
  @ColumnInfo(name: 'medical_insurance_id')
  final String? medicalInsuranceId;

  @JsonKey(name: 'mid_photo_one')
  @ColumnInfo(name: 'mid_photo_one')
  final String? midPhotoOne;

  @JsonKey(name: 'mid_photo_two')
  @ColumnInfo(name: 'mid_photo_two')
  final String? midPhotoTwo;

  @JsonKey(name: 'ethnicity')
  @ColumnInfo(name: 'ethnicity')
  final String? ethnicity;

  @JsonKey(name: 'religion')
  @ColumnInfo(name: 'religion')
  final String? religion;

  @JsonKey(name: 'occupation')
  @ColumnInfo(name: 'occupation')
  final String? occupation;

  @JsonKey(name: 'education_level')
  @ColumnInfo(name: 'education_level')
  final String? educationLevel;

  @JsonKey(name: 'merital_status')
  @ColumnInfo(name: 'merital_status')
  final String? meritalStatus;

  @JsonKey(name: 'have_children')
  @ColumnInfo(name: 'have_children')
  final bool? haveChildren;

  @JsonKey(name: 'blood_group')
  @ColumnInfo(name: 'blood_group')
  final String? bloodGroup;

  @JsonKey(name: 'email')
  @ColumnInfo(name: 'email')
  final String? email;

  @JsonKey(name: 'username')
  @ColumnInfo(name: 'username')
  final String? username;

  @JsonKey(name: 'phone')
  @ColumnInfo(name: 'phone')
  final String? phone;

  @JsonKey(name: 'height')
  @ColumnInfo(name: 'height')
  final String? height;

  @JsonKey(name: 'weight')
  @ColumnInfo(name: 'weight')
  final String? weight;

  @JsonKey(name: 'bmi')
  @ColumnInfo(name: 'bmi')
  final String? bmi;

  @JsonKey(name: 'alergies')
  @ColumnInfo(name: 'alergies')
  final String? alergies;

  @JsonKey(name: 'profile_photo')
  @ColumnInfo(name: 'profile_photo')
  final String? profilePhoto;

  @JsonKey(name: 'is_findable')
  @ColumnInfo(name: 'is_findable')
  final bool? isFindable;

  @JsonKey(name: 'created_date')
  @ColumnInfo(name: 'created_date')
  final String? createdDate;

  @JsonKey(name: 'created_uid')
  @ColumnInfo(name: 'created_uid')
  final int? createdUid;

  @JsonKey(name: 'created_by')
  final String? createdBy;

  @JsonKey(name: 'updated_by')
  final String? updatedBy;

  @JsonKey(name: 'updated_date')
  @ColumnInfo(name: 'updated_date')
  final String? updatedDate;

  @JsonKey(name: 'updated_uid')
  @ColumnInfo(name: 'updated_uid')
  final int? updatedUid;

  Contacts({
    required this.id,
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
    this.updatedUid,
    this.createdBy,
    this.updatedBy
  });

  factory Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsToJson(this);

}