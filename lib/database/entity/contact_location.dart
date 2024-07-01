import 'package:floor/floor.dart';

@Entity(tableName: 'contacts_location')
class ContactLocation {
  @primaryKey
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  final double latitude;
  final double longitude;
  final String address;
  final String country;
  final String state;
  final String city;

  @ColumnInfo(name: 'post_code')
  final String postCode;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  ContactLocation({
    required this.id,
    required this.contactId,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.country,
    required this.state,
    required this.city,
    required this.postCode,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  @override
  String toString() {
    return 'ContactLocation{id: $id, contactId: $contactId, latitude: $latitude, longitude: $longitude, address: $address, country: $country, state: $state, city: $city, postCode: $postCode, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
