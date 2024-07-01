import 'package:floor/floor.dart';

@entity
class Share {
  static const int DEFAULT = 0, ACCEPTED = 1, REJECTED = -1;

  @primaryKey
  @ColumnInfo(name: 'id')
  final int? id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'receiver_revera_id')
  final String receiverReveraId;

  @ColumnInfo(name: 'sender_revera_id')
  final String senderReveraId;

  @ColumnInfo(name: 'receiver_profile_name')
  final String receiverProfileName;

  @ColumnInfo(name: 'sender_profile_name')
  final String senderProfileName;

  @ColumnInfo(name: 'sharing_file')
  final String sharingFile;

  @ColumnInfo(name: 'sharing_datetime')
  final String sharingDateTime;

  @ColumnInfo(name: 'status')
  final bool status;

  @ColumnInfo(name: 'life_style')
  final bool isLifeStyle;

  @ColumnInfo(name: 'next_of_kin')
  final bool isNextOfKin;

  @ColumnInfo(name: 'immunization_history')
  final bool isImmunizationHistory;

  @ColumnInfo(name: 'medical_conditions')
  final bool isMedicalConditions;

  @ColumnInfo(name: 'is_accepted')
  final int isAccepted;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'created_by')
  final String createdBy;

  @ColumnInfo(name: 'updated_by')
  final String updatedBy;

  Share({
    this.id,
    required this.contactId,
    required this.receiverReveraId,
    required this.senderReveraId,
    required this.receiverProfileName,
    required this.senderProfileName,
    required this.sharingFile,
    required this.sharingDateTime,
    required this.status,
    required this.isLifeStyle,
    required this.isNextOfKin,
    required this.isImmunizationHistory,
    required this.isMedicalConditions,
    required this.isAccepted,
    required this.createdDate,
    required this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
  });
}

