// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dao.dart';

// ignore_for_file: type=lint
mixin _$ProductDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProductsTable get products => attachedDatabase.products;
  $ProductImagesTable get productImages => attachedDatabase.productImages;
  $ProductTagsTable get productTags => attachedDatabase.productTags;
  $ProductReviewsTable get productReviews => attachedDatabase.productReviews;
  ProductDaoManager get managers => ProductDaoManager(this);
}

class ProductDaoManager {
  final _$ProductDaoMixin _db;
  ProductDaoManager(this._db);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db.attachedDatabase, _db.products);
  $$ProductImagesTableTableManager get productImages =>
      $$ProductImagesTableTableManager(_db.attachedDatabase, _db.productImages);
  $$ProductTagsTableTableManager get productTags =>
      $$ProductTagsTableTableManager(_db.attachedDatabase, _db.productTags);
  $$ProductReviewsTableTableManager get productReviews =>
      $$ProductReviewsTableTableManager(
        _db.attachedDatabase,
        _db.productReviews,
      );
}
