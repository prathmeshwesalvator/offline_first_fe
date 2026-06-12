  import 'package:dio/dio.dart';
  import 'package:offline_first/app/core/networking/annotations/request_annotations.dart';
  import 'package:offline_first/app/feature/login/data/models/request/submit_login_request.dart';
  import 'package:offline_first/app/feature/login/data/models/response/submit_login_response.dart';
  import 'package:retrofit/retrofit.dart';
  part 'submit_login_service.g.dart';

  @RestApi()
  abstract class SubmitLoginService {
    factory SubmitLoginService(Dio dio) = _SubmitLoginService;

    @POST('/auth/login')
    @RequestAnnotations.requestTypeC
    Future<SubmitLoginResponse> loginSubmit({
      @Body() required SubmitLoginRequest requestBody,
    });
  }
