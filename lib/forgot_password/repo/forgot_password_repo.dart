import 'package:shashto_doctor_conversion/service/api/api.dart';

class ForgotPasswordRepository {
  Future<Map<String, dynamic>> sendOtp(String userId) {
    return API.sendOtp(userId);
  }

  Future<Map<String, dynamic>> verifyOtp({
    required String otp,
    required String newPassword,
    required String username,
  }) {
    return API.verifyOtp(
        otp: otp, newPassword: newPassword, username: username);
  }
}
