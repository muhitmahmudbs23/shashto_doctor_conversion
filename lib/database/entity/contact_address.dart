import 'package:json_annotation/json_annotation.dart';
import 'package:floor/floor.dart';

part 'contact_address.g.dart';

@Entity(tableName: 'contact_address')
@JsonSerializable()
class ContactAddress {
  @primaryKey
  @JsonKey(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  @JsonKey(name: 'contactId')
  final int contactId;

  @ColumnInfo(name: 'address_type')
  @JsonKey(name: 'addressType')
  final String addressType;

  @ColumnInfo(name: 'address1')
  @JsonKey(name: 'address1')
  final String address1;

  @ColumnInfo(name: 'address2')
  @JsonKey(name: 'address2')
  final String address2;

  @ColumnInfo(name: 'city')
  @JsonKey(name: 'city')
  final String city;

  @ColumnInfo(name: 'state')
  @JsonKey(name: 'state')
  final String state;

  @ColumnInfo(name: 'post_code')
  @JsonKey(name: 'postCode')
  final String postCode;

  @ColumnInfo(name: 'country')
  @JsonKey(name: 'country')
  final String country;

  @ColumnInfo(name: 'consent_type')
  @JsonKey(name: 'consentType')
  final String consentType;

  @ColumnInfo(name: 'created_date')
  @JsonKey(name: 'createdDate')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  @JsonKey(name: 'createdBy')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  @JsonKey(name: 'updatedDate')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  @JsonKey(name: 'updatedBy')
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

  factory ContactAddress.fromJson(Map<String, dynamic> json) =>
      _$ContactAddressFromJson(json);
  Map<String, dynamic> toJson() => _$ContactAddressToJson(this);

  @override
  String toString() {
    return 'ContactAddress{id: $id, contactId: $contactId, addressType: $addressType, address1: $address1, address2: $address2, city: $city, state: $state, postCode: $postCode, country: $country, consentType: $consentType, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}

