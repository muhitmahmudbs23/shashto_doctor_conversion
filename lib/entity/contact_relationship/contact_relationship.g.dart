// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactRelationship _$ContactRelationshipFromJson(Map<String, dynamic> json) =>
    ContactRelationship(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      relatedContactId: (json['related_contact_id'] as num).toInt(),
      relationshipType: json['relationship_type'] as String,
      isEmergencyContact: json['is_emergency_contact'] as bool,
      isLinkedProfile: json['is_linked_profile'] as bool,
      isChildren: json['is_children'] as bool,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactRelationshipToJson(
        ContactRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'related_contact_id': instance.relatedContactId,
      'relationship_type': instance.relationshipType,
      'is_emergency_contact': instance.isEmergencyContact,
      'is_linked_profile': instance.isLinkedProfile,
      'is_children': instance.isChildren,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
