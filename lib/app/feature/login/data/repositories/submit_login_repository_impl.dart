import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/constants/secure_storage_keys.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/core/sharedPreferences/app_shared_preferences.dart';
import 'package:offline_first/app/feature/login/data/datasource/submit_login_datasource.dart';
import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
import 'package:offline_first/app/feature/login/domain/entities/submit_login_response.dart';
import 'package:offline_first/app/feature/login/domain/repositories/submit_login_repository.dart';

@LazySingleton(as: SubmitLoginRepository)
class SubmitLoginRepositoryImpl implements SubmitLoginRepository {
  SubmitLoginRepositoryImpl({
    required this.submitLoginDatasource,
    required this.appSharedPreferences,
  });

  final SubmitLoginDatasource submitLoginDatasource;
  final AppSharedPreferences appSharedPreferences;

  @override
  Future<Either<FailureResponseModel, SubmitLoginEntity>> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  }) async {
    try {
      final response = await submitLoginDatasource.call(
        usecaseRequestModel: usecaseRequestModel,
      );

      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.id,
        value: response.id,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.username,
        value: response.username,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.email,
        value: response.email,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.firstName,
        value: response.firstName,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.lastName,
        value: response.lastName,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.gender,
        value: response.gender,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.image,
        value: response.image,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.accessToken,
        value: response.accessToken,
      );
      await appSharedPreferences.writeValue(
        key: SecureStorageKeys.refreshToken,
        value: response.refreshToken,
      );

      return Right(response.toDomain());
    } catch (e) {
      return Left(FailureResponseModel(errorMessage: e.toString()));
    }
  }
}
