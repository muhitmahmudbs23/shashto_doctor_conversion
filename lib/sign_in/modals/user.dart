class Doctor {
  Doctor({
    required this.id,
    required this.designation,
    required this.institution,
    required this.specialization,
    required this.description,
    required this.status,
    required this.reveraId,
    required this.profileName,
    required this.userId,
    required this.contactId,
    required this.name,
    required this.digitalSignImage,
  });

  int id;
  String designation;
  String institution;
  String specialization;
  String description;
  bool status;
  String reveraId;
  String profileName;
  int userId;
  int contactId;
  String name;
  String digitalSignImage;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    designation: json["designation"],
    institution: json["institution"],
    specialization: json["specialization"],
    description: json["description"],
    status: json["status"],
    reveraId: json["revera_id"],
    profileName: json["profile_name"],
    userId: json["user_id"],
    contactId: json["contact_id"],
    name: json["name"],
    digitalSignImage: json["digital_sign_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "designation": designation,
    "institution": institution,
    "specialization": specialization,
    "description": description,
    "status": status,
    "revera_id": reveraId,
    "profile_name": profileName,
    "user_id": userId,
    "contact_id": contactId,
    "name": name,
    "digital_sign_image": digitalSignImage,
  };
}