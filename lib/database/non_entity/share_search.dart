class ShareSearch {
  final int? contactMedicalRecordId;
  final String? title;
  final String? subTitle;
  final String? recordDate;
  bool isSelected;

  ShareSearch({
    this.contactMedicalRecordId,
    this.title,
    this.subTitle,
    this.recordDate,
    this.isSelected = true,
  });

  @override
  int get hashCode {
    return Object.hash(contactMedicalRecordId, title, subTitle, recordDate);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ShareSearch) return false;
    return contactMedicalRecordId == other.contactMedicalRecordId &&
        title == other.title &&
        subTitle == other.subTitle &&
        recordDate == other.recordDate;
  }
}
