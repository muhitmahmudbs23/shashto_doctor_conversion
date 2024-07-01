// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      success: json['success'] as bool?,
      status: (json['status'] as num).toInt(),
      contactImageCount: (json['contact_image_count'] as num).toInt(),
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String,
      users: Users.fromJson(json['users'] as Map<String, dynamic>),
      contacts: Contacts.fromJson(json['contacts'] as Map<String, dynamic>),
      contactsDevice: ContactsDevice.fromJson(
          json['contacts_device'] as Map<String, dynamic>),
      reveraDoctor:
          ReveraDoctors.fromJson(json['doctor_info'] as Map<String, dynamic>),
      emergencyContacts: (json['emergency_contacts'] as List<dynamic>)
          .map((e) => Contacts.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>)
          .map((e) => Children.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'contact_image_count': instance.contactImageCount,
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'users': instance.users.toJson(),
      'contacts': instance.contacts.toJson(),
      'contacts_device': instance.contactsDevice.toJson(),
      'doctor_info': instance.reveraDoctor.toJson(),
      'emergency_contacts':
          instance.emergencyContacts.map((e) => e.toJson()).toList(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
