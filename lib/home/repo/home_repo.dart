import 'package:shashto_doctor_conversion/service/api/api.dart';
import 'package:shashto_doctor_conversion/home/modals/appointments.dart';
import 'package:shashto_doctor_conversion/home/modals/user_profile.dart';

class HomeRepository {
  API api;
  HomeRepository(this.api);
  // Future<UserProfile> fetchUserProfile() async {
  //   // Fetch from API and parse JSON
  //   var response = await api.getUserProfile();
  //   return UserProfile.fromJson(response.data);
  // }

  // Future<int> fetchNotifications() async {
  //   // Example of fetching notification count
  //   var response = await api.getNotificationCount();
  //   return response.data['count'];
  // }

  // Future<List<Appointment>> fetchAppointments(DateTime date, bool isCurrentSlot) async {
  //   // Fetch from API and parse JSON
  //   var response = await api.getAppointmentsByDate(date);
  //   var appointments = (response.data['appointments'] as List)
  //       .map((e) => Appointment.fromJson(e))
  //       .toList();
  //   return appointments;
  // }


  // Future<void> changePassword(String newPassword, String oldPassword) async {
  //   // Implement fetching logic
  // }

  // Future<void> logout() async {
  //   // Implement fetching logic
  // }
}