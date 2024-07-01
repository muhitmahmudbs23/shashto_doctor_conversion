import 'dart:developer';

import 'package:shashto_doctor_conversion/service/api/api.dart';
import 'package:shashto_doctor_conversion/service/local_storage/cache_service.dart';

class ProfileRepository {
 


  Future<Map<String, dynamic>?> getContactInfo(int contactId) async {
    // First try to get from cache
    final cachedInfo = await CacheService.instance.getCachedPersonalInfo(contactId);
    log("cachedInfo: $cachedInfo");
    if (cachedInfo != null) {
      return cachedInfo;
    }
    
    // If not in cache, fetch from API
    final apiInfo = await API.getPersonalInfo(contactId);
    await CacheService.instance.storePersonalInfo(contactId, apiInfo);
    return apiInfo;
  }

  Future<Map<String, dynamic>?> getDoctorInfo(int contactId) async {
    // Use the appropriate method from API and cache
    final cachedDoctorInfo = await CacheService.instance.getCachedDoctorWorkInfo();
    if (cachedDoctorInfo != null) {
      return cachedDoctorInfo;
    }

    final apiDoctorInfo = await API.getDoctorWorkInfo({'contact_id': contactId});
    await CacheService.instance.storeDoctorWorkInfo(apiDoctorInfo);
    return apiDoctorInfo;
  }

  Future<Map<String, dynamic>?> getContactAddress(int contactId) async {
    // Implement similar logic if you have methods for contact address in API and storage
    // For now, let's assume it only fetches from API
    final apiAddressInfo = await API.getPersonalInfo(contactId);
    await CacheService.instance.storePersonalInfo(contactId, apiAddressInfo);
    return apiAddressInfo;
  }

  Future<void> saveData(int contactId, String imageBase64, Map<String, dynamic> profileData) async {
    if (imageBase64.isNotEmpty) {
      await uploadImage(contactId, imageBase64);
    }
    await updateData(contactId, profileData);
  }

  Future<void> uploadImage(int contactId, String imageBase64) async {
    final requestBody = getContactImageRequestBody(contactId, imageBase64);
    final response = await API.putProfileUpdate(contactId, requestBody);
    await CacheService.instance.storePersonalInfo(contactId, response);
  }

  Map<String, dynamic> getContactImageRequestBody(int contactId, String imageBase64) {
    return {
      'contact_id': contactId,
      'profile_photo': imageBase64,
    };
  }

  Future<void> updateData(int contactId, Map<String, dynamic> profileData) async {
    final requestBody = getData(contactId, profileData);
    final response = await API.putContact(contactId, requestBody);
    await CacheService.instance.storePersonalInfo(contactId, response);
  }

  Map<String, dynamic> getData(int contactId, Map<String, dynamic> profileData) {
    profileData['contact_id'] = contactId.toString();
    return profileData;
  }

  Future<Map<String, dynamic>?> getTagList() async {
    final cachedTagList = await CacheService.instance.getCachedTagList();
    if (cachedTagList != null) {
      return cachedTagList;
    }
    final apiTagList = await API.getTagList();
    await CacheService.instance.storeTagList(apiTagList);
    return apiTagList;
  }

  Future<Map<String, dynamic>?> getVitalList() async {
    final cachedVitalList = await CacheService.instance.getCachedVitalList();
    if (cachedVitalList != null) {
      return cachedVitalList;
    }
    final apiVitalList = await API.getVitalList();
    await CacheService.instance.storeVitalList(apiVitalList);
    return apiVitalList;
  }

  Future<Map<String, dynamic>?> getDoctorAppointments() async {
    final cachedAppointments = await CacheService.instance.getCachedDoctorAppointments();
    if (cachedAppointments != null) {
      return cachedAppointments;
    }
    final apiAppointments = await API.getDoctorAppointmentsObservable({});
    await CacheService.instance.storeDoctorAppointments(apiAppointments);
    return apiAppointments;
  }

  Future<Map<String, dynamic>?> getRatingTagList() async {
    final cachedRatingTagList = await CacheService.instance.getCachedRatingTagList();
    if (cachedRatingTagList != null) {
      return cachedRatingTagList;
    }
    final apiRatingTagList = await API.getRatingTagList({});
    await CacheService.instance.storeRatingTagList(apiRatingTagList);
    return apiRatingTagList;
  }
}