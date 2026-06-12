import 'package:json_annotation/json_annotation.dart';
import 'package:offline_first/app/feature/home/domain/entities/dimension_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/meta_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/product_response_entity.dart';
import 'package:offline_first/app/feature/home/domain/entities/review_entity.dart';

part 'product_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductResponse {
  ProductResponse({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  final List<Product> products;
  final int total;
  final int skip;
  final int limit;

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

  ProductResponseEntity toDomain() => ProductResponseEntity(
    products: products.map((e) => e.toDomain()).toList(),
    total: total,
    skip: skip,
    limit: limit,
  );
}

@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  final int id;

  @JsonKey(defaultValue: '')
  final String title;

  @JsonKey(defaultValue: '')
  final String description;

  @JsonKey(defaultValue: '')
  final String category;

  @JsonKey(defaultValue: 0.0)
  final double price;

  @JsonKey(defaultValue: 0.0)
  final double discountPercentage;

  @JsonKey(defaultValue: 0.0)
  final double rating;

  @JsonKey(defaultValue: 0)
  final int stock;

  @JsonKey(defaultValue: <String>[])
  final List<String> tags;

  @JsonKey(defaultValue: '')
  final String brand;

  @JsonKey(defaultValue: '')
  final String sku;

  @JsonKey(defaultValue: 0)
  final int weight;

  final Dimensions dimensions;

  @JsonKey(defaultValue: '')
  final String warrantyInformation;

  @JsonKey(defaultValue: '')
  final String shippingInformation;

  @JsonKey(defaultValue: '')
  final String availabilityStatus;

  @JsonKey(defaultValue: <Review>[])
  final List<Review> reviews;

  @JsonKey(defaultValue: '')
  final String returnPolicy;

  @JsonKey(defaultValue: 0)
  final int minimumOrderQuantity;

  final Meta meta;

  @JsonKey(defaultValue: '')
  final String thumbnail;

  @JsonKey(defaultValue: <String>[])
  final List<String> images;

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  ProductEntity toDomain() {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      category: category,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      tags: tags,
      brand: brand,
      sku: sku,
      weight: weight,
      dimensions: dimensions.toDomain(),
      warrantyInformation: warrantyInformation,
      shippingInformation: shippingInformation,
      availabilityStatus: availabilityStatus,
      reviews: reviews.map((e) => e.toDomain()).toList(),
      returnPolicy: returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity,
      meta: meta.toDomain(),
      thumbnail: thumbnail,
      images: images,
    );
  }
}

@JsonSerializable()
class Dimensions {
  Dimensions({required this.width, required this.height, required this.depth});

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);

  @JsonKey(defaultValue: 0.0)
  final double width;

  @JsonKey(defaultValue: 0.0)
  final double height;

  @JsonKey(defaultValue: 0.0)
  final double depth;

  Map<String, dynamic> toJson() => _$DimensionsToJson(this);

  DimensionEntity toDomain() =>
      DimensionEntity(width: width, height: height, depth: depth);
}

@JsonSerializable()
class Review {
  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  @JsonKey(defaultValue: 0)
  final int rating;

  @JsonKey(defaultValue: '')
  final String comment;

  final DateTime date;

  @JsonKey(defaultValue: '')
  final String reviewerName;

  @JsonKey(defaultValue: '')
  final String reviewerEmail;

  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  ReviewEntity toDomain() => ReviewEntity(
    rating: rating,
    comment: comment,
    date: date,
    reviewerName: reviewerName,
    reviewerEmail: reviewerEmail,
  );
}

@JsonSerializable()
class Meta {
  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(defaultValue: '')
  final String barcode;

  @JsonKey(defaultValue: '')
  final String qrCode;

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  MetaEntity toDomain() => MetaEntity(
    createdAt: createdAt,
    updatedAt: updatedAt,
    barcode: barcode,
    qrCode: qrCode,
  );
}
