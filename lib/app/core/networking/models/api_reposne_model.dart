import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_reposne_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiReposneModel<T> {
  ApiReposneModel({
    required this.code,
    required this.message,
    required this.data,
  });

  factory ApiReposneModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? object) fromJsonT,
  ) => _$ApiReposneModelFromJson(json, fromJsonT);
  @JsonKey(defaultValue: '')
  final String code;

  @JsonKey(defaultValue: '')
  final String message;

  @JsonKey()
  final T data;

  Map<String, dynamic> toJson(Function(Object? object) toJsonT) =>
      _$ApiReposneModelToJson(this, toJsonT);
}
