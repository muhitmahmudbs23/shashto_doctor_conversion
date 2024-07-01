// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactLocation _$ContactLocationFromJson(Map<String, dynamic> json) =>
    ContactLocation(
      id: (json['id'] as num).toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      postCode: json['post_code'] as String,
      createdDate: json['created_date'] as String,
      createdBy: json['created_by'] as String,
      updatedDate: json['updated_date'] as String,
      updatedBy: json['updated_by'] as String,
    );

Map<String, dynamic> _$ContactLocationToJson(ContactLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'post_code': instance.postCode,
      'created_date': instance.createdDate,
      'created_by': instance.createdBy,
      'updated_date': instance.updatedDate,
      'updated_by': instance.updatedBy,
    };
