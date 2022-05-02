class ResponseException<T> implements Exception {
  T? data;
  int? statusCode;

  ResponseException({
    required this.data,
    required this.statusCode,
  });

  @override
  String toString() => 'ResponseException(data: $data, statusCode: $statusCode)';

  bool checkCustomError(String value, {String key = "error"}) {
    if (data != null && data is Map<String, dynamic> && (data! as Map<String, dynamic>).containsKey(key)) {
      return (data! as Map<String, dynamic>)["error"] == value;
    }
    return false;
  }
}
