import 'package:floor/floor.dart';

import '../entity/contacts.dart';

@entity
class Children extends Contacts {
  @ColumnInfo(name: 'relationship_type')
  String? relationshipType;
  @ColumnInfo(name: 'is_linked_profile')
  bool? isLinkedProfile;
  @ignore
  String? birthWeight;
  @ignore
  String? typeOfDelivery;
  @ignore
  bool isExpanded = false;

  Children({
    this.relationshipType,
    this.isLinkedProfile,
    this.birthWeight,
    this.typeOfDelivery,
    this.isExpanded = false,
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.dateOfBirth,
    required super.countryOfBirth,
    required super.estimatedAge,
    required super.gender,
    required super.status,
    required super.nationality,
    required super.nationalId,
    required super.nidPhotoOne,
    required super.nidPhotoTwo,
    required super.haveMedicalInsurance,
    required super.noOfChildren,
    required super.medicalInsuranceName,
    required super.medicalInsuranceId,
    required super.midPhotoOne,
    required super.midPhotoTwo,
    required super.ethnicity,
    required super.religion,
    required super.occupation,
    required super.educationLevel,
    required super.meritalStatus,
    required super.haveChildren,
    required super.bloodGroup,
    required super.email,
    required super.username,
    required super.phone,
    required super.height,
    required super.weight,
    required super.bmi,
    required super.alergies,
    required super.profilePhoto,
    required super.isFindable,
    required super.createdDate,
    required super.createdUid,
    required super.updatedDate,
    required super.updatedUid,
  });
}
