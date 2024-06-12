import 'dart:convert';

import 'package:http/http.dart' as http;


class API {
  
  static const String _baseUrl = 'http://35.176.145.6:8080/api/';
  static const String _login =  'users/login';
  static const String _sendOtp =  'users/otp';
  static const String _changePassword =  'users/password-change';



  static Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl + _login),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  static Future<Map<String, dynamic>> sendOtp(String username) async{
    final response = await http.post(
      Uri.parse(_baseUrl + _sendOtp),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'username': username,
        
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to send OTP');
    }
  }

  static Future<Map<String, dynamic>> changePassword({required String otp, required String newPassword, required String userId})async {

    final response =await  http.post(
      Uri.parse(_baseUrl + _changePassword),  
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'otp': otp,
        'new_password': newPassword,
        'username': userId
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to change password');
    }
  }


  
}
