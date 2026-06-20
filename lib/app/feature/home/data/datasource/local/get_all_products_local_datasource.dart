import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/home/data/models/product_response.dart';
import 'package:offline_first/app/feature/home/data/service/products_service.dart';
import 'package:offline_first/app/feature/home/domain/entities/request/product_request_entity.dart';

abstract class GetAllProductsLocalDatasource {
  Future<ProductResponse> call({
    required UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel,
  });
}

@LazySingleton(as: GetAllProductsLocalDatasource)
class GetAllProductsLocalDatasourceImpl
    implements GetAllProductsLocalDatasource {
  GetAllProductsLocalDatasourceImpl();


  @override
  Future<List<Product>> call({
    required UsecaseRequestModel<ProductRequestEntity> usecaseRequestModel,
  }) async {
    try {
      final response = await 

      return response;
    } catch (e) {
      log('happening error in datasource ${e.toString()}');

      throw Exception(e.toString());
    }
  }
}
