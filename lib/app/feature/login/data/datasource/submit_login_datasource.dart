import 'package:injectable/injectable.dart';
import 'package:offline_first/app/core/networking/models/usecase_request_model.dart';
import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
import 'package:offline_first/app/feature/login/data/models/response/submit_login_response.dart';
import 'package:offline_first/app/feature/login/data/service/submit_login_service.dart';

abstract class SubmitLoginDatasource {
  Future<SubmitLoginResponse> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  });
}

@LazySingleton(as: SubmitLoginDatasource)
class SubmitLoginDatasourceImpl implements SubmitLoginDatasource {
  SubmitLoginDatasourceImpl({required this.submitLoginService});
  final SubmitLoginService submitLoginService;

  @override
  Future<SubmitLoginResponse> call({
    required UsecaseRequestModel<SubmitLoginRequest> usecaseRequestModel,
  }) async {
    try {
      final response = await submitLoginService.loginSubmit(
        requestBody:
            usecaseRequestModel.data ??
            SubmitLoginRequest(username: '', password: ''),
      );

      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
