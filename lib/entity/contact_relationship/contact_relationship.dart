import 'package:json_annotation/json_annotation.dart';

part 'contact_relationship.g.dart';

@JsonSerializable()
class ContactRelationship {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'related_contact_id')
  final int relatedContactId;

  @JsonKey(name: 'relationship_type')
  final String relationshipType;

  @JsonKey(name: 'is_emergency_contact')
  final bool isEmergencyContact;

  @JsonKey(name: 'is_linked_profile')
  final bool isLinkedProfile;

  @JsonKey(name: 'is_children')
  final bool isChildren;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactRelationship({
    required this.id,
    required this.contactId,
    required this.relatedContactId,
    required this.relationshipType,
    required this.isEmergencyContact,
    required this.isLinkedProfile,
    required this.isChildren,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactRelationship.fromJson(Map<String, dynamic> json) =>
      _$ContactRelationshipFromJson(json);

  Map<String, dynamic> toJson() => _$ContactRelationshipToJson(this);

  @override
  String toString() {
    return 'ContactRelationship{id: $id, contactId: $contactId, relatedContactId: $relatedContactId, relationshipType: $relationshipType, isEmergencyContact: $isEmergencyContact, isLinkedProfile: $isLinkedProfile, isChildren: $isChildren, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
