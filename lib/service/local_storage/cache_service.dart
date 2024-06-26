
import 'app_storage_impl.dart';
import 'app_storage_interface.dart';

class CacheService {
  CacheService._internal();

  static final AppStorage _appStorage = AppStorageImp();

  static AppStorage get instance {
    return _appStorage;
  }
}