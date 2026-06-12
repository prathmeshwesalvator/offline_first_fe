import 'package:dio/dio.dart';
import 'package:offline_first/app/core/constants/api_constants.dart';
import 'package:offline_first/app/core/networking/interceptors/logger_interceptor.dart';
import 'package:offline_first/app/core/networking/interceptors/request_type_interceptor.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/global/extensions/duration_extension.dart';

class DioInstance {
  DioInstance({required this.sharedPreferences})
    : dio =
          Dio(
              BaseOptions(
                baseUrl: ApiConstants.baseUrl,
                connectTimeout: 20.seconds,
                receiveTimeout: 20.seconds,
                sendTimeout: 20.seconds,
              ),
            )
            ..interceptors.addAll([
              RequestTypeInterceptor(sharedPreferences: sharedPreferences),
              LoggerInterceptor(),
            ]);
  final Dio dio;
  final AppSharedPreferences sharedPreferences;
}
