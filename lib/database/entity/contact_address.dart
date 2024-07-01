import 'package:floor/floor.dart';

@Entity(tableName: 'contact_address')
class ContactAddress {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'address_type')
  final String addressType;

  @ColumnInfo(name: 'address1')
  final String address1;

  @ColumnInfo(name: 'address2')
  final String address2;

  @ColumnInfo(name: 'city')
  final String city;

  @ColumnInfo(name: 'state')
  final String state;

  @ColumnInfo(name: 'post_code')
  final String postCode;


  @ColumnInfo(name: 'country')
  final String country;

  @ColumnInfo(name: 'consent_type')
  final String consentType;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
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

  @override
  String toString() {
    return 'ContactAddress{id: $id, contactId: $contactId, addressType: $addressType, address1: $address1, address2: $address2, city: $city, state: $state, postCode: $postCode, country: $country, consentType: $consentType, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
