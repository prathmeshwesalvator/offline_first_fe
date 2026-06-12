import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_entity.dart';
import 'package:offline_first/app/feature/home/domain/repositories/get_all_product_repository.dart';

abstract class GetAllProductsUsecase {
  Future<Either<FailureResponseModel, List<ProductEntity>>> call();
}

@LazySingleton(as : GetAllProductsUsecase)
class GetAllProductsUsecaseImpl implements GetAllProductsUsecase {
  GetAllProductsUsecaseImpl({required this.getAllProductRepository});

  final GetAllProductRepository getAllProductRepository;

  @override
  Future<Either<FailureResponseModel, List<ProductEntity>>> call() async {
    return await getAllProductRepository.call();
  }
}
