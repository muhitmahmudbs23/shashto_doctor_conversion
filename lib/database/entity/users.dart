import 'package:floor/floor.dart';

@Entity(tableName: 'users')
class Users {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'username')
  final String username;

  @ColumnInfo(name: 'email')
  final String email;

  @ColumnInfo(name: 'first_name')
  final String firstName;

  @ColumnInfo(name: 'last_name')
  final String lastName;

  @ColumnInfo(name: 'profile_name')
  final String profileName;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'revera_id')
  final String reveraId;

  @ColumnInfo(name: 'user_type')
  final String userType;

  @ColumnInfo(name: 'security_question')
  final String securityQuestion;

  @ColumnInfo(name: 'security_answer')
  final String securityAnswer;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'terms_and_condition_accepted')
  final bool termsAndConditionAccepted;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_uid')
  final int createdUid;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_uid')
  final int updatedUid;

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
    required this.createdUid,
    required this.updatedDate,
    required this.updatedUid,
  });
}
