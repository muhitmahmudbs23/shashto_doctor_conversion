import 'dart:developer';

import 'package:shashto_doctor_conversion/api/API.dart';
import 'package:shashto_doctor_conversion/sign_in/modals/user.dart';

// class SignInRepository {
//   Future signIn(String userId, String password) async {
//     final response = await API.login(userId, password);

//     log(response.toString());
//   }

//   Future sendOtp(String userId) {
//     return Future.value(true);
//   }
// }

class AuthenticationRepository {
  // final API networkManager;
  // final SessionManager sessionManager;

  // AuthenticationRepository({required this.networkManager});

  Future<Map<String, dynamic>> signIn(String username, String password) async {
    try {
      var response = await API.login(username, password);
      return response;
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Future<bool> sendOTP(String userId) async {
  //   try {
  //     return await networkManager.sendOTP(userId);
  //   } catch (e) {
  //     print('Error sending OTP: $e');
  //     return false;
  //   }
  // }

  // Future<void> fetchData() async {
  //   try {
  //     await networkManager.fetchTags();
  //     await networkManager.fetchVitals();
  //     // Additional data fetching as necessary
  //   } catch (e) {
  //     print('Error fetching data: $e');
  //   }
  // }

  // Future<void> updateFcmToken(String token) async {
  //   try {
  //     await networkManager.updateFcmToken(token);
  //   } catch (e) {
  //     print('Error updating FCM token: $e');
  //   }
  // }
}
