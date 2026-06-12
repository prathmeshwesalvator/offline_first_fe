// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_reposne_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiReposneModel<T> _$ApiReposneModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiReposneModel<T>(
  code: json['code'] as String? ?? '',
  message: json['message'] as String? ?? '',
  data: fromJsonT(json['data']),
);

Map<String, dynamic> _$ApiReposneModelToJson<T>(
  ApiReposneModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': toJsonT(instance.data),
};
