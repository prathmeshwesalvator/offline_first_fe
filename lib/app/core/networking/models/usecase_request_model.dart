class UsecaseRequestModel<T> {
  UsecaseRequestModel({this.data, this.queryParams, this.pathParams});
  final T? data;
  final Map<String, dynamic>? queryParams;
  final Map<String, dynamic>? pathParams;
}
