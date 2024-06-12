class UserProfile {
  final String firstName;
  final String lastName;
  final String email;
  final String profilePhotoUrl;

  UserProfile({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePhotoUrl,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      profilePhotoUrl: json['profilePhotoUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'profilePhotoUrl': profilePhotoUrl,
    };
  }
}