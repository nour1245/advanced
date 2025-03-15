import 'package:json_annotation/json_annotation.dart';

part 'signup_response_model.g.dart';

@JsonSerializable()
class SignupResponseModel {
  final String message;
  final Map<String, dynamic> data;
  final bool status;
  final int code;

  SignupResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });
  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);
}
