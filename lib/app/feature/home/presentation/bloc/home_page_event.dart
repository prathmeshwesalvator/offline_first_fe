abstract class HomePageEvent {}

class LoadAllProducts extends HomePageEvent {
  LoadAllProducts({required this.limit, required this.skip});
  final int limit;
  final int skip;
}
