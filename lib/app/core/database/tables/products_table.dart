import 'package:drift/drift.dart';

class Products extends Table {
  IntColumn get id => integer()();

  TextColumn get title => text()();

  TextColumn get description => text()();

  TextColumn get category => text()();

  RealColumn get price => real()();

  RealColumn get discountPercentage => real()();

  RealColumn get rating => real()();

  IntColumn get stock => integer()();

  TextColumn get brand => text()();

  TextColumn get sku => text()();

  IntColumn get weight => integer()();

  RealColumn get width => real()();

  RealColumn get height => real()();

  RealColumn get depth => real()();

  TextColumn get warrantyInformation => text()();

  TextColumn get shippingInformation => text()();

  TextColumn get availabilityStatus => text()();

  TextColumn get returnPolicy => text()();

  IntColumn get minimumOrderQuantity => integer()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  TextColumn get barcode => text()();

  TextColumn get qrCode => text()();

  TextColumn get thumbnail => text()();

  @override
  Set<Column> get primaryKey => {id};
}