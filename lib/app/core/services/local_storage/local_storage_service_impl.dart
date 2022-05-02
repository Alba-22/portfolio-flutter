import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  final FlutterSecureStorage _secureStorage;

  LocalStorageServiceImpl(this._secureStorage);

  @override
  Future<void> delete(String key) => _secureStorage.delete(key: key);

  @override
  Future<String?> read(String key) => _secureStorage.read(key: key);

  @override
  Future<void> write(String key, String value) => _secureStorage.write(key: key, value: value);

  @override
  Future<void> clear() => _secureStorage.deleteAll();

  @override
  Future<bool> contains(String key) => _secureStorage.containsKey(key: key);
}
