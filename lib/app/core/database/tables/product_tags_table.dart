import 'package:drift/drift.dart';

class ProductTags extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  TextColumn get tag => text()();
}
