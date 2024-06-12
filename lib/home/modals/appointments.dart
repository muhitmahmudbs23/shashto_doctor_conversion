class Appointment {
  final int id;
  final String title;
  final DateTime date;
  final String location;
  final String details;
  final String imageUrl;

  Appointment({
    required this.id,
    required this.title,
    required this.date,
    required this.location,
    required this.details,
    required this.imageUrl,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'] as int,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String,
      details: json['details'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'date': date.toIso8601String(),
      'location': location,
      'details': details,
      'imageUrl': imageUrl,
    };
  }
}