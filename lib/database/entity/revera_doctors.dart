import 'package:floor/floor.dart';

@Entity(tableName: 'revera_doctors')
class ReveraDoctors {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'digital_sign_image')
  final String digitalSignImage;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'designation')
  final String designation;

  @ColumnInfo(name: 'institution')
  final String institution;

  @ColumnInfo(name: 'specialization')
  final String specialization;

  @ColumnInfo(name: 'description')
  final String description;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'revera_id')
  final String reveraId;

  @ColumnInfo(name: 'profile_name')
  final String profileName;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ReveraDoctors({
    this.id,
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

  
  @override
  String toString() {
    return 'ReveraDoctors{id: $id, digitalSignImage: $digitalSignImage, name: $name, designation: $designation, institution: $institution, specialization: $specialization, description: $description, status: $status, contactId: $contactId, reveraId: $reveraId, profileName: $profileName, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
