import 'package:json_annotation/json_annotation.dart';
import 'package:floor/floor.dart';

import '../entity/contacts.dart';

part 'children.g.dart';

@entity
@JsonSerializable()
class Children extends Contacts {
  @JsonKey(name: 'relationship_type')
  String? relationshipType;
  @JsonKey(name: 'is_linked_profile')
  bool? isLinkedProfile;
  @JsonKey(ignore: true)
  String? birthWeight;
  @JsonKey(ignore: true)
  String? typeOfDelivery;
  @JsonKey(ignore: true)
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

  factory Children.fromJson(Map<String, dynamic> json) =>
      _$ChildrenFromJson(json);
  Map<String, dynamic> toJson() => _$ChildrenToJson(this);
}

