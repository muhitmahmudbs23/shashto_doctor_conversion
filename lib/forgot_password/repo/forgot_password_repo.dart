import 'package:shashto_doctor_conversion/api/API.dart';

class ForgotPasswordRepository {
  
  ForgotPasswordRepository();

  Future<Map<String, dynamic>> sendOtp(String userId) async {
    try {
      var response = await API.sendOtp(userId);
      return response;
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  Future <Map<String, dynamic>> changePassword(String newPassword, String otp, String userId) async {
    try {
      var response = await API.changePassword(otp: otp, newPassword: newPassword, userId: userId);
      return response;
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Future<String> verifyOtp(String userId, String otp, String newPassword) {
  //   // Implement API call
  // }
}