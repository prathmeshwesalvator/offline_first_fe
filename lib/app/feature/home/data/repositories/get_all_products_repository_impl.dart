import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/failure_response_model.dart';
import 'package:offline_first/app/feature/home/data/datasource/remote/get_all_products_remote_datasource.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_entity.dart';
import 'package:offline_first/app/feature/home/domain/repositories/get_all_product_repository.dart';

@LazySingleton(as: GetAllProductRepository)
class GetAllProductsRepositoryImpl implements GetAllProductRepository {
  GetAllProductsRepositoryImpl({required this.getAllProductsRemoteDatasource});

  final GetAllProductsRemoteDatasource getAllProductsRemoteDatasource;

  @override
  Future<Either<FailureResponseModel, List<ProductEntity>>> call() async {
    try {
      final response = await getAllProductsRemoteDatasource.call();

      return Right(response.products.map((e) => e.toDomain()).toList());
    } catch (e) {
      log('happening error in repository ${e.toString()}');
      return Left(FailureResponseModel(errorMessage: e.toString()));
    }
  }
}
