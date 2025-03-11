import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  final String message;
  final int code;

  ErrorModel({required this.message, required this.code});
  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson(Map<String, dynamic> json) =>
      _$ErrorModelToJson(this);
}
