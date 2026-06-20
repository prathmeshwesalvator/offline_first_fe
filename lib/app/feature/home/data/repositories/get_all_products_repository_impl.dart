import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/home/data/datasource/local/get_all_products_local_datasource.dart';
import 'package:offline_first/app/feature/home/data/datasource/remote/get_all_products_remote_datasource.dart';
import 'package:offline_first/app/feature/home/domain/entities/request/product_request_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_response_entity.dart';
import 'package:offline_first/app/feature/home/domain/repositories/get_all_product_repository.dart';

@LazySingleton(as: GetAllProductRepository)
class GetAllProductsRepositoryImpl implements GetAllProductRepository {
  GetAllProductsRepositoryImpl({
    required this.getAllProductsRemoteDatasource,
    required this.getAllProductsLocalDatasource,
  });

  final GetAllProductsRemoteDatasource getAllProductsRemoteDatasource;
  final GetAllProductsLocalDatasource getAllProductsLocalDatasource;

  @override
  Future<Either<FailureResponseModel, ProductResponseEntity>> call({
    required UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel,
  }) async {
    try {
      final response = await getAllProductsRemoteDatasource.call(
        usecaseRequestModel: usecaseRequestModel,
      );

      final entity = response.toDomain();

      await getAllProductsLocalDatasource.saveProducts(
        products: entity.products,
      );

      return Right(entity);
    } catch (e) {
      log('happening error in repository ${e.toString()}');
      final cachedProducts = await getAllProductsLocalDatasource.getProducts();

      if (cachedProducts.isNotEmpty) {
        log('having data $cachedProducts');
        return Right(
          ProductResponseEntity(
            products: cachedProducts,
            total: cachedProducts.length,
            skip: 0,
            limit: cachedProducts.length,
          ),
        );
      }

      log('no data to send');
      return Left(FailureResponseModel(errorMessage: e.toString()));
    }
  }
}
