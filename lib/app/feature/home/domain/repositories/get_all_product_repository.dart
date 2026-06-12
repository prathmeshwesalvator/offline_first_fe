import 'package:dartz/dartz.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_entity.dart';

abstract class GetAllProductRepository {
  Future<Either<FailureResponseModel, List<ProductEntity>>> call();
}
