import 'package:dartz/dartz.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
import 'package:offline_first/app/feature/login/domain/entities/submit_login_response.dart';

abstract class SubmitLoginRepository {
  Future<Either<FailureResponseModel, SubmitLoginEntity>> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  });
}
