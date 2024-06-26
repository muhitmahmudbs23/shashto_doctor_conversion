import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'dart:developer';

import 'client.dart';

class API {

  

  static const String _login = 'users/login';
  static const String _sendOtp = 'users/otp';
  static const String _verifyOtp = 'users/otp-verify';
  static const String _changePassword = 'users/password-change';

  static Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await dioClient.post(
      _login,
      data: {
        'username': username,
        'password': password,
      },
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> sendOtp(String username) async {
    try {
      final response = await dioClient.post(
        _sendOtp,
        data: {
          'username': username,
        },
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to send otp: $e');
    }
  }

  static Future<Map<String, dynamic>> changePassword({required String otp, required String newPassword, required String userId}) async {
    final response = await dioClient.post(
      _changePassword,
      data: {
        'otp': otp,
        'new_password': newPassword,
        'username': userId,
      },
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> verifyOtp({required String otp, required String newPassword, required String username}) async {
    try {
      final response = await dioClient.post(
        _verifyOtp,
        data: {
          'otp': otp,
          'new_password': newPassword,
          'username': username,
        },
      );

      return _handleResponse(response);
    } catch (e) {
      throw Exception('Failed to verify otp: $e');
    }
  }

  static Future<Map<String, dynamic>> updateDeviceToken(int contactDeviceId, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "contacts/device/$contactDeviceId",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getPersonalInfo(int contactId) async {
    final response = await dioClient.get(
      "personal-info/$contactId",
      queryParameters: {'contact_id': contactId},
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getTagList() async {
    final response = await dioClient.get("tag-list");

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> putContact(int contactId, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "contacts/$contactId",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getVitalList() async {
    final response = await dioClient.get("vitals-type-list");

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getReveraAppointment(int contactAppointmentId, int contactId) async {
    final response = await dioClient.get(
      "contact-appointments/$contactAppointmentId",
      queryParameters: {'contact_id': contactId},
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> putReveraAppointment(int appointmentId, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "contact-appointments/$appointmentId",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getDoctorAppointmentsObservable(Map<String, dynamic> query) async {
    final response = await dioClient.get(
      "booked-appointments",
      queryParameters: query,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getRatingTagList(Map<String, dynamic> query) async {
    final response = await dioClient.get(
      "rating-tag-list",
      queryParameters: query,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> ratePatient(Map<String, dynamic> query, Map<String, dynamic> data) async {
    final response = await dioClient.post(
      "ratings/",
      queryParameters: query,
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getPreviousAppointments(int doctorContactId, Map<String, dynamic> query) async {
    final response = await dioClient.get(
      "contact_previous_appointment_list/$doctorContactId",
      queryParameters: query,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> putProfileUpdate(int userId, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "users/profile-update/$userId",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> putShare(int shareId, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "contact-sharing/$shareId",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> getDoctorWorkInfo(Map<String, dynamic>? query) async {
    log("here");
    log(query.toString());
    log(query.runtimeType.toString());
    log(query!["contact_id"].runtimeType.toString());
    final response = await dioClient.get(
      "shashto-doctors/get-doctor-work-info/",
      queryParameters: query,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> submitDoctorReport(Map<String, dynamic> data) async {
    final response = await dioClient.post(
      "doctor-report-submit/",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Uint8List> downloadFile(String fileUrl) async {
    final response = await dioClient.get<List<int>>(
      fileUrl,
      options: Options(responseType: ResponseType.bytes),
    );

    if (response.statusCode == 200) {
      return Uint8List.fromList(response.data!);
    } else {
      throw Exception('Failed to download file');
    }
  }

  static Future<Map<String, dynamic>> uploadSignedPrescription(Map<String, dynamic> query, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "update-signed-prescription/",
      queryParameters: query,
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> sendMessage(Map<String, dynamic> data) async {
    final response = await dioClient.post(
      "contact-appointment-message/",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> deleteDigitalSignature(Map<String, int> query) async {
    final response = await dioClient.delete(
      "shashto-doctors/digital-sign/",
      queryParameters: query,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> uploadDigitalSignature(Map<String, int> query, Map<String, dynamic> data) async {
    final response = await dioClient.put(
      "shashto-doctors/digital-sign/",
      queryParameters: query,
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> logout(Map<String, dynamic> data) async {
    final response = await dioClient.delete(
      "users/logout",
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> requestSubmitDoc(Map<String, dynamic> data, int contactId) async {
    final response = await dioClient.post(
      "request-to-update-shared-records",
      queryParameters: {'contact_id': contactId},
      data: data,
    );

    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> _handleResponse(Response response) async {
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}