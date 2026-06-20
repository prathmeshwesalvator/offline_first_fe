import 'package:offline_first/app/core/database/database.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/dimension_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/meta_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/response/product_entity.dart';

extension ProductDbMapper on Product {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      category: category,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      brand: brand,
      sku: sku,
      weight: weight,
      thumbnail: thumbnail,
      dimensions: DimensionEntity(width: width, height: height, depth: depth),
      meta: MetaEntity(
        createdAt: createdAt,
        updatedAt: updatedAt,
        barcode: barcode,
        qrCode: qrCode,
      ),
      warrantyInformation: warrantyInformation,
      shippingInformation: shippingInformation,
      availabilityStatus: availabilityStatus,
      returnPolicy: returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity,
      images: const [],
      tags: const [],
      reviews: const [],
    );
  }
}
