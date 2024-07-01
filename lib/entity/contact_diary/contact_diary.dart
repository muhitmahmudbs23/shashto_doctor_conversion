import 'package:json_annotation/json_annotation.dart';

part 'contact_diary.g.dart';

@JsonSerializable()
class ContactDiary {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'contact_id')
  final int contactId;

  @JsonKey(name: 'module_id')
  final int moduleId;

  @JsonKey(name: 'diary_datetime')
  final String diaryDatetime;

  @JsonKey(name: 'diary_notes')
  final String diaryNotes;

  @JsonKey(name: 'created_date')
  final String createdDate;

  @JsonKey(name: 'created_by')
  final String createdBy;

  @JsonKey(name: 'updated_date')
  final String updatedDate;

  @JsonKey(name: 'updated_by')
  final String updatedBy;

  ContactDiary({
    required this.id,
    required this.contactId,
    required this.moduleId,
    required this.diaryDatetime,
    required this.diaryNotes,
    required this.createdDate,
    required this.createdBy,
    required this.updatedDate,
    required this.updatedBy,
  });

  factory ContactDiary.fromJson(Map<String, dynamic> json) =>
      _$ContactDiaryFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDiaryToJson(this);

  @override
  String toString() {
    return 'ContactDiary{id: $id, contactId: $contactId, moduleId: $moduleId, diaryDatetime: $diaryDatetime, diaryNotes: $diaryNotes, createdDate: $createdDate, createdBy: $createdBy, updatedDate: $updatedDate, updatedBy: $updatedBy}';
  }
}
