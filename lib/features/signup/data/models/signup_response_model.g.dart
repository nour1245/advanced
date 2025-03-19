// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseModel _$SignupResponseModelFromJson(Map<String, dynamic> json) =>
    SignupResponseModel(
      message: json['message'] as String,
      data: json['data'] as Map<String, dynamic>,
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$SignupResponseModelToJson(
  SignupResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};
