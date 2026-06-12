import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/dio/dio_instance.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/feature/home/data/service/products_service.dart';
import 'package:offline_first/app/feature/login/data/service/submit_login_service.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @lazySingleton
  Dio dio(AppSharedPreferences sharedPreferences) =>
      DioInstance(sharedPreferences: sharedPreferences).dio;

  @lazySingleton
  SubmitLoginService submitLoginService(Dio dio) => SubmitLoginService(dio);

  @lazySingleton
  ProductsService productsService(Dio dio) => ProductsService(dio);
}
