// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      profileName: json['profile_name'] as String,
      contactId: (json['contact_id'] as num).toInt(),
      reveraId: json['revera_id'] as String,
      userType: json['user_type'] as String,
      securityQuestion: json['security_question'] as String,
      securityAnswer: json['security_answer'] as String,
      status: json['status'] as bool,
      termsAndConditionAccepted: json['terms_and_condition_accepted'] as bool,
      createdDate: json['created_date'] as String,
      createdUid: (json['created_uid'] as num?)?.toInt(),
      updatedDate: json['updated_date'] as String,
      updatedUid: (json['updated_uid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'profile_name': instance.profileName,
      'contact_id': instance.contactId,
      'revera_id': instance.reveraId,
      'user_type': instance.userType,
      'security_question': instance.securityQuestion,
      'security_answer': instance.securityAnswer,
      'status': instance.status,
      'terms_and_condition_accepted': instance.termsAndConditionAccepted,
      'created_date': instance.createdDate,
      'created_uid': instance.createdUid,
      'updated_date': instance.updatedDate,
      'updated_uid': instance.updatedUid,
    };
