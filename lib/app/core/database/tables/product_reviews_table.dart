import 'package:drift/drift.dart';

class ProductReviews extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  IntColumn get rating => integer()();

  TextColumn get comment => text()();

  DateTimeColumn get date => dateTime()();

  TextColumn get reviewerName => text()();

  TextColumn get reviewerEmail => text()();
}