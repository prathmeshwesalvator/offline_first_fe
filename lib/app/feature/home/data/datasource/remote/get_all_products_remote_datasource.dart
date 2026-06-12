import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:offline_first/app/feature/home/data/models/product_response.dart';
import 'package:offline_first/app/feature/home/data/service/products_service.dart';

abstract class GetAllProductsRemoteDatasource {
  Future<ProductResponse> call();
}

@LazySingleton(as: GetAllProductsRemoteDatasource)
class GetAllProductsRemoteDatasourceImpl
    implements GetAllProductsRemoteDatasource {
  GetAllProductsRemoteDatasourceImpl({required this.productsService});

  final ProductsService productsService;

  @override
  Future<ProductResponse> call() async {
    try {
      final response = await productsService.getAllProducts();

      return response;
    } catch (e) {
      log('happening error in datasource ${e.toString()}');

      throw Exception(e.toString());
    }
  }
}
