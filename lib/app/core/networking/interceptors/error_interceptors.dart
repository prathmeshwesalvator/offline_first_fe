import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class ErrorInterceptors extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final String message = _mapErrorToMessage(err);

    // Optional logging
    log('STATUS CODE: ${err.response?.statusCode}');
    log('ERROR: $message');

    // Create custom exception response
    final customError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: message,
    );

    handler.reject(customError);
  }

  String _mapErrorToMessage(DioException err) {
    /// NETWORK ERRORS
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout';

      case DioExceptionType.sendTimeout:
        return 'Send timeout';

      case DioExceptionType.receiveTimeout:
        return 'Receive timeout';

      case DioExceptionType.cancel:
        return 'Request cancelled';

      case DioExceptionType.connectionError:
        return 'No internet connection';

      case DioExceptionType.badCertificate:
        return 'Bad SSL certificate';

      case DioExceptionType.unknown:
        if (err.error is SocketException) {
          return 'No internet connection';
        }
        return 'Unexpected error occurred';

      case DioExceptionType.badResponse:
        return _handleStatusCode(err.response?.statusCode, err.response?.data);
    }
  }

  String _handleStatusCode(int? statusCode, dynamic data) {
    switch (statusCode) {
      case 200:
      case 201:
        return 'Success';

      case 204:
        return 'No content found';

      case 400:
        return data?['message'] ?? 'Bad request';

      case 401:
        return 'Unauthorized access';

      case 403:
        return 'Forbidden request';

      case 404:
        return 'Resource not found';

      case 405:
        return 'Method not allowed';

      case 408:
        return 'Request timeout';

      case 409:
        return 'Conflict occurred';

      case 422:
        return data?['message'] ?? 'Validation failed';

      case 429:
        return 'Too many requests';

      case 500:
        return 'Internal server error';

      case 502:
        return 'Bad gateway';

      case 503:
        return 'Service unavailable';

      case 504:
        return 'Gateway timeout';

      default:
        return 'Something went wrong';
    }
  }
}
