import 'package:dio/dio.dart';

import 'rest_client_service.dart';
import 'models/rest_client_exception.dart';
import 'models/rest_client_response.dart';

class DioRestClient implements RestClientService {
  final String _baseURL;
  late Dio _dio;
  late BaseOptions _baseOptions;

  DioRestClient(this._baseURL, this._dio) {
    _baseOptions = BaseOptions(
      baseUrl: _baseURL,
      followRedirects: false,
      receiveTimeout: 30000,
      connectTimeout: 30000,
      sendTimeout: 30000,
      validateStatus: (_) => true,
    );
    _dio.options = _baseOptions;
  }

  @override
  RestClientService auth() {
    _baseOptions.extra["has_auth"] = true;
    _baseOptions.baseUrl = _baseURL;
    return this;
  }

  @override
  RestClientService unauth() {
    _baseOptions.extra["has_auth"] = false;
    _baseOptions.baseUrl = _baseURL;
    return this;
  }

  @override
  RestClientService simple() {
    _baseOptions.extra["has_auth"] = false;
    _baseOptions.baseUrl = "";
    return this;
  }

  @override
  Future<RestClientResponse<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  @override
  Future<RestClientResponse<T>> post<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  @override
  Future<RestClientResponse<T>> put<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  @override
  Future<RestClientResponse<T>> patch<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  @override
  Future<RestClientResponse<T>> delete<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  @override
  Future<RestClientResponse<T>> request<T>(
    String url, {
    required String method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType = RestClientService.jsonContentType,
    RestClientResponseType? responseType,
  }) async {
    try {
      final ResponseType convertedResponseType = _responseTypeEnumConverter(responseType);
      final response = await _dio.request(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method,
          contentType: contentType,
          responseType: convertedResponseType,
          headers: headers,
        ),
      );
      return _dioResponseConverter(response);
    } on DioError catch (e) {
      throw _dioErrorConverter(e);
    }
  }

  ResponseType _responseTypeEnumConverter(RestClientResponseType? r) {
    if (r == null) {
      return ResponseType.json;
    }
    switch (r) {
      case RestClientResponseType.bytes:
        return ResponseType.bytes;
      case RestClientResponseType.plain:
        return ResponseType.plain;
      case RestClientResponseType.stream:
        return ResponseType.stream;
      case RestClientResponseType.json:
        return ResponseType.json;
    }
  }

  RestClientResponse<T> _dioResponseConverter<T>(Response response) {
    return RestClientResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }

  RestClientException _dioErrorConverter(DioError e) {
    return RestClientException(
      message: e.response?.statusMessage,
      statusCode: e.response?.statusCode,
      error: e.error,
      response: e.response?.data,
    );
  }

  @override
  bool checkCustomError(RestClientResponse response) {
    return response.statusCode.toString()[0] == "4" && response.data is Map<String, dynamic> && response.data.containsKey("error");
  }
}
