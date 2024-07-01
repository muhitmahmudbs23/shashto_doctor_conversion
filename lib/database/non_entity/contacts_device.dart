import 'package:json_annotation/json_annotation.dart';

part 'contacts_device.g.dart';

@JsonSerializable()
class ContactsDevice {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'device_name')
  final String? deviceName;

  @JsonKey(name: 'device_model')
  final String? deviceModel;

  @JsonKey(name: 'device_make')
  final String? deviceMake;

  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @JsonKey(name: 'fcm_token')
  final String? fcmToken;

  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'is_fingerprint_enabled')
  final String? isFingerprintEnabled;

  @JsonKey(name: 'is_passcode_enabled')
  final String? isPasscodeEnabled;

  @JsonKey(name: 'created_date')
  final String? createdDate;

  @JsonKey(name: 'created_uid')
  final int? createdUid;

  @JsonKey(name: 'updated_date')
  final String? updatedDate;

  @JsonKey(name: 'updated_uid')
  final int? updatedUid;

  ContactsDevice({
    this.id,
    this.deviceName,
    this.deviceModel,
    this.deviceMake,
    this.deviceToken,
    this.fcmToken,
    this.status,
    this.isFingerprintEnabled,
    this.isPasscodeEnabled,
    this.createdDate,
    this.createdUid,
    this.updatedDate,
    this.updatedUid,
  });

  factory ContactsDevice.fromJson(Map<String, dynamic> json) => _$ContactsDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsDeviceToJson(this);
}
