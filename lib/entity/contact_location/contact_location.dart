import 'package:json_annotation/json_annotation.dart';

part 'contact_location.g.dart';

@JsonSerializable()
class ContactLocation {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'latitude')
  final double latitude;

  @JsonKey(name: 'longitude')
  final double longitude;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'state')
  final String state;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'post_code')
  final String postCode;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
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

  factory ContactLocation.fromJson(Map<String, dynamic> json) =>
      _$ContactLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ContactLocationToJson(this);

  @override
  String toString() {
    return 'ContactLocation{id: $id, contactId: $contactId, latitude: $latitude, longitude: $longitude, address: $address, country: $country, state: $state, city: $city, postCode: $postCode, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
