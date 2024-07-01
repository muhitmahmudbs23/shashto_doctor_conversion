// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsDevice _$ContactsDeviceFromJson(Map<String, dynamic> json) =>
    ContactsDevice(
      id: (json['id'] as num?)?.toInt(),
      deviceName: json['device_name'] as String?,
      deviceModel: json['device_model'] as String?,
      deviceMake: json['device_make'] as String?,
      deviceToken: json['device_token'] as String?,
      fcmToken: json['fcm_token'] as String?,
      status: json['status'] as bool?,
      isFingerprintEnabled: json['is_fingerprint_enabled'] as String?,
      isPasscodeEnabled: json['is_passcode_enabled'] as String?,
      createdDate: json['created_date'] as String?,
      createdUid: (json['created_uid'] as num?)?.toInt(),
      updatedDate: json['updated_date'] as String?,
      updatedUid: (json['updated_uid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContactsDeviceToJson(ContactsDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_name': instance.deviceName,
      'device_model': instance.deviceModel,
      'device_make': instance.deviceMake,
      'device_token': instance.deviceToken,
      'fcm_token': instance.fcmToken,
      'status': instance.status,
      'is_fingerprint_enabled': instance.isFingerprintEnabled,
      'is_passcode_enabled': instance.isPasscodeEnabled,
      'created_date': instance.createdDate,
      'created_uid': instance.createdUid,
      'updated_date': instance.updatedDate,
      'updated_uid': instance.updatedUid,
    };
