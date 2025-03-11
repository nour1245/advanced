import 'package:advanced/core/networking/api_error_handler.dart';
import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/core/networking/api_servics.dart';
import 'package:advanced/features/login/data/models/login_request_body.dart';
import 'package:advanced/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiServics _apiServics;

  LoginRepo(this._apiServics);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiServics.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
