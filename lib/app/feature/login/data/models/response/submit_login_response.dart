import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_first/app/core/networking/converters/int_to_string_converter.dart';
import 'package:offline_first/app/feature/login/domain/entities/submit_login_response.dart';
part 'submit_login_response.g.dart';

@JsonSerializable()
class SubmitLoginResponse {
  SubmitLoginResponse({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.accessToken,
    required this.refreshToken,
  });
  factory SubmitLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitLoginResponseToJson(this);

  @JsonKey(defaultValue: '')
  @IntToStringConverter()
  final String id;

  @JsonKey(defaultValue: '')
  final String username;

  @JsonKey(defaultValue: '')
  final String email;

  @JsonKey(defaultValue: '')
  final String firstName;

  @JsonKey(defaultValue: '')
  final String lastName;

  @JsonKey(defaultValue: '')
  final String gender;

  @JsonKey(defaultValue: '')
  final String image;

  @JsonKey(defaultValue: '')
  final String accessToken;

  @JsonKey(defaultValue: '')
  final String refreshToken;

  SubmitLoginEntity toDomain() => SubmitLoginEntity(
    id: id,
    username: username,
    email: email,
    firstName: firstName,
    lastName: lastName,
    gender: gender,
    image: image,
    accessToken: accessToken,
    refreshToken: refreshToken,
  );
}
