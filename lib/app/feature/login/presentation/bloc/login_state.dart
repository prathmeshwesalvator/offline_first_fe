import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';
part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Blocstatus.initial) Blocstatus loginStatus,
    @Default('') String errorMessage,
    @Default('') String succesMessage,
  }) = _LoginState;
}
