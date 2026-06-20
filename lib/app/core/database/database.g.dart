// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>(
        'discount_percentage',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
    'rating',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<int> stock = GeneratedColumn<int>(
    'stock',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
    'sku',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
    'width',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
    'height',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _depthMeta = const VerificationMeta('depth');
  @override
  late final GeneratedColumn<double> depth = GeneratedColumn<double>(
    'depth',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _warrantyInformationMeta =
      const VerificationMeta('warrantyInformation');
  @override
  late final GeneratedColumn<String> warrantyInformation =
      GeneratedColumn<String>(
        'warranty_information',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _shippingInformationMeta =
      const VerificationMeta('shippingInformation');
  @override
  late final GeneratedColumn<String> shippingInformation =
      GeneratedColumn<String>(
        'shipping_information',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _availabilityStatusMeta =
      const VerificationMeta('availabilityStatus');
  @override
  late final GeneratedColumn<String> availabilityStatus =
      GeneratedColumn<String>(
        'availability_status',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _returnPolicyMeta = const VerificationMeta(
    'returnPolicy',
  );
  @override
  late final GeneratedColumn<String> returnPolicy = GeneratedColumn<String>(
    'return_policy',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minimumOrderQuantityMeta =
      const VerificationMeta('minimumOrderQuantity');
  @override
  late final GeneratedColumn<int> minimumOrderQuantity = GeneratedColumn<int>(
    'minimum_order_quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _barcodeMeta = const VerificationMeta(
    'barcode',
  );
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
    'barcode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
    'qr_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _thumbnailMeta = const VerificationMeta(
    'thumbnail',
  );
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
    'thumbnail',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    category,
    price,
    discountPercentage,
    rating,
    stock,
    brand,
    sku,
    weight,
    width,
    height,
    depth,
    warrantyInformation,
    shippingInformation,
    availabilityStatus,
    returnPolicy,
    minimumOrderQuantity,
    createdAt,
    updatedAt,
    barcode,
    qrCode,
    thumbnail,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
        _discountPercentageMeta,
        discountPercentage.isAcceptableOrUnknown(
          data['discount_percentage']!,
          _discountPercentageMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_discountPercentageMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('stock')) {
      context.handle(
        _stockMeta,
        stock.isAcceptableOrUnknown(data['stock']!, _stockMeta),
      );
    } else if (isInserting) {
      context.missing(_stockMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('sku')) {
      context.handle(
        _skuMeta,
        sku.isAcceptableOrUnknown(data['sku']!, _skuMeta),
      );
    } else if (isInserting) {
      context.missing(_skuMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
        _widthMeta,
        width.isAcceptableOrUnknown(data['width']!, _widthMeta),
      );
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('depth')) {
      context.handle(
        _depthMeta,
        depth.isAcceptableOrUnknown(data['depth']!, _depthMeta),
      );
    } else if (isInserting) {
      context.missing(_depthMeta);
    }
    if (data.containsKey('warranty_information')) {
      context.handle(
        _warrantyInformationMeta,
        warrantyInformation.isAcceptableOrUnknown(
          data['warranty_information']!,
          _warrantyInformationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_warrantyInformationMeta);
    }
    if (data.containsKey('shipping_information')) {
      context.handle(
        _shippingInformationMeta,
        shippingInformation.isAcceptableOrUnknown(
          data['shipping_information']!,
          _shippingInformationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_shippingInformationMeta);
    }
    if (data.containsKey('availability_status')) {
      context.handle(
        _availabilityStatusMeta,
        availabilityStatus.isAcceptableOrUnknown(
          data['availability_status']!,
          _availabilityStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_availabilityStatusMeta);
    }
    if (data.containsKey('return_policy')) {
      context.handle(
        _returnPolicyMeta,
        returnPolicy.isAcceptableOrUnknown(
          data['return_policy']!,
          _returnPolicyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_returnPolicyMeta);
    }
    if (data.containsKey('minimum_order_quantity')) {
      context.handle(
        _minimumOrderQuantityMeta,
        minimumOrderQuantity.isAcceptableOrUnknown(
          data['minimum_order_quantity']!,
          _minimumOrderQuantityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minimumOrderQuantityMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('barcode')) {
      context.handle(
        _barcodeMeta,
        barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta),
      );
    } else if (isInserting) {
      context.missing(_barcodeMeta);
    }
    if (data.containsKey('qr_code')) {
      context.handle(
        _qrCodeMeta,
        qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_qrCodeMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(
        _thumbnailMeta,
        thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta),
      );
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      discountPercentage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}discount_percentage'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rating'],
      )!,
      stock: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      sku: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sku'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight'],
      )!,
      width: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}width'],
      )!,
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height'],
      )!,
      depth: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}depth'],
      )!,
      warrantyInformation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}warranty_information'],
      )!,
      shippingInformation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shipping_information'],
      )!,
      availabilityStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}availability_status'],
      )!,
      returnPolicy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}return_policy'],
      )!,
      minimumOrderQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minimum_order_quantity'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      barcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barcode'],
      )!,
      qrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code'],
      )!,
      thumbnail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail'],
      )!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String sku;
  final int weight;
  final double width;
  final double height;
  final double depth;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String barcode;
  final String qrCode;
  final String thumbnail;
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.width,
    required this.height,
    required this.depth,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
    required this.thumbnail,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    map['price'] = Variable<double>(price);
    map['discount_percentage'] = Variable<double>(discountPercentage);
    map['rating'] = Variable<double>(rating);
    map['stock'] = Variable<int>(stock);
    map['brand'] = Variable<String>(brand);
    map['sku'] = Variable<String>(sku);
    map['weight'] = Variable<int>(weight);
    map['width'] = Variable<double>(width);
    map['height'] = Variable<double>(height);
    map['depth'] = Variable<double>(depth);
    map['warranty_information'] = Variable<String>(warrantyInformation);
    map['shipping_information'] = Variable<String>(shippingInformation);
    map['availability_status'] = Variable<String>(availabilityStatus);
    map['return_policy'] = Variable<String>(returnPolicy);
    map['minimum_order_quantity'] = Variable<int>(minimumOrderQuantity);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['barcode'] = Variable<String>(barcode);
    map['qr_code'] = Variable<String>(qrCode);
    map['thumbnail'] = Variable<String>(thumbnail);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      category: Value(category),
      price: Value(price),
      discountPercentage: Value(discountPercentage),
      rating: Value(rating),
      stock: Value(stock),
      brand: Value(brand),
      sku: Value(sku),
      weight: Value(weight),
      width: Value(width),
      height: Value(height),
      depth: Value(depth),
      warrantyInformation: Value(warrantyInformation),
      shippingInformation: Value(shippingInformation),
      availabilityStatus: Value(availabilityStatus),
      returnPolicy: Value(returnPolicy),
      minimumOrderQuantity: Value(minimumOrderQuantity),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      barcode: Value(barcode),
      qrCode: Value(qrCode),
      thumbnail: Value(thumbnail),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      price: serializer.fromJson<double>(json['price']),
      discountPercentage: serializer.fromJson<double>(
        json['discountPercentage'],
      ),
      rating: serializer.fromJson<double>(json['rating']),
      stock: serializer.fromJson<int>(json['stock']),
      brand: serializer.fromJson<String>(json['brand']),
      sku: serializer.fromJson<String>(json['sku']),
      weight: serializer.fromJson<int>(json['weight']),
      width: serializer.fromJson<double>(json['width']),
      height: serializer.fromJson<double>(json['height']),
      depth: serializer.fromJson<double>(json['depth']),
      warrantyInformation: serializer.fromJson<String>(
        json['warrantyInformation'],
      ),
      shippingInformation: serializer.fromJson<String>(
        json['shippingInformation'],
      ),
      availabilityStatus: serializer.fromJson<String>(
        json['availabilityStatus'],
      ),
      returnPolicy: serializer.fromJson<String>(json['returnPolicy']),
      minimumOrderQuantity: serializer.fromJson<int>(
        json['minimumOrderQuantity'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      barcode: serializer.fromJson<String>(json['barcode']),
      qrCode: serializer.fromJson<String>(json['qrCode']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
      'price': serializer.toJson<double>(price),
      'discountPercentage': serializer.toJson<double>(discountPercentage),
      'rating': serializer.toJson<double>(rating),
      'stock': serializer.toJson<int>(stock),
      'brand': serializer.toJson<String>(brand),
      'sku': serializer.toJson<String>(sku),
      'weight': serializer.toJson<int>(weight),
      'width': serializer.toJson<double>(width),
      'height': serializer.toJson<double>(height),
      'depth': serializer.toJson<double>(depth),
      'warrantyInformation': serializer.toJson<String>(warrantyInformation),
      'shippingInformation': serializer.toJson<String>(shippingInformation),
      'availabilityStatus': serializer.toJson<String>(availabilityStatus),
      'returnPolicy': serializer.toJson<String>(returnPolicy),
      'minimumOrderQuantity': serializer.toJson<int>(minimumOrderQuantity),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'barcode': serializer.toJson<String>(barcode),
      'qrCode': serializer.toJson<String>(qrCode),
      'thumbnail': serializer.toJson<String>(thumbnail),
    };
  }

  Product copyWith({
    int? id,
    String? title,
    String? description,
    String? category,
    double? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? sku,
    int? weight,
    double? width,
    double? height,
    double? depth,
    String? warrantyInformation,
    String? shippingInformation,
    String? availabilityStatus,
    String? returnPolicy,
    int? minimumOrderQuantity,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? barcode,
    String? qrCode,
    String? thumbnail,
  }) => Product(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    category: category ?? this.category,
    price: price ?? this.price,
    discountPercentage: discountPercentage ?? this.discountPercentage,
    rating: rating ?? this.rating,
    stock: stock ?? this.stock,
    brand: brand ?? this.brand,
    sku: sku ?? this.sku,
    weight: weight ?? this.weight,
    width: width ?? this.width,
    height: height ?? this.height,
    depth: depth ?? this.depth,
    warrantyInformation: warrantyInformation ?? this.warrantyInformation,
    shippingInformation: shippingInformation ?? this.shippingInformation,
    availabilityStatus: availabilityStatus ?? this.availabilityStatus,
    returnPolicy: returnPolicy ?? this.returnPolicy,
    minimumOrderQuantity: minimumOrderQuantity ?? this.minimumOrderQuantity,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    barcode: barcode ?? this.barcode,
    qrCode: qrCode ?? this.qrCode,
    thumbnail: thumbnail ?? this.thumbnail,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      category: data.category.present ? data.category.value : this.category,
      price: data.price.present ? data.price.value : this.price,
      discountPercentage: data.discountPercentage.present
          ? data.discountPercentage.value
          : this.discountPercentage,
      rating: data.rating.present ? data.rating.value : this.rating,
      stock: data.stock.present ? data.stock.value : this.stock,
      brand: data.brand.present ? data.brand.value : this.brand,
      sku: data.sku.present ? data.sku.value : this.sku,
      weight: data.weight.present ? data.weight.value : this.weight,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      depth: data.depth.present ? data.depth.value : this.depth,
      warrantyInformation: data.warrantyInformation.present
          ? data.warrantyInformation.value
          : this.warrantyInformation,
      shippingInformation: data.shippingInformation.present
          ? data.shippingInformation.value
          : this.shippingInformation,
      availabilityStatus: data.availabilityStatus.present
          ? data.availabilityStatus.value
          : this.availabilityStatus,
      returnPolicy: data.returnPolicy.present
          ? data.returnPolicy.value
          : this.returnPolicy,
      minimumOrderQuantity: data.minimumOrderQuantity.present
          ? data.minimumOrderQuantity.value
          : this.minimumOrderQuantity,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('price: $price, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('rating: $rating, ')
          ..write('stock: $stock, ')
          ..write('brand: $brand, ')
          ..write('sku: $sku, ')
          ..write('weight: $weight, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('depth: $depth, ')
          ..write('warrantyInformation: $warrantyInformation, ')
          ..write('shippingInformation: $shippingInformation, ')
          ..write('availabilityStatus: $availabilityStatus, ')
          ..write('returnPolicy: $returnPolicy, ')
          ..write('minimumOrderQuantity: $minimumOrderQuantity, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('barcode: $barcode, ')
          ..write('qrCode: $qrCode, ')
          ..write('thumbnail: $thumbnail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    description,
    category,
    price,
    discountPercentage,
    rating,
    stock,
    brand,
    sku,
    weight,
    width,
    height,
    depth,
    warrantyInformation,
    shippingInformation,
    availabilityStatus,
    returnPolicy,
    minimumOrderQuantity,
    createdAt,
    updatedAt,
    barcode,
    qrCode,
    thumbnail,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.category == this.category &&
          other.price == this.price &&
          other.discountPercentage == this.discountPercentage &&
          other.rating == this.rating &&
          other.stock == this.stock &&
          other.brand == this.brand &&
          other.sku == this.sku &&
          other.weight == this.weight &&
          other.width == this.width &&
          other.height == this.height &&
          other.depth == this.depth &&
          other.warrantyInformation == this.warrantyInformation &&
          other.shippingInformation == this.shippingInformation &&
          other.availabilityStatus == this.availabilityStatus &&
          other.returnPolicy == this.returnPolicy &&
          other.minimumOrderQuantity == this.minimumOrderQuantity &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.barcode == this.barcode &&
          other.qrCode == this.qrCode &&
          other.thumbnail == this.thumbnail);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> category;
  final Value<double> price;
  final Value<double> discountPercentage;
  final Value<double> rating;
  final Value<int> stock;
  final Value<String> brand;
  final Value<String> sku;
  final Value<int> weight;
  final Value<double> width;
  final Value<double> height;
  final Value<double> depth;
  final Value<String> warrantyInformation;
  final Value<String> shippingInformation;
  final Value<String> availabilityStatus;
  final Value<String> returnPolicy;
  final Value<int> minimumOrderQuantity;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> barcode;
  final Value<String> qrCode;
  final Value<String> thumbnail;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.price = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.rating = const Value.absent(),
    this.stock = const Value.absent(),
    this.brand = const Value.absent(),
    this.sku = const Value.absent(),
    this.weight = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.depth = const Value.absent(),
    this.warrantyInformation = const Value.absent(),
    this.shippingInformation = const Value.absent(),
    this.availabilityStatus = const Value.absent(),
    this.returnPolicy = const Value.absent(),
    this.minimumOrderQuantity = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.barcode = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.thumbnail = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    required String sku,
    required int weight,
    required double width,
    required double height,
    required double depth,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
    required String thumbnail,
  }) : title = Value(title),
       description = Value(description),
       category = Value(category),
       price = Value(price),
       discountPercentage = Value(discountPercentage),
       rating = Value(rating),
       stock = Value(stock),
       brand = Value(brand),
       sku = Value(sku),
       weight = Value(weight),
       width = Value(width),
       height = Value(height),
       depth = Value(depth),
       warrantyInformation = Value(warrantyInformation),
       shippingInformation = Value(shippingInformation),
       availabilityStatus = Value(availabilityStatus),
       returnPolicy = Value(returnPolicy),
       minimumOrderQuantity = Value(minimumOrderQuantity),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       barcode = Value(barcode),
       qrCode = Value(qrCode),
       thumbnail = Value(thumbnail);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? category,
    Expression<double>? price,
    Expression<double>? discountPercentage,
    Expression<double>? rating,
    Expression<int>? stock,
    Expression<String>? brand,
    Expression<String>? sku,
    Expression<int>? weight,
    Expression<double>? width,
    Expression<double>? height,
    Expression<double>? depth,
    Expression<String>? warrantyInformation,
    Expression<String>? shippingInformation,
    Expression<String>? availabilityStatus,
    Expression<String>? returnPolicy,
    Expression<int>? minimumOrderQuantity,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? barcode,
    Expression<String>? qrCode,
    Expression<String>? thumbnail,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (price != null) 'price': price,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (rating != null) 'rating': rating,
      if (stock != null) 'stock': stock,
      if (brand != null) 'brand': brand,
      if (sku != null) 'sku': sku,
      if (weight != null) 'weight': weight,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (depth != null) 'depth': depth,
      if (warrantyInformation != null)
        'warranty_information': warrantyInformation,
      if (shippingInformation != null)
        'shipping_information': shippingInformation,
      if (availabilityStatus != null) 'availability_status': availabilityStatus,
      if (returnPolicy != null) 'return_policy': returnPolicy,
      if (minimumOrderQuantity != null)
        'minimum_order_quantity': minimumOrderQuantity,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (barcode != null) 'barcode': barcode,
      if (qrCode != null) 'qr_code': qrCode,
      if (thumbnail != null) 'thumbnail': thumbnail,
    });
  }

  ProductsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String>? category,
    Value<double>? price,
    Value<double>? discountPercentage,
    Value<double>? rating,
    Value<int>? stock,
    Value<String>? brand,
    Value<String>? sku,
    Value<int>? weight,
    Value<double>? width,
    Value<double>? height,
    Value<double>? depth,
    Value<String>? warrantyInformation,
    Value<String>? shippingInformation,
    Value<String>? availabilityStatus,
    Value<String>? returnPolicy,
    Value<int>? minimumOrderQuantity,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String>? barcode,
    Value<String>? qrCode,
    Value<String>? thumbnail,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rating: rating ?? this.rating,
      stock: stock ?? this.stock,
      brand: brand ?? this.brand,
      sku: sku ?? this.sku,
      weight: weight ?? this.weight,
      width: width ?? this.width,
      height: height ?? this.height,
      depth: depth ?? this.depth,
      warrantyInformation: warrantyInformation ?? this.warrantyInformation,
      shippingInformation: shippingInformation ?? this.shippingInformation,
      availabilityStatus: availabilityStatus ?? this.availabilityStatus,
      returnPolicy: returnPolicy ?? this.returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity ?? this.minimumOrderQuantity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      barcode: barcode ?? this.barcode,
      qrCode: qrCode ?? this.qrCode,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (stock.present) {
      map['stock'] = Variable<int>(stock.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (depth.present) {
      map['depth'] = Variable<double>(depth.value);
    }
    if (warrantyInformation.present) {
      map['warranty_information'] = Variable<String>(warrantyInformation.value);
    }
    if (shippingInformation.present) {
      map['shipping_information'] = Variable<String>(shippingInformation.value);
    }
    if (availabilityStatus.present) {
      map['availability_status'] = Variable<String>(availabilityStatus.value);
    }
    if (returnPolicy.present) {
      map['return_policy'] = Variable<String>(returnPolicy.value);
    }
    if (minimumOrderQuantity.present) {
      map['minimum_order_quantity'] = Variable<int>(minimumOrderQuantity.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('price: $price, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('rating: $rating, ')
          ..write('stock: $stock, ')
          ..write('brand: $brand, ')
          ..write('sku: $sku, ')
          ..write('weight: $weight, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('depth: $depth, ')
          ..write('warrantyInformation: $warrantyInformation, ')
          ..write('shippingInformation: $shippingInformation, ')
          ..write('availabilityStatus: $availabilityStatus, ')
          ..write('returnPolicy: $returnPolicy, ')
          ..write('minimumOrderQuantity: $minimumOrderQuantity, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('barcode: $barcode, ')
          ..write('qrCode: $qrCode, ')
          ..write('thumbnail: $thumbnail')
          ..write(')'))
        .toString();
  }
}

class $ProductImagesTable extends ProductImages
    with TableInfo<$ProductImagesTable, ProductImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, productId, imageUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_images';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductImage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductImage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductImage(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
    );
  }

  @override
  $ProductImagesTable createAlias(String alias) {
    return $ProductImagesTable(attachedDatabase, alias);
  }
}

class ProductImage extends DataClass implements Insertable<ProductImage> {
  final int id;
  final int productId;
  final String imageUrl;
  const ProductImage({
    required this.id,
    required this.productId,
    required this.imageUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['image_url'] = Variable<String>(imageUrl);
    return map;
  }

  ProductImagesCompanion toCompanion(bool nullToAbsent) {
    return ProductImagesCompanion(
      id: Value(id),
      productId: Value(productId),
      imageUrl: Value(imageUrl),
    );
  }

  factory ProductImage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductImage(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'imageUrl': serializer.toJson<String>(imageUrl),
    };
  }

  ProductImage copyWith({int? id, int? productId, String? imageUrl}) =>
      ProductImage(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        imageUrl: imageUrl ?? this.imageUrl,
      );
  ProductImage copyWithCompanion(ProductImagesCompanion data) {
    return ProductImage(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductImage(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId, imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductImage &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.imageUrl == this.imageUrl);
}

class ProductImagesCompanion extends UpdateCompanion<ProductImage> {
  final Value<int> id;
  final Value<int> productId;
  final Value<String> imageUrl;
  const ProductImagesCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  ProductImagesCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required String imageUrl,
  }) : productId = Value(productId),
       imageUrl = Value(imageUrl);
  static Insertable<ProductImage> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  ProductImagesCompanion copyWith({
    Value<int>? id,
    Value<int>? productId,
    Value<String>? imageUrl,
  }) {
    return ProductImagesCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductImagesCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class $ProductTagsTable extends ProductTags
    with TableInfo<$ProductTagsTable, ProductTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
    'tag',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, productId, tag];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductTag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
        _tagMeta,
        tag.isAcceptableOrUnknown(data['tag']!, _tagMeta),
      );
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductTag(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      tag: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag'],
      )!,
    );
  }

  @override
  $ProductTagsTable createAlias(String alias) {
    return $ProductTagsTable(attachedDatabase, alias);
  }
}

class ProductTag extends DataClass implements Insertable<ProductTag> {
  final int id;
  final int productId;
  final String tag;
  const ProductTag({
    required this.id,
    required this.productId,
    required this.tag,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['tag'] = Variable<String>(tag);
    return map;
  }

  ProductTagsCompanion toCompanion(bool nullToAbsent) {
    return ProductTagsCompanion(
      id: Value(id),
      productId: Value(productId),
      tag: Value(tag),
    );
  }

  factory ProductTag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTag(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      tag: serializer.fromJson<String>(json['tag']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'tag': serializer.toJson<String>(tag),
    };
  }

  ProductTag copyWith({int? id, int? productId, String? tag}) => ProductTag(
    id: id ?? this.id,
    productId: productId ?? this.productId,
    tag: tag ?? this.tag,
  );
  ProductTag copyWithCompanion(ProductTagsCompanion data) {
    return ProductTag(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      tag: data.tag.present ? data.tag.value : this.tag,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductTag(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('tag: $tag')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId, tag);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTag &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.tag == this.tag);
}

class ProductTagsCompanion extends UpdateCompanion<ProductTag> {
  final Value<int> id;
  final Value<int> productId;
  final Value<String> tag;
  const ProductTagsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.tag = const Value.absent(),
  });
  ProductTagsCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required String tag,
  }) : productId = Value(productId),
       tag = Value(tag);
  static Insertable<ProductTag> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? tag,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (tag != null) 'tag': tag,
    });
  }

  ProductTagsCompanion copyWith({
    Value<int>? id,
    Value<int>? productId,
    Value<String>? tag,
  }) {
    return ProductTagsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      tag: tag ?? this.tag,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTagsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('tag: $tag')
          ..write(')'))
        .toString();
  }
}

class $ProductReviewsTable extends ProductReviews
    with TableInfo<$ProductReviewsTable, ProductReview> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
    'rating',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reviewerNameMeta = const VerificationMeta(
    'reviewerName',
  );
  @override
  late final GeneratedColumn<String> reviewerName = GeneratedColumn<String>(
    'reviewer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reviewerEmailMeta = const VerificationMeta(
    'reviewerEmail',
  );
  @override
  late final GeneratedColumn<String> reviewerEmail = GeneratedColumn<String>(
    'reviewer_email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    productId,
    rating,
    comment,
    date,
    reviewerName,
    reviewerEmail,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_reviews';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductReview> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('reviewer_name')) {
      context.handle(
        _reviewerNameMeta,
        reviewerName.isAcceptableOrUnknown(
          data['reviewer_name']!,
          _reviewerNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_reviewerNameMeta);
    }
    if (data.containsKey('reviewer_email')) {
      context.handle(
        _reviewerEmailMeta,
        reviewerEmail.isAcceptableOrUnknown(
          data['reviewer_email']!,
          _reviewerEmailMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_reviewerEmailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductReview map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductReview(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rating'],
      )!,
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      reviewerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reviewer_name'],
      )!,
      reviewerEmail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reviewer_email'],
      )!,
    );
  }

  @override
  $ProductReviewsTable createAlias(String alias) {
    return $ProductReviewsTable(attachedDatabase, alias);
  }
}

class ProductReview extends DataClass implements Insertable<ProductReview> {
  final int id;
  final int productId;
  final int rating;
  final String comment;
  final DateTime date;
  final String reviewerName;
  final String reviewerEmail;
  const ProductReview({
    required this.id,
    required this.productId,
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['rating'] = Variable<int>(rating);
    map['comment'] = Variable<String>(comment);
    map['date'] = Variable<DateTime>(date);
    map['reviewer_name'] = Variable<String>(reviewerName);
    map['reviewer_email'] = Variable<String>(reviewerEmail);
    return map;
  }

  ProductReviewsCompanion toCompanion(bool nullToAbsent) {
    return ProductReviewsCompanion(
      id: Value(id),
      productId: Value(productId),
      rating: Value(rating),
      comment: Value(comment),
      date: Value(date),
      reviewerName: Value(reviewerName),
      reviewerEmail: Value(reviewerEmail),
    );
  }

  factory ProductReview.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductReview(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      rating: serializer.fromJson<int>(json['rating']),
      comment: serializer.fromJson<String>(json['comment']),
      date: serializer.fromJson<DateTime>(json['date']),
      reviewerName: serializer.fromJson<String>(json['reviewerName']),
      reviewerEmail: serializer.fromJson<String>(json['reviewerEmail']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'rating': serializer.toJson<int>(rating),
      'comment': serializer.toJson<String>(comment),
      'date': serializer.toJson<DateTime>(date),
      'reviewerName': serializer.toJson<String>(reviewerName),
      'reviewerEmail': serializer.toJson<String>(reviewerEmail),
    };
  }

  ProductReview copyWith({
    int? id,
    int? productId,
    int? rating,
    String? comment,
    DateTime? date,
    String? reviewerName,
    String? reviewerEmail,
  }) => ProductReview(
    id: id ?? this.id,
    productId: productId ?? this.productId,
    rating: rating ?? this.rating,
    comment: comment ?? this.comment,
    date: date ?? this.date,
    reviewerName: reviewerName ?? this.reviewerName,
    reviewerEmail: reviewerEmail ?? this.reviewerEmail,
  );
  ProductReview copyWithCompanion(ProductReviewsCompanion data) {
    return ProductReview(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      rating: data.rating.present ? data.rating.value : this.rating,
      comment: data.comment.present ? data.comment.value : this.comment,
      date: data.date.present ? data.date.value : this.date,
      reviewerName: data.reviewerName.present
          ? data.reviewerName.value
          : this.reviewerName,
      reviewerEmail: data.reviewerEmail.present
          ? data.reviewerEmail.value
          : this.reviewerEmail,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductReview(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('rating: $rating, ')
          ..write('comment: $comment, ')
          ..write('date: $date, ')
          ..write('reviewerName: $reviewerName, ')
          ..write('reviewerEmail: $reviewerEmail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    productId,
    rating,
    comment,
    date,
    reviewerName,
    reviewerEmail,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductReview &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.rating == this.rating &&
          other.comment == this.comment &&
          other.date == this.date &&
          other.reviewerName == this.reviewerName &&
          other.reviewerEmail == this.reviewerEmail);
}

class ProductReviewsCompanion extends UpdateCompanion<ProductReview> {
  final Value<int> id;
  final Value<int> productId;
  final Value<int> rating;
  final Value<String> comment;
  final Value<DateTime> date;
  final Value<String> reviewerName;
  final Value<String> reviewerEmail;
  const ProductReviewsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.rating = const Value.absent(),
    this.comment = const Value.absent(),
    this.date = const Value.absent(),
    this.reviewerName = const Value.absent(),
    this.reviewerEmail = const Value.absent(),
  });
  ProductReviewsCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) : productId = Value(productId),
       rating = Value(rating),
       comment = Value(comment),
       date = Value(date),
       reviewerName = Value(reviewerName),
       reviewerEmail = Value(reviewerEmail);
  static Insertable<ProductReview> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<int>? rating,
    Expression<String>? comment,
    Expression<DateTime>? date,
    Expression<String>? reviewerName,
    Expression<String>? reviewerEmail,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (rating != null) 'rating': rating,
      if (comment != null) 'comment': comment,
      if (date != null) 'date': date,
      if (reviewerName != null) 'reviewer_name': reviewerName,
      if (reviewerEmail != null) 'reviewer_email': reviewerEmail,
    });
  }

  ProductReviewsCompanion copyWith({
    Value<int>? id,
    Value<int>? productId,
    Value<int>? rating,
    Value<String>? comment,
    Value<DateTime>? date,
    Value<String>? reviewerName,
    Value<String>? reviewerEmail,
  }) {
    return ProductReviewsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      date: date ?? this.date,
      reviewerName: reviewerName ?? this.reviewerName,
      reviewerEmail: reviewerEmail ?? this.reviewerEmail,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (reviewerName.present) {
      map['reviewer_name'] = Variable<String>(reviewerName.value);
    }
    if (reviewerEmail.present) {
      map['reviewer_email'] = Variable<String>(reviewerEmail.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductReviewsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('rating: $rating, ')
          ..write('comment: $comment, ')
          ..write('date: $date, ')
          ..write('reviewerName: $reviewerName, ')
          ..write('reviewerEmail: $reviewerEmail')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $ProductImagesTable productImages = $ProductImagesTable(this);
  late final $ProductTagsTable productTags = $ProductTagsTable(this);
  late final $ProductReviewsTable productReviews = $ProductReviewsTable(this);
  late final ProductDao productDao = ProductDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    products,
    productImages,
    productTags,
    productReviews,
  ];
}

typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      required String title,
      required String description,
      required String category,
      required double price,
      required double discountPercentage,
      required double rating,
      required int stock,
      required String brand,
      required String sku,
      required int weight,
      required double width,
      required double height,
      required double depth,
      required String warrantyInformation,
      required String shippingInformation,
      required String availabilityStatus,
      required String returnPolicy,
      required int minimumOrderQuantity,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String barcode,
      required String qrCode,
      required String thumbnail,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> description,
      Value<String> category,
      Value<double> price,
      Value<double> discountPercentage,
      Value<double> rating,
      Value<int> stock,
      Value<String> brand,
      Value<String> sku,
      Value<int> weight,
      Value<double> width,
      Value<double> height,
      Value<double> depth,
      Value<String> warrantyInformation,
      Value<String> shippingInformation,
      Value<String> availabilityStatus,
      Value<String> returnPolicy,
      Value<int> minimumOrderQuantity,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<String> barcode,
      Value<String> qrCode,
      Value<String> thumbnail,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stock => $composableBuilder(
    column: $table.stock,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get depth => $composableBuilder(
    column: $table.depth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get warrantyInformation => $composableBuilder(
    column: $table.warrantyInformation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shippingInformation => $composableBuilder(
    column: $table.shippingInformation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get availabilityStatus => $composableBuilder(
    column: $table.availabilityStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get returnPolicy => $composableBuilder(
    column: $table.returnPolicy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minimumOrderQuantity => $composableBuilder(
    column: $table.minimumOrderQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stock => $composableBuilder(
    column: $table.stock,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sku => $composableBuilder(
    column: $table.sku,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get depth => $composableBuilder(
    column: $table.depth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get warrantyInformation => $composableBuilder(
    column: $table.warrantyInformation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shippingInformation => $composableBuilder(
    column: $table.shippingInformation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get availabilityStatus => $composableBuilder(
    column: $table.availabilityStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get returnPolicy => $composableBuilder(
    column: $table.returnPolicy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minimumOrderQuantity => $composableBuilder(
    column: $table.minimumOrderQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<int> get stock =>
      $composableBuilder(column: $table.stock, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get sku =>
      $composableBuilder(column: $table.sku, builder: (column) => column);

  GeneratedColumn<int> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get depth =>
      $composableBuilder(column: $table.depth, builder: (column) => column);

  GeneratedColumn<String> get warrantyInformation => $composableBuilder(
    column: $table.warrantyInformation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get shippingInformation => $composableBuilder(
    column: $table.shippingInformation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get availabilityStatus => $composableBuilder(
    column: $table.availabilityStatus,
    builder: (column) => column,
  );

  GeneratedColumn<String> get returnPolicy => $composableBuilder(
    column: $table.returnPolicy,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minimumOrderQuantity => $composableBuilder(
    column: $table.minimumOrderQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);

  GeneratedColumn<String> get thumbnail =>
      $composableBuilder(column: $table.thumbnail, builder: (column) => column);
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<double> discountPercentage = const Value.absent(),
                Value<double> rating = const Value.absent(),
                Value<int> stock = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> sku = const Value.absent(),
                Value<int> weight = const Value.absent(),
                Value<double> width = const Value.absent(),
                Value<double> height = const Value.absent(),
                Value<double> depth = const Value.absent(),
                Value<String> warrantyInformation = const Value.absent(),
                Value<String> shippingInformation = const Value.absent(),
                Value<String> availabilityStatus = const Value.absent(),
                Value<String> returnPolicy = const Value.absent(),
                Value<int> minimumOrderQuantity = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String> barcode = const Value.absent(),
                Value<String> qrCode = const Value.absent(),
                Value<String> thumbnail = const Value.absent(),
              }) => ProductsCompanion(
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
                width: width,
                height: height,
                depth: depth,
                warrantyInformation: warrantyInformation,
                shippingInformation: shippingInformation,
                availabilityStatus: availabilityStatus,
                returnPolicy: returnPolicy,
                minimumOrderQuantity: minimumOrderQuantity,
                createdAt: createdAt,
                updatedAt: updatedAt,
                barcode: barcode,
                qrCode: qrCode,
                thumbnail: thumbnail,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String description,
                required String category,
                required double price,
                required double discountPercentage,
                required double rating,
                required int stock,
                required String brand,
                required String sku,
                required int weight,
                required double width,
                required double height,
                required double depth,
                required String warrantyInformation,
                required String shippingInformation,
                required String availabilityStatus,
                required String returnPolicy,
                required int minimumOrderQuantity,
                required DateTime createdAt,
                required DateTime updatedAt,
                required String barcode,
                required String qrCode,
                required String thumbnail,
              }) => ProductsCompanion.insert(
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
                width: width,
                height: height,
                depth: depth,
                warrantyInformation: warrantyInformation,
                shippingInformation: shippingInformation,
                availabilityStatus: availabilityStatus,
                returnPolicy: returnPolicy,
                minimumOrderQuantity: minimumOrderQuantity,
                createdAt: createdAt,
                updatedAt: updatedAt,
                barcode: barcode,
                qrCode: qrCode,
                thumbnail: thumbnail,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
      Product,
      PrefetchHooks Function()
    >;
typedef $$ProductImagesTableCreateCompanionBuilder =
    ProductImagesCompanion Function({
      Value<int> id,
      required int productId,
      required String imageUrl,
    });
typedef $$ProductImagesTableUpdateCompanionBuilder =
    ProductImagesCompanion Function({
      Value<int> id,
      Value<int> productId,
      Value<String> imageUrl,
    });

class $$ProductImagesTableFilterComposer
    extends Composer<_$AppDatabase, $ProductImagesTable> {
  $$ProductImagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductImagesTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductImagesTable> {
  $$ProductImagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductImagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductImagesTable> {
  $$ProductImagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);
}

class $$ProductImagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductImagesTable,
          ProductImage,
          $$ProductImagesTableFilterComposer,
          $$ProductImagesTableOrderingComposer,
          $$ProductImagesTableAnnotationComposer,
          $$ProductImagesTableCreateCompanionBuilder,
          $$ProductImagesTableUpdateCompanionBuilder,
          (
            ProductImage,
            BaseReferences<_$AppDatabase, $ProductImagesTable, ProductImage>,
          ),
          ProductImage,
          PrefetchHooks Function()
        > {
  $$ProductImagesTableTableManager(_$AppDatabase db, $ProductImagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductImagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductImagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductImagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> productId = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
              }) => ProductImagesCompanion(
                id: id,
                productId: productId,
                imageUrl: imageUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int productId,
                required String imageUrl,
              }) => ProductImagesCompanion.insert(
                id: id,
                productId: productId,
                imageUrl: imageUrl,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductImagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductImagesTable,
      ProductImage,
      $$ProductImagesTableFilterComposer,
      $$ProductImagesTableOrderingComposer,
      $$ProductImagesTableAnnotationComposer,
      $$ProductImagesTableCreateCompanionBuilder,
      $$ProductImagesTableUpdateCompanionBuilder,
      (
        ProductImage,
        BaseReferences<_$AppDatabase, $ProductImagesTable, ProductImage>,
      ),
      ProductImage,
      PrefetchHooks Function()
    >;
typedef $$ProductTagsTableCreateCompanionBuilder =
    ProductTagsCompanion Function({
      Value<int> id,
      required int productId,
      required String tag,
    });
typedef $$ProductTagsTableUpdateCompanionBuilder =
    ProductTagsCompanion Function({
      Value<int> id,
      Value<int> productId,
      Value<String> tag,
    });

class $$ProductTagsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductTagsTable> {
  $$ProductTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductTagsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductTagsTable> {
  $$ProductTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tag => $composableBuilder(
    column: $table.tag,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductTagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductTagsTable> {
  $$ProductTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get tag =>
      $composableBuilder(column: $table.tag, builder: (column) => column);
}

class $$ProductTagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductTagsTable,
          ProductTag,
          $$ProductTagsTableFilterComposer,
          $$ProductTagsTableOrderingComposer,
          $$ProductTagsTableAnnotationComposer,
          $$ProductTagsTableCreateCompanionBuilder,
          $$ProductTagsTableUpdateCompanionBuilder,
          (
            ProductTag,
            BaseReferences<_$AppDatabase, $ProductTagsTable, ProductTag>,
          ),
          ProductTag,
          PrefetchHooks Function()
        > {
  $$ProductTagsTableTableManager(_$AppDatabase db, $ProductTagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> productId = const Value.absent(),
                Value<String> tag = const Value.absent(),
              }) =>
                  ProductTagsCompanion(id: id, productId: productId, tag: tag),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int productId,
                required String tag,
              }) => ProductTagsCompanion.insert(
                id: id,
                productId: productId,
                tag: tag,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductTagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductTagsTable,
      ProductTag,
      $$ProductTagsTableFilterComposer,
      $$ProductTagsTableOrderingComposer,
      $$ProductTagsTableAnnotationComposer,
      $$ProductTagsTableCreateCompanionBuilder,
      $$ProductTagsTableUpdateCompanionBuilder,
      (
        ProductTag,
        BaseReferences<_$AppDatabase, $ProductTagsTable, ProductTag>,
      ),
      ProductTag,
      PrefetchHooks Function()
    >;
typedef $$ProductReviewsTableCreateCompanionBuilder =
    ProductReviewsCompanion Function({
      Value<int> id,
      required int productId,
      required int rating,
      required String comment,
      required DateTime date,
      required String reviewerName,
      required String reviewerEmail,
    });
typedef $$ProductReviewsTableUpdateCompanionBuilder =
    ProductReviewsCompanion Function({
      Value<int> id,
      Value<int> productId,
      Value<int> rating,
      Value<String> comment,
      Value<DateTime> date,
      Value<String> reviewerName,
      Value<String> reviewerEmail,
    });

class $$ProductReviewsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductReviewsTable> {
  $$ProductReviewsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reviewerName => $composableBuilder(
    column: $table.reviewerName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reviewerEmail => $composableBuilder(
    column: $table.reviewerEmail,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductReviewsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductReviewsTable> {
  $$ProductReviewsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reviewerName => $composableBuilder(
    column: $table.reviewerName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reviewerEmail => $composableBuilder(
    column: $table.reviewerEmail,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductReviewsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductReviewsTable> {
  $$ProductReviewsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get reviewerName => $composableBuilder(
    column: $table.reviewerName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reviewerEmail => $composableBuilder(
    column: $table.reviewerEmail,
    builder: (column) => column,
  );
}

class $$ProductReviewsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductReviewsTable,
          ProductReview,
          $$ProductReviewsTableFilterComposer,
          $$ProductReviewsTableOrderingComposer,
          $$ProductReviewsTableAnnotationComposer,
          $$ProductReviewsTableCreateCompanionBuilder,
          $$ProductReviewsTableUpdateCompanionBuilder,
          (
            ProductReview,
            BaseReferences<_$AppDatabase, $ProductReviewsTable, ProductReview>,
          ),
          ProductReview,
          PrefetchHooks Function()
        > {
  $$ProductReviewsTableTableManager(
    _$AppDatabase db,
    $ProductReviewsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductReviewsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductReviewsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductReviewsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> productId = const Value.absent(),
                Value<int> rating = const Value.absent(),
                Value<String> comment = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> reviewerName = const Value.absent(),
                Value<String> reviewerEmail = const Value.absent(),
              }) => ProductReviewsCompanion(
                id: id,
                productId: productId,
                rating: rating,
                comment: comment,
                date: date,
                reviewerName: reviewerName,
                reviewerEmail: reviewerEmail,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int productId,
                required int rating,
                required String comment,
                required DateTime date,
                required String reviewerName,
                required String reviewerEmail,
              }) => ProductReviewsCompanion.insert(
                id: id,
                productId: productId,
                rating: rating,
                comment: comment,
                date: date,
                reviewerName: reviewerName,
                reviewerEmail: reviewerEmail,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductReviewsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductReviewsTable,
      ProductReview,
      $$ProductReviewsTableFilterComposer,
      $$ProductReviewsTableOrderingComposer,
      $$ProductReviewsTableAnnotationComposer,
      $$ProductReviewsTableCreateCompanionBuilder,
      $$ProductReviewsTableUpdateCompanionBuilder,
      (
        ProductReview,
        BaseReferences<_$AppDatabase, $ProductReviewsTable, ProductReview>,
      ),
      ProductReview,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
  $$ProductImagesTableTableManager get productImages =>
      $$ProductImagesTableTableManager(_db, _db.productImages);
  $$ProductTagsTableTableManager get productTags =>
      $$ProductTagsTableTableManager(_db, _db.productTags);
  $$ProductReviewsTableTableManager get productReviews =>
      $$ProductReviewsTableTableManager(_db, _db.productReviews);
}
