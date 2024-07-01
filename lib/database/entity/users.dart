import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
@Entity(tableName: 'users')
class Users {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'id')
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'username')
  @ColumnInfo(name: 'username')
  final String username;

  @JsonKey(name: 'email')
  @ColumnInfo(name: 'email')
  final String email;

  @JsonKey(name: 'first_name')
  @ColumnInfo(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  @ColumnInfo(name: 'last_name')
  final String lastName;

  @JsonKey(name: 'profile_name')
  @ColumnInfo(name: 'profile_name')
  final String profileName;

  @JsonKey(name: 'contact_id')
  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'revera_id')
  @ColumnInfo(name: 'revera_id')
  final String reveraId;

  @JsonKey(name: 'user_type')
  @ColumnInfo(name: 'user_type')
  final String userType;

  @JsonKey(name: 'security_question')
  @ColumnInfo(name: 'security_question')
  final String securityQuestion;

  @JsonKey(name: 'security_answer')
  @ColumnInfo(name: 'security_answer')
  final String securityAnswer;

  @JsonKey(name: 'status')
  @ColumnInfo(name: 'status')
  final bool status;

  @JsonKey(name: 'terms_and_condition_accepted')
  @ColumnInfo(name: 'terms_and_condition_accepted')
  final bool termsAndConditionAccepted;

  @JsonKey(name: 'created_date')
  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_uid')
  @ColumnInfo(name: 'created_uid')
  final int? createdUid;

  @JsonKey(name: 'updated_date')
  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_uid')
  @ColumnInfo(name: 'updated_uid')
  final int? updatedUid;

  Users({
    this.id,
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
     this.createdUid,
    required this.updatedDate,
     this.updatedUid,
  });

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
