import 'package:dio/dio.dart';
import 'package:offline_first/app/core/networking/annotations/request_annotations.dart';
import 'package:offline_first/app/feature/home/data/models/product_response.dart';
import 'package:retrofit/retrofit.dart';
part 'products_service.g.dart';

@RestApi()
abstract class ProductsService {
  factory ProductsService(Dio dio) = _ProductsService;

  @GET('/products')
  @RequestAnnotations.requestTypeA
  Future<ProductResponse> getAllProducts();
}
