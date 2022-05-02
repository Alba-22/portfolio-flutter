class RestClientException<T> implements Exception {
  final String? message;
  final int? statusCode;
  final dynamic error;
  final T? response;

  RestClientException({
    this.message,
    this.statusCode,
    this.error,
    this.response,
  });

  @override
  String toString() {
    return 'RestClientException(message: $message, statusCode: $statusCode, error: $error, response: $response)';
  }
}
