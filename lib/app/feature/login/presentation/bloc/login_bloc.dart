import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
import 'package:offline_first/app/feature/login/domain/usecases/submit_login_usecase.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_event.dart';
import 'package:offline_first/app/feature/login/presentation/bloc/login_state.dart';
import 'package:offline_first/app/global/enums/blocstatus.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.submitLoginUsecase}) : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        submitLogin: (username, password) async => await _submitLogin(
          emit: emit,
          username: username,
          password: password,
        ),
      );
    });
  }
  final SubmitLoginUsecase submitLoginUsecase;

  Future<void> _submitLogin({
    required Emitter<LoginState> emit,
    required String username,
    required String password,
  }) async {
    emit(
      state.copyWith(
        loginStatus: Blocstatus.loading,
        errorMessage: '',
        succesMessage: '',
      ),
    );

    final UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel =
        UsecaseRequestModel<SubmitLoginRequest>(
          data: SubmitLoginRequest(username: username, password: password),
        );

    final response = await submitLoginUsecase.call(
      usecaseRequestModel: usecaseRequestModel,
    );

    response.fold(
      (l) {
        emit(
          state.copyWith(
            loginStatus: Blocstatus.failure,
            errorMessage: l.errorMessage,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            loginStatus: Blocstatus.success,
            succesMessage: 'Welcome ${r.firstName} ${r.lastName}',
          ),
        );

        emit(
          state.copyWith(
            errorMessage: '',
            loginStatus: Blocstatus.initial,
            succesMessage: '',
          ),
        );
      },
    );
  }
}
