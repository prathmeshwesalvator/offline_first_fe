import 'package:freezed_annotation/freezed_annotation.dart';
part 'submit_login_request.g.dart';

@JsonSerializable()
class SubmitLoginRequest {
  SubmitLoginRequest({required this.username, required this.password});
  factory SubmitLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitLoginRequestToJson(this);

  @JsonKey(defaultValue: '')
  final String username;

  @JsonKey(defaultValue: '')
  final String password;
}
