import 'package:json_annotation/json_annotation.dart';

part 'contacts_attribute.g.dart';

@JsonSerializable()
class ContactsAttribute {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'attribute_key')
  final String attributeKey;

  @JsonKey(name: 'attribute_value')
  final String attributeValue;

  @JsonKey(name: 'order_number')
  final int orderNumber;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_uid')
  final int createdUid;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_uid')
  final int updatedUid;

  ContactsAttribute({
    required this.id,
    required this.contactId,
    required this.title,
    required this.attributeKey,
    required this.attributeValue,
    required this.orderNumber,
    required this.createdDate,
    required this.createdUid,
    required this.updatedDate,
    required this.updatedUid,
  });

  factory ContactsAttribute.fromJson(Map<String, dynamic> json) =>
      _$ContactsAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsAttributeToJson(this);

  @override
  String toString() {
    return 'ContactsAttribute{id: $id, contactId: $contactId, title: $title, attributeKey: $attributeKey, attributeValue: $attributeValue, orderNumber: $orderNumber, createdDate: $createdDate, createdUid: $createdUid, updatedDate: $updatedDate, updatedUid: $updatedUid}';
  }
}
