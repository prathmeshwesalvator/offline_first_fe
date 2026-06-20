import 'package:drift/drift.dart';
import 'package:offline_first/app/core/database/tables/product_images_table.dart';
import 'package:offline_first/app/core/database/tables/product_reviews_table.dart';
import 'package:offline_first/app/core/database/tables/product_tags_table.dart';
import 'package:offline_first/app/core/database/tables/products_table.dart';


part 'database.g.dart';

@DriftDatabase(tables: [Products, ProductImages, ProductTags, ProductReviews])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.executor);

  @override
  int get schemaVersion => 1;
}
