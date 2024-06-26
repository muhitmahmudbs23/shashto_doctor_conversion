import 'dart:developer';
import 'dart:typed_data';

import '../../service/api/api.dart';
import '../../service/local_storage/cache_service.dart';


class UserRepository {
  // API methods
  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await API.login(username, password);
    // Store the token in the cache
    await CacheService.instance.storeBearerToken(response['token']);
    
    // Call dependent methods upon successful login
    await _getTagList();
    log("passed _getTagList");
    await _getVitalList();
    log("passed _getVitalList");
    await _getDoctorWorkInfo(response);
    log("passed _getDoctorWorkInfo");
    await _getRatingTagList(response);
    log("passed _getRatingTagList");
    //await _updateFcmToken(response);
    //log("passed _updateFcmToken");
    await _fetchPersonalInfoAndAppointmentList(response);
    log("passed _fetchPersonalInfoAndAppointmentList");
    return response;
  }

  Future<Map<String, dynamic>> sendOtp(String username) async {
    return await API.sendOtp(username);
  }

  Future<Map<String, dynamic>> changePassword({
    required String otp,
    required String newPassword,
    required String userId,
  }) async {
    return await API.changePassword(otp: otp, newPassword: newPassword, userId: userId);
  }

  Future<Map<String, dynamic>> verifyOtp({
    required String otp,
    required String newPassword,
    required String username,
  }) async {
    return await API.verifyOtp(otp: otp, newPassword: newPassword, username: username);
  }

  Future<Map<String, dynamic>> updateDeviceToken(int contactDeviceId, Map<String, Object> data) async {
    return await API.updateDeviceToken(contactDeviceId, data);
  }

  Future<Map<String, dynamic>> getPersonalInfo(int contactId) async {
    final response = await API.getPersonalInfo(contactId);
    // Store personal info in the cache
    await CacheService.instance.storePersonalInfo(contactId, response);
    return response;
  }

  Future<Map<String, dynamic>> getTagList() async {
    final response = await API.getTagList();
    // Store tag list in the cache
    await CacheService.instance.storeTagList(response);
    return response;
  }

  Future<Map<String, dynamic>> putContact(int contactId, Map<String, dynamic> data) async {
    return await API.putContact(contactId, data);
  }

  Future<Map<String, dynamic>> getVitalList() async {
    final response = await API.getVitalList();
    // Store vital list in the cache
    await CacheService.instance.storeVitalList(response);
    return response;
  }

  Future<Map<String, dynamic>> getReveraAppointment(int contactAppointmentId, int contactId) async {
    return await API.getReveraAppointment(contactAppointmentId, contactId);
  }

  Future<Map<String, dynamic>> putReveraAppointment(int appointmentId, Map<String, dynamic> data) async {
    return await API.putReveraAppointment(appointmentId, data);
  }

  Future<Map<String, dynamic>> getDoctorAppointmentsObservable(Map<String, Object> query) async {
    final response = await API.getDoctorAppointmentsObservable(query);
    // Store doctor appointments in the cache
    await CacheService.instance.storeDoctorAppointments(response);
    return response;
  }

  Future<Map<String, dynamic>> getRatingTagList(Map<String, Object> query) async {
    final response = await API.getRatingTagList(query);
    // Store rating tag list in the cache
    await CacheService.instance.storeRatingTagList(response);
    return response;
  }

  Future<Map<String, dynamic>> ratePatient(Map<String, Object> query, Map<String, dynamic> data) async {
    return await API.ratePatient(query, data);
  }

  Future<Map<String, dynamic>> getPreviousAppointments(int doctorContactId, Map<String, Object> query) async {
    return await API.getPreviousAppointments(doctorContactId, query);
  }

  Future<Map<String, dynamic>> putProfileUpdate(int userId, Map<String, dynamic> data) async {
    return await API.putProfileUpdate(userId, data);
  }

  Future<Map<String, dynamic>> putShare(int shareId, Map<String, dynamic> data) async {
    return await API.putShare(shareId, data);
  }

  Future<Map<String, dynamic>> getDoctorWorkInfo(Map<String, Object> query) async {
    final response = await API.getDoctorWorkInfo(query);
    // Store doctor work info in the cache
    await CacheService.instance.storeDoctorWorkInfo(response);
    return response;
  }

  Future<Map<String, dynamic>> submitDoctorReport(Map<String, dynamic> data) async {
    return await API.submitDoctorReport(data);
  }

  Future<Uint8List> downloadFile(String fileUrl) async {
    return await API.downloadFile(fileUrl);
  }

  Future<Map<String, dynamic>> uploadSignedPrescription(Map<String, Object> query, Map<String, dynamic> data) async {
    return await API.uploadSignedPrescription(query, data);
  }

  Future<Map<String, dynamic>> sendMessage(Map<String, dynamic> data) async {
    return await API.sendMessage(data);
  }

  Future<Map<String, dynamic>> deleteDigitalSignature(Map<String, int> query) async {
    return await API.deleteDigitalSignature(query);
  }

  Future<Map<String, dynamic>> uploadDigitalSignature(Map<String, int> query, Map<String, dynamic> data) async {
    return await API.uploadDigitalSignature(query, data);
  }

  Future<Map<String, dynamic>> logout(Map<String, dynamic> data) async {
    return await API.logout(data);
  }

  Future<Map<String, dynamic>> requestSubmitDoc(Map<String, dynamic> data, int contactId) async {
    return await API.requestSubmitDoc(data, contactId);
  }

  // Helper methods
  Future<void> _getTagList() async {
    final response = await API.getTagList();
    await CacheService.instance.storeTagList(response);
  }

  Future<void> _getVitalList() async {
    final response = await API.getVitalList();
    await CacheService.instance.storeVitalList(response);
  }

  Future<void> _getDoctorWorkInfo(Map<String, dynamic> loginResponse) async {
    final contactId = loginResponse['contacts']['id'];
    log('Contact ID: $contactId');
    final query = <String, dynamic>{'contact_id': contactId};
    log('Query: $query');
    final response = await API.getDoctorWorkInfo(query);
    log('Response: $response');
    await CacheService.instance.storeDoctorWorkInfo(response);
  }

  Future<void> _getRatingTagList(Map<String, dynamic> loginResponse) async {
    final contactId = loginResponse['contacts']['id'];
    final query = {'contact_id': contactId};
    final response = await API.getRatingTagList(query);
    await CacheService.instance.storeRatingTagList(response);
  }

  Future<void> _updateFcmToken(Map<String, dynamic> loginResponse) async {
    final token = await CacheService.instance.retrieveBearerToken();
    final contactDeviceId = loginResponse['contactsDevice']['id'];
    const fcmToken = 'YOUR_FCM_TOKEN';  // TODO: Replace with actual FCM token retrieval using Firebase
    final data = {
      'contact_id': loginResponse['contacts']['id'],
      'fcm_token': fcmToken,
    };
    await API.updateDeviceToken(contactDeviceId, data);
  }

  Future<void> _fetchPersonalInfoAndAppointmentList(Map<String, dynamic> loginResponse) async {
    final contactId = loginResponse['contacts']['id'];
    final personalInfo = await API.getPersonalInfo(contactId);
    await CacheService.instance.storePersonalInfo(contactId, personalInfo);
    final query = {'contact_id': contactId};
    final appointments = await API.getDoctorAppointmentsObservable(query);
    await CacheService.instance.storeDoctorAppointments(appointments);
  }
}