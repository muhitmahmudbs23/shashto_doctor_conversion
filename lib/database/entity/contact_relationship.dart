import 'package:floor/floor.dart';

@Entity(
  tableName: 'contact_relationship',
  indices: [Index(value: ['contact_id', 'related_contact_id'])],
)
class ContactRelationship {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'related_contact_id')
  final int relatedContactId;

  @ColumnInfo(name: 'relationship_type')
  final String relationshipType;

  @ColumnInfo(name: 'is_emergency_contact')
  final bool isEmergencyContact;

  @ColumnInfo(name: 'is_linked_profile')
  final bool isLinkedProfile;

  @ColumnInfo(name: 'is_children')
  final bool isChildren;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactRelationship{id: $id, contactId: $contactId, relatedContactId: $relatedContactId, relationshipType: $relationshipType, isEmergencyContact: $isEmergencyContact, isLinkedProfile: $isLinkedProfile, isChildren: $isChildren, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
