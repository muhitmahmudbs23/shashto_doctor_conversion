import 'package:json_annotation/json_annotation.dart';

part 'revera_doctors.g.dart';

@JsonSerializable()
class ReveraDoctors {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'digital_sign_image')
  final String digitalSignImage;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'designation')
  final String designation;

  @JsonKey(name: 'institution')
  final String institution;

  @JsonKey(name: 'specialization')
  final String specialization;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'revera_id')
  final String reveraId;

  @JsonKey(name: 'profile_name')
  final String profileName;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ReveraDoctors({
    required this.id,
    required this.digitalSignImage,
    required this.name,
    required this.designation,
    required this.institution,
    required this.specialization,
    required this.description,
    required this.status,
    required this.contactId,
    required this.reveraId,
    required this.profileName,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ReveraDoctors.fromJson(Map<String, dynamic> json) => _$ReveraDoctorsFromJson(json);

  Map<String, dynamic> toJson() => _$ReveraDoctorsToJson(this);

  @override
  String toString() {
    return 'ReveraDoctors{id: $id, digitalSignImage: $digitalSignImage, name: $name, designation: $designation, institution: $institution, specialization: $specialization, description: $description, status: $status, contactId: $contactId, reveraId: $reveraId, profileName: $profileName, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
