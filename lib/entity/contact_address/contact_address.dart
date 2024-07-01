import 'package:json_annotation/json_annotation.dart';

part 'contact_address.g.dart';

@JsonSerializable()
class ContactAddress {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'address_type')
  final String addressType;

  @JsonKey(name: 'address1')
  final String address1;

  @JsonKey(name: 'address2')
  final String address2;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'state')
  final String state;

  @JsonKey(name: 'post_code')
  final String postCode;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'consent_type')
  final String consentType;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactAddress({
    required this.id,
    required this.contactId,
    required this.addressType,
    required this.address1,
    required this.address2,
    required this.city,
    required this.state,
    required this.postCode,
    required this.country,
    required this.consentType,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactAddress.fromJson(Map<String, dynamic> json) => _$ContactAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ContactAddressToJson(this);

  @override
  String toString() {
    return 'ContactAddress{id: $id, contactId: $contactId, addressType: $addressType, address1: $address1, address2: $address2, city: $city, state: $state, postCode: $postCode, country: $country, consentType: $consentType, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
