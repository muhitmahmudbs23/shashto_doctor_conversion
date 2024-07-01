class ContactsDevice {
  final int? id;
  final String? deviceName;
  final String? deviceModel;
  final String? deviceMake;
  final String? deviceToken;
  final String? fcmToken;
  final bool? status;
  final String? isFingerprintEnabled;
  final String? isPasscodeEnabled;
  final String? createdDate;
  final int? createdUid;
  final String? updatedDate;
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
}
