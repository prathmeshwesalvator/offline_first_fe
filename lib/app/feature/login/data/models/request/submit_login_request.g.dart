// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitLoginRequest _$SubmitLoginRequestFromJson(Map<String, dynamic> json) =>
    SubmitLoginRequest(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$SubmitLoginRequestToJson(SubmitLoginRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
