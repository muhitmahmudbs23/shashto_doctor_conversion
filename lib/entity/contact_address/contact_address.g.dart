// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAddress _$ContactAddressFromJson(Map<String, dynamic> json) =>
    ContactAddress(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      addressType: json['address_type'] as String,
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postCode: json['post_code'] as String,
      country: json['country'] as String,
      consentType: json['consent_type'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactAddressToJson(ContactAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'address_type': instance.addressType,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'post_code': instance.postCode,
      'country': instance.country,
      'consent_type': instance.consentType,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
