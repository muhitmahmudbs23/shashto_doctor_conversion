
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'app_storage_interface.dart';

class AppStorageImp extends AppStorage {
  static Future<SharedPreferences> getPrefs() async {
    return SharedPreferences.getInstance();
  }

  static const String _keyOnBoardingStatus = 'on-boarding-status';
  static const String _keyBearerToken = 'bearer_token';
  static const String _keyPersonalInfo = 'personal_info_';
  static const String _keyTagList = 'tag_list';
  static const String _keyVitalList = 'vital_list';
  static const String _keyDoctorAppointments = 'doctor_appointments';
  static const String _keyRatingTagList = 'rating_tag_list';
  static const String _keyDoctorWorkInfo = 'doctor_work_info';

  @override
  Future<void> setOnBoardingStatus(String status) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyOnBoardingStatus, status);
  }

  @override
  Future<String?> getBoardingStatus() async {
    final prefs = await getPrefs();
    return prefs.getString(_keyOnBoardingStatus);
  }

  @override
  Future<void> storeBearerToken(String token) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyBearerToken, token);
  }

  @override
  Future<String?> retrieveBearerToken() async {
    final prefs = await getPrefs();
    return prefs.getString(_keyBearerToken);
  }

  @override
  Future<void> clearBearerToken() async {
    final prefs = await getPrefs();
    await prefs.remove(_keyBearerToken);
  }

  @override
  Future<void> storePersonalInfo(int contactId, Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyPersonalInfo + contactId.toString(), jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedPersonalInfo(int contactId) async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyPersonalInfo + contactId.toString());
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  @override
  Future<void> storeTagList(Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyTagList, jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedTagList() async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyTagList);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  @override
  Future<void> storeVitalList(Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyVitalList, jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedVitalList() async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyVitalList);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  @override
  Future<void> storeDoctorAppointments(Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyDoctorAppointments, jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedDoctorAppointments() async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyDoctorAppointments);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  @override
  Future<void> storeRatingTagList(Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyRatingTagList, jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedRatingTagList() async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyRatingTagList);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  @override
  Future<void> storeDoctorWorkInfo(Map<String, dynamic> data) async {
    final prefs = await getPrefs();
    await prefs.setString(_keyDoctorWorkInfo, jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> getCachedDoctorWorkInfo() async {
    final prefs = await getPrefs();
    final jsonString = prefs.getString(_keyDoctorWorkInfo);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }
}