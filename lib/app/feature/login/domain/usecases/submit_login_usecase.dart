import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
import 'package:offline_first/app/feature/login/domain/entities/submit_login_response.dart';
import 'package:offline_first/app/feature/login/domain/repositories/submit_login_repository.dart';

abstract class SubmitLoginUsecase {
  Future<Either<FailureResponseModel, SubmitLoginEntity>> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  });
}

@LazySingleton(as: SubmitLoginUsecase)
class SubmitLoginUsecaseImpl implements SubmitLoginUsecase {
  SubmitLoginUsecaseImpl({required this.submitLoginRepository});

  final SubmitLoginRepository submitLoginRepository;
  @override
  Future<Either<FailureResponseModel, SubmitLoginEntity>> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  }) async {
    return await submitLoginRepository.call(
      usecaseRequestModel: usecaseRequestModel,
    );
  }
}
