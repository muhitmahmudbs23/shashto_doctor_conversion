// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharing_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharingData _$SharingDataFromJson(Map<String, dynamic> json) => SharingData(
      isLifeStyle: json['life_style'] as bool,
      isNextOfKin: json['next_of_kin'] as bool,
      isImmunizationHistory: json['immunization_history'] as bool,
      isMedicalConditions: json['medical_conditions'] as bool,
    );

Map<String, dynamic> _$SharingDataToJson(SharingData instance) =>
    <String, dynamic>{
      'life_style': instance.isLifeStyle,
      'next_of_kin': instance.isNextOfKin,
      'immunization_history': instance.isImmunizationHistory,
      'medical_conditions': instance.isMedicalConditions,
    };
