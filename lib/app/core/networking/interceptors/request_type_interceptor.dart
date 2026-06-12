import 'package:dio/dio.dart';
import 'package:offline_first/app/core/constants/header_constants.dart';
import 'package:offline_first/app/core/constants/secure_storage_keys.dart';
import 'package:offline_first/app/core/networking/annotations/request_annotations.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';

class RequestTypeInterceptor extends Interceptor {
  RequestTypeInterceptor({required this.sharedPreferences});
  final AppSharedPreferences sharedPreferences;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    switch (options.extra[RequestAnnotations.requestType]) {
      case RequestAnnotations.requestTypeA:
        options.headers[HeaderConstants.authorization] =
            'Bearer ${await sharedPreferences.readValue(key: SecureStorageKeys.accessToken)}';
        options.headers[HeaderConstants.contentType] =
            HeaderConstants.contentJson;

      case RequestAnnotations.requestTypeB:
        options.headers[HeaderConstants.authorization] =
            'Bearer ${await sharedPreferences.readValue(key: SecureStorageKeys.accessToken)}';
        options.headers[HeaderConstants.contentType] =
            HeaderConstants.contentMultipart;

      case RequestAnnotations.requestTypeC:
        options.headers[HeaderConstants.contentType] =
            HeaderConstants.contentJson;

      case RequestAnnotations.requestTypeD:
        options.headers[HeaderConstants.contentType] =
            HeaderConstants.contentMultipart;
    }

    handler.next(options);
  }
}
