import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../database/entity/contacts.dart';
import '../../../database/entity/revera_doctors.dart';
import '../../../database/entity/users.dart';
import '../../../database/non_entity/children.dart';
import '../../../database/non_entity/contacts_device.dart';


part 'login.g.dart';

@JsonSerializable(explicitToJson: true)
@Entity(tableName: 'login')
class Login {
  @JsonKey(name: 'success')
  final bool? success;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'contact_image_count')
  final int contactImageCount;

  @JsonKey(name: 'token')
  final String token;

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @JsonKey(name: 'users')
  final Users users;

  @JsonKey(name: 'contacts')
  final Contacts contacts;

  @JsonKey(name: 'contacts_device')
  final ContactsDevice contactsDevice;

  @JsonKey(name: 'doctor_info')
  final ReveraDoctors reveraDoctor;

  @JsonKey(name: 'emergency_contacts')
  final List<Contacts> emergencyContacts;

  @JsonKey(name: 'children')
  final List<Children> children;

  Login({
    this.success,
    required this.status,
    required this.contactImageCount,
    required this.token,
    required this.refreshToken,
    required this.users,
    required this.contacts,
    required this.contactsDevice,
    required this.reveraDoctor,
    required this.emergencyContacts,
    required this.children,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}