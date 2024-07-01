// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactAddress _$ContactAddressFromJson(Map<String, dynamic> json) =>
    ContactAddress(
      id: (json['id'] as num).toInt(),
      contactId: (json['contactId'] as num).toInt(),
      addressType: json['addressType'] as String,
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postCode: json['postCode'] as String,
      country: json['country'] as String,
      consentType: json['consentType'] as String,
      createdDate: json['createdDate'] as String,
      createdBy: json['createdBy'] as String,
      updatedDate: json['updatedDate'] as String,
      updatedBy: json['updatedBy'] as String,
    );

Map<String, dynamic> _$ContactAddressToJson(ContactAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactId': instance.contactId,
      'addressType': instance.addressType,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postCode': instance.postCode,
      'country': instance.country,
      'consentType': instance.consentType,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
    };
