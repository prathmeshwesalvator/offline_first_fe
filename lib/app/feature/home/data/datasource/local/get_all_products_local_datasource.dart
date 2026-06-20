import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/database/database.dart';
import 'package:offline_first/app/feature/home/data/mappers/product_db_mapper.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';

abstract class GetAllProductsLocalDatasource {
  Future<void> saveProducts({required List<ProductEntity> products});

  Future<List<ProductEntity>> getProducts();

  Stream<List<ProductEntity>> watchProducts();
}

@LazySingleton(as: GetAllProductsLocalDatasource)
class GetAllProductsLocalDatasourceImpl
    implements GetAllProductsLocalDatasource {
  GetAllProductsLocalDatasourceImpl(this._database);

  final AppDatabase _database;

  @override
  Future<void> saveProducts({required List<ProductEntity> products}) async {
    await _database.batch((batch) {
      batch.insertAll(
        _database.products,
        products.map(_toCompanion).toList(),
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  ProductsCompanion _toCompanion(ProductEntity product) {
    return ProductsCompanion(
      id: Value(product.id),
      title: Value(product.title),
      description: Value(product.description),
      category: Value(product.category),
      price: Value(product.price),
      discountPercentage: Value(product.discountPercentage),
      rating: Value(product.rating),
      stock: Value(product.stock),
      brand: Value(product.brand),
      sku: Value(product.sku),
      weight: Value(product.weight),
      width: Value(product.dimensions.width),
      height: Value(product.dimensions.height),
      depth: Value(product.dimensions.depth),
      warrantyInformation: Value(product.warrantyInformation),
      shippingInformation: Value(product.shippingInformation),
      availabilityStatus: Value(product.availabilityStatus),
      returnPolicy: Value(product.returnPolicy),
      minimumOrderQuantity: Value(product.minimumOrderQuantity),
      createdAt: Value(product.meta.createdAt),
      updatedAt: Value(product.meta.updatedAt),
      barcode: Value(product.meta.barcode),
      qrCode: Value(product.meta.qrCode),
      thumbnail: Value(product.thumbnail),
    );
  }

  @override
  @override
  Future<List<ProductEntity>> getProducts() async {
    final products = await _database.select(_database.products).get();

    return products.map<ProductEntity>((e) => e.toEntity()).toList();
  }

  @override
  Stream<List<ProductEntity>> watchProducts() {
    throw UnimplementedError();
  }
}
