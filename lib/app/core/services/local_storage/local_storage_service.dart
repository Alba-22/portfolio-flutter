abstract class LocalStorageService {
  Future<String?> read(String key);
  Future<void> delete(String key);
  Future<void> write(String key, String value);
  Future<void> clear();
  Future<bool> contains(String key);
}
