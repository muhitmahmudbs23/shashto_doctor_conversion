import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  @JsonKey(name: 'profile_name')
  final String profileName;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'revera_id')
  final String reveraId;

  @JsonKey(name: 'user_type')
  final String userType;

  @JsonKey(name: 'security_question')
  final String securityQuestion;

  @JsonKey(name: 'security_answer')
  final String securityAnswer;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'terms_and_condition_accepted')
  final bool termsAndConditionAccepted;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_uid')
  final int createdUid;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_uid')
  final int updatedUid;

  Users({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.profileName,
    required this.contactId,
    required this.reveraId,
    required this.userType,
    required this.securityQuestion,
    required this.securityAnswer,
    required this.status,
    required this.termsAndConditionAccepted,
    required this.createdDate,
    required this.createdUid,
    required this.updatedDate,
    required this.updatedUid,
  });

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
