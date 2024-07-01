import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'revera_doctors.g.dart';

@JsonSerializable()
@Entity(tableName: 'revera_doctors')
class ReveraDoctors {
  @primaryKey
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'digital_sign_image')
  final String? digitalSignImage;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'designation')
  final String? designation;

  @JsonKey(name: 'institution')
  final String? institution;

  @JsonKey(name: 'specialization')
  final String? specialization;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'contact_id')
  final int? contactId;

  @JsonKey(name: 'revera_id')
  final String? reveraId;

  @JsonKey(name: 'profile_name')
  final String? profileName;

  @JsonKey(name: 'created_date')
  final String? createdDate;

  @JsonKey(name: 'created_by')
  final String? createdBy;

  @JsonKey(name: 'updated_date')
  final String? updatedDate;

  @JsonKey(name: 'updated_by')
  final String? updatedBy;

  ReveraDoctors({
    this.id,
    this.digitalSignImage,
    this.name,
    this.designation,
    this.institution,
    this.specialization,
    this.description,
    this.status,
    this.contactId,
    this.reveraId,
    this.profileName,
    this.createdDate,
    this.createdBy,
    this.updatedDate,
    this.updatedBy,
  });

  factory ReveraDoctors.fromJson(Map<String, dynamic> json) => _$ReveraDoctorsFromJson(json);

  Map<String, dynamic> toJson() => _$ReveraDoctorsToJson(this);

  @override
  String toString() {
    return 'ReveraDoctors{id: $id, digitalSignImage: $digitalSignImage, name: $name, designation: $designation, institution: $institution, specialization: $specialization, description: $description, status: $status, contactId: $contactId, reveraId: $reveraId, profileName: $profileName, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }

}
