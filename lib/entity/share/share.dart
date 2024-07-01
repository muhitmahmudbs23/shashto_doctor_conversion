
import 'package:json_annotation/json_annotation.dart';

part 'share.g.dart';

@JsonSerializable()
class Share {
  static const int DEFAULT = 0, ACCEPTED = 1, REJECTED = -1;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'receiver_revera_id')
  final String receiverReveraId;

  @JsonKey(name: 'sender_revera_id')
  final String senderReveraId;

  @JsonKey(name: 'receiver_profile_name')
  final String receiverProfileName;

  @JsonKey(name: 'sender_profile_name')
  final String senderProfileName;

  @JsonKey(name: 'sharing_file')
  final String sharingFile;

  @JsonKey(name: 'sharing_datetime')
  final String sharingDateTime;

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'life_style')
  final bool isLifeStyle;

  @JsonKey(name: 'next_of_kin')
  final bool isNextOfKin;

  @JsonKey(name: 'immunization_history')
  final bool isImmunizationHistory;

  @JsonKey(name: 'medical_conditions')
  final bool isMedicalConditions;

  @JsonKey(name: 'is_accepted')
  final int isAccepted;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  Share({
    required this.id,
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

  factory Share.fromJson(Map<String, dynamic> json) => _$ShareFromJson(json);

  Map<String, dynamic> toJson() => _$ShareToJson(this);
}
