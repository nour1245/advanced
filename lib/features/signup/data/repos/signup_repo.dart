import 'package:advanced/core/networking/api_error_handler.dart';
import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/core/networking/api_servics.dart';
import 'package:advanced/features/signup/data/models/signup_request_body.dart';
import 'package:advanced/features/signup/data/models/signup_response_model.dart';

class SignupRepo {
  final ApiServics _apiServics;

  SignupRepo(this._apiServics);

  Future<ApiResult<SignupResponseModel>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiServics.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
