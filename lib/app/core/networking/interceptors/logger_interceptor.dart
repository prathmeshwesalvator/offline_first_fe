import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggerInterceptor extends Interceptor {
  // ANSI Colors
  static const yellow = '\x1B[33m';
  static const red = '\x1B[31m';
  static const green = '\x1B[32m';
  static const reset = '\x1B[0m';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint(
      '$yellow'
      '╔═══════════════════════════════════════\n'
      '║ 🟡 REQUEST\n'
      '╠═══════════════════════════════════════\n'
      '║ METHOD: ${options.method}\n'
      '║ URL: ${options.uri}\n'
      '║ HEADERS: ${options.headers}\n'
      '║ BODY: ${options.data}\n'
      '╚═══════════════════════════════════════'
      '$reset',
    );

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      '$green'
      '╔═══════════════════════════════════════\n'
      '║ 🟢 RESPONSE\n'
      '╠═══════════════════════════════════════\n'
      '║ STATUS CODE: ${response.statusCode}\n'
      '║ URL: ${response.requestOptions.uri}\n'
      '║ DATA: ${response.data}\n'
      '╚═══════════════════════════════════════'
      '$reset',
    );

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      '$red'
      '╔═══════════════════════════════════════\n'
      '║ 🔴 ERROR\n'
      '╠═══════════════════════════════════════\n'
      '║ MESSAGE: ${err.message}\n'
      '║ STATUS CODE: ${err.response?.statusCode}\n'
      '║ URL: ${err.requestOptions.uri}\n'
      '║ RESPONSE: ${err.response?.data}\n'
      '╚═══════════════════════════════════════'
      '$reset',
    );

    handler.next(err);
  }
}