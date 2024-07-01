import 'dart:collection';
import 'dart:developer';
import 'dart:typed_data';

import 'package:shashto_doctor_conversion/database/dao/tags.dart';

import '../../service/api/api.dart';
import '../../service/api/responses/login.dart';
import '../../service/api/responses/tag_list.dart';
import '../../service/local_storage/cache_service.dart';


class UserRepository {
  final TagsDao tagsDao;

  UserRepository({required this.tagsDao});
  // API methods
  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await API.login(username, password);
    log("passed _login");
    log(response.toString());

    final login = Login.fromJson(response);
    // Store the token in the cache
    log("Passed parsing");

    await CacheService.instance.storeBearerToken(response['token']);
    
    // Call dependent methods upon successful login
    await getTagList();
    log("passed _getTagList");
    await getVitalList();
    log("passed _getVitalList");
    await getDoctorWorkInfo(login);
    log("passed _getDoctorWorkInfo");
    await getRatingTagList(login);
    log("passed _getRatingTagList");
    //await _updateFcmToken(response);
    //log("passed _updateFcmToken");
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

  Future<void> getTagList() async {
    try {
      final response = await API.getTagList();
      final tagListResponse = TagList.fromJson(response);
      await tagsDao.insertOrUpdateList(tagListResponse.tagsList);
    } catch (error) {
      log("getTagList Error: ${error.toString()}");
    }
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

  Future<Map<String, dynamic>> getRatingTagList(Login login) async {

    final query = {
      "contact_id": login.contacts.id,
    };
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

  Future<Map<String, dynamic>> getDoctorWorkInfo(Login login) async {
    final query = {
      "contact_id": login.contacts.id,
    };
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

  Future<void> _fetchPersonalInfoAndAppointmentList(Map<String, dynamic> loginResponse) async {
    final contactId = loginResponse['contacts']['id'];
    final personalInfo = await API.getPersonalInfo(contactId);
    await CacheService.instance.storePersonalInfo(contactId, personalInfo);
    final query = {'contact_id': contactId};
    final appointments = await API.getDoctorAppointmentsObservable(query);
    await CacheService.instance.storeDoctorAppointments(appointments);
  }
}
