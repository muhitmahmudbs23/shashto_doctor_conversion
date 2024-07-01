 import 'package:json_annotation/json_annotation.dart';

part 'sharing_data.g.dart';

@JsonSerializable()
class SharingData {
  @JsonKey(name: 'life_style')
  final bool isLifeStyle;

  @JsonKey(name: 'next_of_kin')
  final bool isNextOfKin;

  @JsonKey(name: 'immunization_history')
  final bool isImmunizationHistory;

  @JsonKey(name: 'medical_conditions')
  final bool isMedicalConditions;

  SharingData({
    required this.isLifeStyle,
    required this.isNextOfKin,
    required this.isImmunizationHistory,
    required this.isMedicalConditions,
  });

  factory SharingData.fromJson(Map<String, dynamic> json) => _$SharingDataFromJson(json);

  Map<String, dynamic> toJson() => _$SharingDataToJson(this);
}
