import 'package:drift/drift.dart';
import 'package:offline_first/app/core/database/database.dart';
import 'package:offline_first/app/core/database/tables/product_images_table.dart';
import 'package:offline_first/app/core/database/tables/product_reviews_table.dart';
import 'package:offline_first/app/core/database/tables/product_tags_table.dart';
import 'package:offline_first/app/core/database/tables/products_table.dart';

part 'product_dao.g.dart';

@DriftAccessor(tables: [Products, ProductImages, ProductTags, ProductReviews])
class ProductDao extends DatabaseAccessor<AppDatabase> with _$ProductDaoMixin {
  ProductDao(super.db);

  Future<List<Product>> getProducts() => select(products).get();

  Stream<List<Product>> watchProducts() => select(products).watch();
}
