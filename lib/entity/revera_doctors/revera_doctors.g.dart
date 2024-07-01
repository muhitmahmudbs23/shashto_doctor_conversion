// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revera_doctors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReveraDoctors _$ReveraDoctorsFromJson(Map<String, dynamic> json) =>
    ReveraDoctors(
      id: (json['id'] as num).toInt(),
      digitalSignImage: json['digital_sign_image'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      institution: json['institution'] as String,
      specialization: json['specialization'] as String,
      description: json['description'] as String,
      status: json['status'] as bool,
      contactId: (json['contact_id'] as num).toInt(),
      reveraId: json['revera_id'] as String,
      profileName: json['profile_name'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ReveraDoctorsToJson(ReveraDoctors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digital_sign_image': instance.digitalSignImage,
      'name': instance.name,
      'designation': instance.designation,
      'institution': instance.institution,
      'specialization': instance.specialization,
      'description': instance.description,
      'status': instance.status,
      'contact_id': instance.contactId,
      'revera_id': instance.reveraId,
      'profile_name': instance.profileName,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
