import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';

class ProductResponseEntity {
  ProductResponseEntity({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });
  final List<ProductEntity> products;
  final int total;
  final int skip;
  final int limit;
}
