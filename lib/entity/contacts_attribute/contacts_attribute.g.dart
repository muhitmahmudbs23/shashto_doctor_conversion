// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsAttribute _$ContactsAttributeFromJson(Map<String, dynamic> json) =>
    ContactsAttribute(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      title: json['title'] as String,
      attributeKey: json['attribute_key'] as String,
      attributeValue: json['attribute_value'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
      createdDate: json['created_date'] as String,
      createdUid: (json['created_uid'] as num).toInt(),
      updatedDate: json['updated_date'] as String,
      updatedUid: (json['updated_uid'] as num).toInt(),
    );

Map<String, dynamic> _$ContactsAttributeToJson(ContactsAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'title': instance.title,
      'attribute_key': instance.attributeKey,
      'attribute_value': instance.attributeValue,
      'order_number': instance.orderNumber,
      'created_date': instance.createdDate,
      'created_uid': instance.createdUid,
      'updated_date': instance.updatedDate,
      'updated_uid': instance.updatedUid,
    };
