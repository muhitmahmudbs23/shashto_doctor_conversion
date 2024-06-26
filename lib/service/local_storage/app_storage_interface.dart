abstract class AppStorage {
  Future<void> setOnBoardingStatus(String status);
  Future<String?> getBoardingStatus();

  Future<void> storeBearerToken(String token);
  Future<String?> retrieveBearerToken();
  Future<void> clearBearerToken();

  Future<void> storePersonalInfo(int contactId, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedPersonalInfo(int contactId);

  Future<void> storeTagList(Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedTagList();

  Future<void> storeVitalList(Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedVitalList();

  Future<void> storeDoctorAppointments(Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedDoctorAppointments();

  Future<void> storeRatingTagList(Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedRatingTagList();

  Future<void> storeDoctorWorkInfo(Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getCachedDoctorWorkInfo();
}