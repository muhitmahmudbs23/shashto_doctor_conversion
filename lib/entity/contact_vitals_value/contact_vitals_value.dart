import 'package:json_annotation/json_annotation.dart';

part 'contact_vitals_value.g.dart';

@JsonSerializable()
class ContactVitalsValue {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_medical_record_id')
  final int contactMedicalRecordId;

  @JsonKey(name: 'contact_vitals_id')
  final int contactVitalsId;

  @JsonKey(name: 'vitals_value')
  final String vitalsValue;

  @JsonKey(name: 'vitals_datetime')
  final String vitalsDatetime;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  ContactVitalsValue({
    required this.id,
    required this.contactMedicalRecordId,
    required this.contactVitalsId,
    required this.vitalsValue,
    required this.vitalsDatetime,
    required this.createdDate,
    required this.updatedDate,
  });

  factory ContactVitalsValue.fromJson(Map<String, dynamic> json) =>
      _$ContactVitalsValueFromJson(json);

  Map<String, dynamic> toJson() => _$ContactVitalsValueToJson(this);

  @override
  String toString() {
    return 'ContactVitalsValue{id: $id, contactMedicalRecordId: $contactMedicalRecordId, contactVitalsId: $contactVitalsId, vitalsValue: $vitalsValue, vitalsDatetime: $vitalsDatetime, createdDate: $createdDate, updatedDate: $updatedDate}';
  }
}

