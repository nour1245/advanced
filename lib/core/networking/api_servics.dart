import 'package:advanced/core/networking/api_constants.dart';
import 'package:advanced/features/login/data/models/login_request_body.dart';
import 'package:advanced/features/login/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_servics.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServics {
  factory ApiServics(Dio dio, {String baseUrl}) = _ApiServics;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
