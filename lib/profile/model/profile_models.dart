// contact.dart
class Contact {
  final int id;
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final String phone;
  final String gender;
  final String profilePhoto;

  Contact({required this.id, required this.firstName, required this.lastName,
    required this.dateOfBirth, required this.phone, required this.gender, required this.profilePhoto});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      dateOfBirth: json['date_of_birth'],
      phone: json['phone'],
      gender: json['gender'],
      profilePhoto: json['profile_photo'],
    );
  }
}

// doctor.dart
class Doctor {
  final String designation;
  final String institution;
  final String specialization;
  final String description;

  Doctor({required this.designation, required this.institution,
    required this.specialization, required this.description});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      designation: json['designation'],
      institution: json['institution'],
      specialization: json['specialization'],
      description: json['description'],
    );
  }
}

// address.dart
class Address {
  final String city;
  final String postCode;
  final String country;

  Address({required this.city, required this.postCode, required this.country});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'],
      postCode: json['post_code'],
      country: json['country'],
    );
  }
}
