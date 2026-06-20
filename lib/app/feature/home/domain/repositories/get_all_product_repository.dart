import 'package:dartz/dartz.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_response_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/request/product_request_entity.dart';

abstract class GetAllProductRepository {
  Future<Either<FailureResponseModel, ProductResponseEntity>> call({
    required UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel,
  });
}
