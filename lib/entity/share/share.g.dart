// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Share _$ShareFromJson(Map<String, dynamic> json) => Share(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      receiverReveraId: json['receiver_revera_id'] as String,
      senderReveraId: json['sender_revera_id'] as String,
      receiverProfileName: json['receiver_profile_name'] as String,
      senderProfileName: json['sender_profile_name'] as String,
      sharingFile: json['sharing_file'] as String,
      sharingDateTime: json['sharing_datetime'] as String,
      status: json['status'] as bool,
      isLifeStyle: json['life_style'] as bool,
      isNextOfKin: json['next_of_kin'] as bool,
      isImmunizationHistory: json['immunization_history'] as bool,
      isMedicalConditions: json['medical_conditions'] as bool,
      isAccepted: (json['is_accepted'] as num).toInt(),
      createdDate: json['created_date'] as String,
      updatedDate: json['updated_date'] as String,
      createdBy: json['created_by'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ShareToJson(Share instance) => <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'receiver_revera_id': instance.receiverReveraId,
      'sender_revera_id': instance.senderReveraId,
      'receiver_profile_name': instance.receiverProfileName,
      'sender_profile_name': instance.senderProfileName,
      'sharing_file': instance.sharingFile,
      'sharing_datetime': instance.sharingDateTime,
      'status': instance.status,
      'life_style': instance.isLifeStyle,
      'next_of_kin': instance.isNextOfKin,
      'immunization_history': instance.isImmunizationHistory,
      'medical_conditions': instance.isMedicalConditions,
      'is_accepted': instance.isAccepted,
      'created_date': instance.createdDate,
      'updated_date': instance.updatedDate,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
