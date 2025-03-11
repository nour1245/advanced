import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  UserModel? userData;
  bool? status;
  int? code;

  LoginResponse({this.code, this.message, this.status, this.userData});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserModel {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserModel({this.token, this.userName});
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
