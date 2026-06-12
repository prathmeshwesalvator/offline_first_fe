// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:offline_first/app/core/di/register_module.dart' as _i1007;
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart'
    as _i549;
import 'package:offline_first/app/feature/home/data/datasource/remote/get_all_products_remote_datasource.dart'
    as _i158;
import 'package:offline_first/app/feature/home/data/repositories/get_all_products_repository_impl.dart'
    as _i919;
import 'package:offline_first/app/feature/home/data/service/products_service.dart'
    as _i142;
import 'package:offline_first/app/feature/home/domain/repositories/get_all_product_repository.dart'
    as _i216;
import 'package:offline_first/app/feature/home/domain/usecases/get_all_products_usecase.dart'
    as _i37;
import 'package:offline_first/app/feature/login/data/datasource/submit_login_datasource.dart'
    as _i312;
import 'package:offline_first/app/feature/login/data/repositories/submit_login_repository_impl.dart'
    as _i1028;
import 'package:offline_first/app/feature/login/data/service/submit_login_service.dart'
    as _i505;
import 'package:offline_first/app/feature/login/domain/repositories/submit_login_repository.dart'
    as _i757;
import 'package:offline_first/app/feature/login/domain/usecases/submit_login_usecase.dart'
    as _i929;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage,
    );
    gh.lazySingleton<_i549.AppSharedPreferences>(
      () => _i549.AppSharedPreferences(
        secureStorage: gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dio(gh<_i549.AppSharedPreferences>()),
    );
    gh.lazySingleton<_i505.SubmitLoginService>(
      () => registerModule.submitLoginService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i142.ProductsService>(
      () => registerModule.productsService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i158.GetAllProductsRemoteDatasource>(
      () => _i158.GetAllProductsRemoteDatasourceImpl(
        productsService: gh<_i142.ProductsService>(),
      ),
    );
    gh.lazySingleton<_i216.GetAllProductRepository>(
      () => _i919.GetAllProductsRepositoryImpl(
        getAllProductsRemoteDatasource:
            gh<_i158.GetAllProductsRemoteDatasource>(),
      ),
    );
    gh.lazySingleton<_i312.SubmitLoginDatasource>(
      () => _i312.SubmitLoginDatasourceImpl(
        submitLoginService: gh<_i505.SubmitLoginService>(),
      ),
    );
    gh.lazySingleton<_i37.GetAllProductsUsecase>(
      () => _i37.GetAllProductsUsecaseImpl(
        getAllProductRepository: gh<_i216.GetAllProductRepository>(),
      ),
    );
    gh.lazySingleton<_i757.SubmitLoginRepository>(
      () => _i1028.SubmitLoginRepositoryImpl(
        submitLoginDatasource: gh<_i312.SubmitLoginDatasource>(),
        appSharedPreferences: gh<_i549.AppSharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i929.SubmitLoginUsecase>(
      () => _i929.SubmitLoginUsecaseImpl(
        submitLoginRepository: gh<_i757.SubmitLoginRepository>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i1007.RegisterModule {}
