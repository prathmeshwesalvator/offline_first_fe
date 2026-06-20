import 'package:drift/drift.dart';

class ProductImages extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  TextColumn get imageUrl => text()();
}
