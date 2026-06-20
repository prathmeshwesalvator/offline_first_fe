import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/home/data/datasource/remote/get_all_products_remote_datasource.dart';
import 'package:offline_first/app/feature/home/data/models/product_response.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_response_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/request/product_request_entity.dart';
import 'package:offline_first/app/feature/home/domain/repositories/get_all_product_repository.dart';

@LazySingleton(as: GetAllProductRepository)
class GetAllProductsRepositoryImpl implements GetAllProductRepository {
  GetAllProductsRepositoryImpl({required this.getAllProductsRemoteDatasource});

  final GetAllProductsRemoteDatasource getAllProductsRemoteDatasource;

  @override
  Future<Either<FailureResponseModel, ProductResponseEntity>> call({
    required UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel,
  }) async {
    try {
      final response = await getAllProductsRemoteDatasource.call(
        usecaseRequestModel: usecaseRequestModel,
      );

      return Right(response.toDomain());
    } catch (e) {
      log('happening error in repository ${e.toString()}');
      return Left(FailureResponseModel(errorMessage: e.toString()));
    }
  }
}
