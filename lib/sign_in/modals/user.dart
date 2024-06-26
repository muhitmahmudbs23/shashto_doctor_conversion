class DoctorInfo {
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

  DoctorInfo({
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

  factory DoctorInfo.fromJson(Map<String, dynamic> json) {
    return DoctorInfo(
      id: json['id'],
      designation: json['designation'],
      institution: json['institution'],
      specialization: json['specialization'],
      description: json['description'],
      status: json['status'],
      reveraId: json['revera_id'],
      profileName: json['profile_name'],
      userId: json['user_id'],
      contactId: json['contact_id'],
      name: json['name'],
      digitalSignImage: json['digital_sign_image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'designation': designation,
      'institution': institution,
      'specialization': specialization,
      'description': description,
      'status': status,
      'revera_id': reveraId,
      'profile_name': profileName,
      'user_id': userId,
      'contact_id': contactId,
      'name': name,
      'digital_sign_image': digitalSignImage,
    };
  }
}

class Contacts {
  int id;
  String dateOfBirth;
  String? nidPhotoOne;
  String? nidPhotoTwo;
  String? midPhotoOne;
  String? midPhotoTwo;
  String profilePhoto;
  String createdDate;
  String updatedDate;
  String? createdBy;
  String? updatedBy;
  String firstName;
  String lastName;
  String? countryOfBirth;
  String? estimatedAge;
  String gender;
  bool status;
  String? nationality;
  String? nationalId;
  bool haveMedicalInsurance;
  String? medicalInsuranceName;
  String? medicalInsuranceId;
  String? ethnicity;
  String? religion;
  String? maritalStatus;
  bool haveChildren;
  String? bloodGroup;
  String email;
  String phone;
  String? height;
  String? weight;
  String? bmi;
  String? allergies;
  bool isFindable;
  String occupation;
  String educationLevel;
  int noOfChildren;

  Contacts({
    required this.id,
    required this.dateOfBirth,
     this.nidPhotoOne,
     this.nidPhotoTwo,
     this.midPhotoOne,
     this.midPhotoTwo,
    required this.profilePhoto,
    required this.createdDate,
    required this.updatedDate,
     this.createdBy,
     this.updatedBy,
    required this.firstName,
    required this.lastName,
     this.countryOfBirth,
     this.estimatedAge,
    required this.gender,
    required this.status,
     this.nationality,
     this.nationalId,
    required this.haveMedicalInsurance,
     this.medicalInsuranceName,
     this.medicalInsuranceId,
     this.ethnicity,
     this.religion,
     this.maritalStatus,
    required this.haveChildren,
     this.bloodGroup,
    required this.email,
    required this.phone,
     this.height,
     this.weight,
     this.bmi,
     this.allergies,
    required this.isFindable,
    required this.occupation,
    required this.educationLevel,
    required this.noOfChildren,
  });

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(
      id: json['id'],
      dateOfBirth: json['date_of_birth'],
      nidPhotoOne: json['nid_photo_one'],
      nidPhotoTwo: json['nid_photo_two'],
      midPhotoOne: json['mid_photo_one'],
      midPhotoTwo: json['mid_photo_two'],
      profilePhoto: json['profile_photo'],
      createdDate: json['created_date'],
      updatedDate: json['updated_date'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      countryOfBirth: json['country_of_birth'],
      estimatedAge: json['estimated_age'],
      gender: json['gender'],
      status: json['status'],
      nationality: json['nationality'],
      nationalId: json['national_id'],
      haveMedicalInsurance: json['have_medical_insurance'],
      medicalInsuranceName: json['medical_insurance_name'],
      medicalInsuranceId: json['medical_insurance_id'],
      ethnicity: json['ethnicity'],
      religion: json['religion'],
      maritalStatus: json['marital_status'],
      haveChildren: json['have_children'],
      bloodGroup: json['blood_group'],
      email: json['email'],
      phone: json['phone'],
      height: json['height'],
      weight: json['weight'],
      bmi: json['bmi'],
      allergies: json['allergies'],
      isFindable: json['is_findable'],
      occupation: json['occupation'],
      educationLevel: json['education_level'],
      noOfChildren: json['no_of_children'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date_of_birth': dateOfBirth,
      'nid_photo_one': nidPhotoOne,
      'nid_photo_two': nidPhotoTwo,
      'mid_photo_one': midPhotoOne,
      'mid_photo_two': midPhotoTwo,
      'profile_photo': profilePhoto,
      'created_date': createdDate,
      'updated_date': updatedDate,
      'created_by': createdBy,
      'updated_by': updatedBy,
      'first_name': firstName,
      'last_name': lastName,
      'country_of_birth': countryOfBirth,
      'estimated_age': estimatedAge,
      'gender': gender,
      'status': status,
      'nationality': nationality,
      'national_id': nationalId,
      'have_medical_insurance': haveMedicalInsurance,
      'medical_insurance_name': medicalInsuranceName,
      'medical_insurance_id': medicalInsuranceId,
      'ethnicity': ethnicity,
      'religion': religion,
      'marital_status': maritalStatus,
      'have_children': haveChildren,
      'blood_group': bloodGroup,
      'email': email,
      'phone': phone,
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'allergies': allergies,
      'is_findable': isFindable,
      'occupation': occupation,
      'education_level': educationLevel,
      'no_of_children': noOfChildren,
    };
  }
}

class ContactAddress {
  int id;
  String createdDate;
  String updatedDate;
  String? createdBy;
  String? updatedBy;
  String? addressType;
  String address1;
  String? address2;
  String city;
  String? state;
  String postCode;
  String country;
  String? consentType;
  double latitude;
  double longitude;
  int contactId;

  ContactAddress({
    required this.id,
    required this.createdDate,
    required this.updatedDate,
     this.createdBy,
     this.updatedBy,
     this.addressType,
    required this.address1,
     this.address2,
    required this.city,
     this.state,
    required this.postCode,
    required this.country,
    required this.consentType,
    required this.latitude,
    required this.longitude,
    required this.contactId,
  });

  factory ContactAddress.fromJson(Map<String, dynamic> json) {
    return ContactAddress(
      id: json['id'],
      createdDate: json['created_date'],
      updatedDate: json['updated_date'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      addressType: json['address_type'],
      address1: json['address1'],
      address2: json['address2'],
      city: json['city'],
      state: json['state'],
      postCode: json['post_code'],
      country: json['country'],
      consentType: json['consent_type'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      contactId: json['contact_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_date': createdDate,
      'updated_date': updatedDate,
      'created_by': createdBy,
      'updated_by': updatedBy,
      'address_type': addressType,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'post_code': postCode,
      'country': country,
      'consent_type': consentType,
      'latitude': latitude,
      'longitude': longitude,
      'contact_id': contactId,
    };
  }
}

class Users {
  int id;
  int contactId;
  String? lastLogin;
  bool isSuperuser;
  String username;
  String? firstName;
  String? lastName;
  bool isStaff;
  String dateJoined;
  String createdDate;
  String? updatedDate;
  String createdBy;
  String updatedBy;
  String email;
  String profileName;
  String? securityQuestion;
  String? securityAnswer;
  bool status;
  bool termsAndConditionAccepted;
  String reveraId;
  String userType;
  bool isActive;
  List<dynamic> groups;
  List<dynamic> userPermissions;

  Users({
    required this.id,
    required this.contactId,
    this.lastLogin,
    required this.isSuperuser,
    required this.username,
     this.firstName,
     this.lastName,
    required this.isStaff,
    required this.dateJoined,
    required this.createdDate,
     this.updatedDate,
    required this.createdBy,
    required this.updatedBy,
    required this.email,
    required this.profileName,
     this.securityQuestion,
     this.securityAnswer,
    required this.status,
    required this.termsAndConditionAccepted,
    required this.reveraId,
    required this.userType,
    required this.isActive,
    required this.groups,
    required this.userPermissions,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      contactId: json['contact_id'],
      lastLogin: json['last_login'],
      isSuperuser: json['is_superuser'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      isStaff: json['is_staff'],
      dateJoined: json['date_joined'],
      createdDate: json['created_date'],
      updatedDate: json['updated_date'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      email: json['email'],
      profileName: json['profile_name'],
      securityQuestion: json['security_question'],
      securityAnswer: json['security_answer'],
      status: json['status'],
      termsAndConditionAccepted: json['terms_and_condition_accepted'],
      reveraId: json['revera_id'],
      userType: json['user_type'],
      isActive: json['is_active'],
      groups: json['groups'],
      userPermissions: json['user_permissions'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'contact_id': contactId,
      'last_login': lastLogin,
      'is_superuser': isSuperuser,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'is_staff': isStaff,
      'date_joined': dateJoined,
      'created_date': createdDate,
      'updated_date': updatedDate,
      'created_by': createdBy,
      'updated_by': updatedBy,
      'email': email,
      'profile_name': profileName,
      'security_question': securityQuestion,
      'security_answer': securityAnswer,
      'status': status,
      'terms_and_condition_accepted': termsAndConditionAccepted,
      'revera_id': reveraId,
      'user_type': userType,
      'is_active': isActive,
      'groups': groups,
      'user_permissions': userPermissions,
    };
  }
}




class LoginResponse{
  List<dynamic>? emergencyContact;
  List<dynamic>? children;
  DoctorInfo doctorInfo;
  Contacts contacts;
  int contactImageCount;
  bool success;
  int status;
  Users users;
  Map<String,dynamic>? contactsDevice;
  String token;
  String refreshToken;



  LoginResponse({
     this.emergencyContact,
     this.children,
    required this.doctorInfo,
    required this.contacts,
    required this.contactImageCount,
    required this.success,
    required this.status,
    required this.users,
    this.contactsDevice,
    required this.token,
    required this.refreshToken
  });


  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      emergencyContact: json['emergency_contact'],
      children: json['children'],
      doctorInfo: DoctorInfo.fromJson(json['doctor_info']),
      contacts: Contacts.fromJson(json['contacts']),
      contactImageCount: json['contact_image_count'],
      success: json['success'],
      status: json['status'],
      users: Users.fromJson(json['users']),
      contactsDevice: json['contacts_device'],
      token: json['token'],
      refreshToken: json['refresh_token']
    );
  }

  

}