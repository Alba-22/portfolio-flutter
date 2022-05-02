import 'models/rest_client_response.dart';

enum RestClientResponseType {
  json,
  stream,
  plain,
  bytes,
}

abstract class RestClientService {
  // Content Types values
  static const jsonContentType = 'application/json; charset=utf-8';
  static const formUrlEncodedContentType = 'application/x-www-form-urlencoded';
  static const textPlainContentType = 'text/plain';

  RestClientService auth();
  RestClientService unauth();
  RestClientService simple();

  Future<RestClientResponse<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  Future<RestClientResponse<T>> post<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  Future<RestClientResponse<T>> put<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  Future<RestClientResponse<T>> patch<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  Future<RestClientResponse<T>> delete<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  Future<RestClientResponse<T>> request<T>(
    String url, {
    required String method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    RestClientResponseType? responseType,
  });

  bool checkCustomError(RestClientResponse response);
}
